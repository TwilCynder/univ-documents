
#include "image.h"
#include "kdtree.h"
#include "ray.h"
#include "raytracer.h"
#include "scene_types.h"
#include <stdio.h>
#include <cmath>
#include "Debug.h"

#include <glm/gtc/epsilon.hpp>

/// acne_eps is a small constant used to prevent acne when computing
/// intersection
//  or boucing (add this amount to the position before casting a new ray !
const float acne_eps = 1e-4;
const float PI = (float)3.14159265358979323846; //originellement (float)M_PI, je me suis rendu compte qu'avec gcc sur mon pc perso, M_PI n'était pas défini

const int NB_REBONDS_MAX = 4;

bool intersectPlane(Ray *ray, Intersection *intersection, Object *obj) {

  if (obj->geom.type != PLANE) {
    Debug::error("Tried to call IntersectPlane on an object that is not a plane");
    return false;
  }

  //on calcule t = -((O.n - D) / (d.n))
  //O : Ray::orig / ray.orig
  //n : Geometry::plane::normal / obj.geom.plane.normal
  //D : Geometry::plane::dist / obj.geom.plane.dist
  //d : Ray::dir / ray.dir

  float denom = dot(ray->dir, obj->geom.plane.normal);
  if (denom == 0.0f){
    return false;
  }

  float t = -((dot(ray->orig, obj->geom.plane.normal) + obj->geom.plane.dist)  / denom );

  if (t < ray->tmin || t > ray->tmax){
    return false;
  }

  ray->tmax = t;
  intersection->position = ray->orig + (t * ray->dir);
  intersection->normal = normalize(obj->geom.plane.normal);
  intersection->mat = &obj->mat;

  return true;
}

bool intersectSphere(Ray *ray, Intersection *intersection, Object *obj) {

//! \todo : compute intersection of the ray and the sphere object

  if (obj->geom.type != SPHERE) {
    Debug::error("Tried to call IntersectPlane on an object that is not a plane");
    return false;
  }

  //solution du polynome  t² (||d||²) + t (2*d.(O-C)) + ||O - C||² - R²
  float a = dot(ray->dir, ray->dir); //u.u == ||u||²
  float b = 2 * dot(ray->dir, (ray->orig - obj->geom.sphere.center));
  vec3 orig_center = ray->orig - obj->geom.sphere.center;
  float c = dot(orig_center, orig_center) - (obj->geom.sphere.radius * obj->geom.sphere.radius);

  //b² - 4ac
  float delta = (b*b) - 4*a*c;

  if (delta <= 0){
    return false;
  }

  float sqrt_delta = std::sqrt(delta);
  float x1 = (-b - sqrt_delta) / (2 * a);
  float x2 = (-b + sqrt_delta) / (2 * a);
  
  float t;
  if (x1 > 0) t = x1;
  else if (x2 > 0) t = x2;
  else return false;

  if (t < ray->tmin || t > ray->tmax){
    return false;
  }

  ray->tmax = t;
  intersection->position = ray->orig + (t * ray->dir);
  intersection->normal = normalize(intersection->position - obj->geom.sphere.center);
  intersection->mat = &obj->mat;
  return true;
  
  /*
  if (x1 > 0){

    if (x1 < ray->tmin || x1 > ray->tmax){
      return false;
    }

    ray->tmax = x1;
    intersection->position = ray->orig + (x1 * ray->dir);
    intersection->normal = normalize(intersection->position - obj->geom.sphere.center);
    intersection->mat = &obj->mat;
    return true;
  } else if (x2 > 0){

    if (x2 < ray->tmin || x2 > ray->tmax){
      return false;
    }

    ray->tmax = x2;
    intersection->position = ray->orig + (x2 * ray->dir);
    intersection->normal = normalize(intersection->position - obj->geom.sphere.center);
    intersection->mat = &obj->mat;
    return true;
  }


  return false;
  */

  /*
  float x1 = (-b - std::sqrt(delta)) / (2*a);
  float x2 = (-b - std::sqrt(delta)) / (2*a);
  */
}

bool intersectScene(const Scene *scene, Ray *ray, Intersection *intersection) {
  bool hasIntersection = false;
  size_t objectCount = scene->objects.size();

  //on parcours tous les objets et on calcule leurs intersections avec le rayon donné
  for (Object* o : scene->objects){
    switch (o->geom.type){
      case PLANE:
        if (intersectPlane(ray, intersection, o)){
          hasIntersection = true;
        }
        break;
      case SPHERE:
        if (intersectSphere(ray, intersection, o)){
          hasIntersection = true;
        }
        break;
    }
  }

  return hasIntersection;
}

/* ---------------------------------------------------------------------------
 */
/*
 *	The following functions are coded from Cook-Torrance bsdf model
 *description and are suitable only
 *  for rough dielectrics material (RDM. Code has been validated with Mitsuba
 *renderer)
 */

// Shadowing and masking function. Linked with the NDF. Here, Smith function,
// suitable for Beckmann NDF
float RDM_chiplus(float c) { return (c > 0.f) ? 1.f : 0.f; }

/** Normal Distribution Function : Beckmann
 * NdotH : Norm . Half
 */
float RDM_Beckmann(float NdotH, float alpha) {  

  if (NdotH > 0){
    float cos_squared = NdotH * NdotH;  //cos de theta h
    float tan_squared = (1 - cos_squared) / cos_squared; //pareil

    float alpha_squared = alpha * alpha;
    return (std::exp( -tan_squared / alpha_squared) / (PI * alpha_squared * cos_squared * cos_squared)); 
  } else {
    return 0;
  }

}

// Fresnel term computation. Implantation of the exact computation. we can use
// the Schlick approximation
// LdotH : Light . Half
float RDM_Fresnel(float LdotH, float extIOR, float intIOR) {

  //cos theta i = LdotH.
  ///n1 = ext
  //n2 = int

  float cos_i_squared = LdotH * LdotH; //cos of theta i squared
  float sin_t_squared = ((extIOR / intIOR) * (extIOR / intIOR)) * (1 - cos_i_squared); //sin of theta t squared

  if (sin_t_squared > 1){
    return 1.0f;
  } else {
    float cos_t = std::sqrt(1 - sin_t_squared);

    float num = (extIOR * LdotH) - (intIOR * cos_t);
    float denom = (extIOR * LdotH) + (intIOR * cos_t);
    float Rs = (num * num) / (denom * denom);

    num = (extIOR * cos_t) - (intIOR * LdotH);
    denom = (extIOR * cos_t) + (intIOR * LdotH);
    float Rp = (num * num) / (denom * denom);

    return (Rs + Rp) / 2;
  }

}

// DdotH : Dir . Half
// HdotN : Half . Norm
float RDM_G1(float DdotH, float DdotN, float alpha) {


  float tan_x = std::sqrt(1 - (DdotH * DdotH)) / DdotH;
  float b = 1.0f / (alpha * tan_x);
  auto k = DdotH / DdotN;
  float chi_plus = RDM_chiplus(k); //cette fois j'utilise chiplus dans les calculs au lieu de faire le test moi-même pour éviter de faire le test 2 fois
  if (b < 1.6f)
  {
      float b_squared = b * b;
      return chi_plus * ((3.535f * b + 2.181f * b_squared) / (1 + 2.276f * b + 2.577 * b_squared));
  }
  else
  {
      return chi_plus;
  }
  return 0.5f;

}

// LdotH : Light . Half
// LdotN : Light . Norm
// VdotH : View . Half
// VdotN : View . Norm
float RDM_Smith(float LdotH, float LdotN, float VdotH, float VdotN,
                float alpha) {

  return RDM_G1(LdotH, LdotN, alpha) * RDM_G1(VdotH, VdotN, alpha);

}

// Specular term of the Cook-torrance bsdf
// LdotH : Light . Half
// NdotH : Norm . Half
// VdotH : View . Half
// LdotN : Light . Norm
// VdotN : View . Norm
color3 RDM_bsdf_s(float LdotH, float NdotH, float VdotH, float LdotN,
                  float VdotN, Material *m) {
  float d = RDM_Beckmann(NdotH, m->roughness);
  float f = RDM_Fresnel(LdotH, 1.0f, m->IOR); //extIOR toujours à 1 car c'est l'indice de réfraction du vide
  float g = RDM_Smith(LdotH, LdotN, VdotH, VdotN, m->roughness);

  return m->specularColor * (d * f * g) / (4 * LdotN * VdotN);
}
// diffuse term of the cook torrance bsdf
color3 RDM_bsdf_d(Material *m) {
  return m->diffuseColor / PI;
}

// The full evaluation of bsdf(wi, wo) * cos (thetai)
// LdotH : Light . Half
// NdotH : Norm . Half
// VdotH : View . Half
// LdotN : Light . Norm
// VdtoN : View . Norm
// compute bsdf * cos(Oi)
color3 RDM_bsdf(float LdotH, float NdotH, float VdotH, float LdotN, float VdotN,
                Material *m) 
{
  return RDM_bsdf_d(m) + RDM_bsdf_s(LdotH, NdotH, VdotH, LdotN, VdotN, m);
}

color3 shade(vec3 n, vec3 v, vec3 l, color3 lc, Material *mat) {

  float LdotN = dot(l, n);
  if (LdotN < 0){
    return color3(0.f);
  }
  vec3 h = normalize(v + l);
  return RDM_bsdf(dot(l, h), dot(n, h), dot(v, h), dot(l, n), dot(v, n), mat) * LdotN * lc;
  //Pour revenir au shading basique : 
  //return (mat->diffuseColor / PI) * LdotN * lc;
}

//! if tree is not null, use intersectKdTree to compute the intersection instead
//! of intersect scene

color3 trace_ray(Scene *scene, Ray *ray, KdTree *tree) {

  //avant toute chose on vérifie si c'est un rayon de réflexion qui a atteint le nombre max de rebonds
  if (ray->depth >= NB_REBONDS_MAX)
  {
      return color3(0.0f, 0.0f, 0.0f);
  }

  color3 direct_color = color3(0, 0, 0);
  Intersection intersection;
  Intersection shadow_intersect; //result unused
  vec3 vue = -(ray->dir);
  vec3 light_dir;
  Ray shadow_ray;

  if (intersectScene(scene, ray, &intersection)){
    for (Light* light : scene->lights){
      light_dir = normalize(light->position - intersection.position);
      rayInit(&shadow_ray, intersection.position + (acne_eps * light_dir), light_dir, 0.f, distance(light->position, intersection.position));
      if (!intersectScene(scene, &shadow_ray, &shadow_intersect)){
        direct_color += shade(intersection.normal, vue, light_dir, light->color, intersection.mat);
      }
    }
  } else {
    return scene->skyColor; 
  }
   
  //si on a dépassé un certain niveau de contribution à la couleur, ça ne sert à rien de continuer
  if (direct_color.r >= 1.f && direct_color.g >= 1.f && direct_color.b >= 1.f){
      return color3(1.f, 1.f, 1.f);
  }
  
  Ray reflect_ray;
  color3 reflect_color = color3(0.f);  

  vec3 reflect_direction = reflect(ray->dir, intersection.normal);
  
  rayInit(&reflect_ray, intersection.position + (acne_eps * reflect_direction), reflect_direction, 0.f, 10000.f, ray->depth + 1);
  reflect_color = trace_ray(scene, &reflect_ray, tree);
  vec3 h = normalize(vue + reflect_ray.dir);
  float fresnel = RDM_Fresnel(dot(reflect_ray.dir, h), 1.f, intersection.mat->IOR);

  
  return direct_color + fresnel * reflect_color * (intersection.mat->specularColor);
  
  //Pour revenir à avant la réflexion : 
  //return direct_color;
}

void renderImage(Image *img, Scene *scene) {

  //! This function is already operational, you might modify it for antialiasing
  //! and kdtree initializaion
  float aspect = 1.f / scene->cam.aspect;

  KdTree *tree = NULL;


//! \todo initialize KdTree

  float delta_y = 1.f / (img->height * 0.5f);   //! one pixel size
  vec3 dy = delta_y * aspect * scene->cam.ydir; //! one pixel step
  vec3 ray_delta_y = (0.5f - img->height * 0.5f) / (img->height * 0.5f) *
                     aspect * scene->cam.ydir;

  float delta_x = 1.f / (img->width * 0.5f);
  vec3 dx = delta_x * scene->cam.xdir;
  vec3 ray_delta_x =
      (0.5f - img->width * 0.5f) / (img->width * 0.5f) * scene->cam.xdir;


  for (size_t j = 0; j < img->height; j++) {
    if (j != 0)
      printf("\033[A\r");
    float progress = (float)j / img->height * 100.f;
    printf("progress\t[");
    int cpt = 0;
    for (cpt = 0; cpt < progress; cpt += 5)
      printf(".");
    for (; cpt < 100; cpt += 5)
      printf(" ");
    printf("]\n");
#pragma omp parallel for
    for (size_t i = 0; i < img->width; i++) {
      color3 *ptr = getPixelPtr(img, i, j);
      vec3 ray_dir = scene->cam.center + ray_delta_x + ray_delta_y +
                     float(i) * dx + float(j) * dy;

      Ray rx;
      rayInit(&rx, scene->cam.position, normalize(ray_dir));
      *ptr = trace_ray(scene, &rx, tree);

    }
  }
}
