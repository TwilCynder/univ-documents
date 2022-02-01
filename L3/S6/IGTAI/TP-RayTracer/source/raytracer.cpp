
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
const float PI = (float)M_PI;

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

//!\todo loop on each object of the scene to compute intersection

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


  //! \todo compute Beckmann normal distribution
  return 0.5f;

}

// Fresnel term computation. Implantation of the exact computation. we can use
// the Schlick approximation
// LdotH : Light . Half
float RDM_Fresnel(float LdotH, float extIOR, float intIOR) {

  //! \todo compute Fresnel term
  return 0.5f;

}

// DdotH : Dir . Half
// HdotN : Half . Norm
float RDM_G1(float DdotH, float DdotN, float alpha) {

  //! \todo compute G1 term of the Smith fonction
  return 0.5f;

}

// LdotH : Light . Half
// LdotN : Light . Norm
// VdotH : View . Half
// VdotN : View . Norm
float RDM_Smith(float LdotH, float LdotN, float VdotH, float VdotN,
                float alpha) {

  //! \todo the Smith fonction
  return 0.5f;

}

// Specular term of the Cook-torrance bsdf
// LdotH : Light . Half
// NdotH : Norm . Half
// VdotH : View . Half
// LdotN : Light . Norm
// VdotN : View . Norm
color3 RDM_bsdf_s(float LdotH, float NdotH, float VdotH, float LdotN,
                  float VdotN, Material *m) {

  //! \todo specular term of the bsdf, using D = RDB_Beckmann, F = RDM_Fresnel, G
  //! = RDM_Smith
  return color3(.5f);

}
// diffuse term of the cook torrance bsdf
color3 RDM_bsdf_d(Material *m) {

  //! \todo compute diffuse component of the bsdf
  return color3(.5f);

}

// The full evaluation of bsdf(wi, wo) * cos (thetai)
// LdotH : Light . Half
// NdotH : Norm . Half
// VdotH : View . Half
// LdotN : Light . Norm
// VdtoN : View . Norm
// compute bsdf * cos(Oi)
color3 RDM_bsdf(float LdotH, float NdotH, float VdotH, float LdotN, float VdotN,
                Material *m) {

  //! \todo compute bsdf diffuse and specular term
  return color3(0.f);

}



color3 shade(vec3 n, vec3 v, vec3 l, color3 lc, Material *mat) {

//! \todo compute bsdf, return the shaded color taking into account the
//! lightcolor
  return (mat->diffuseColor / PI) * dot(l, n) * lc;
}

//! if tree is not null, use intersectKdTree to compute the intersection instead
//! of intersect scene

color3 trace_ray(Scene *scene, Ray *ray, KdTree *tree) {

  color3 ret = color3(0, 0, 0);
  Intersection intersection;
  Intersection shadow_intersect; //result unused
  vec3 vue = -(ray->dir);
  vec3 light_dir;
  Ray shadow_ray;

  if (intersectScene(scene, ray, &intersection)){
    for (Light* light : scene->lights){
      light_dir = normalize(light->position - intersection.position);
      rayInit(&shadow_ray, intersection.position + (acne_eps * light_dir), light_dir);
      if (!intersectScene(scene, &shadow_ray, &shadow_intersect)){
        ret += shade(intersection.normal, vue, light_dir, light->color, intersection.mat);
      }
    }
  } else {
    ret = scene->skyColor; 
  }
  
  return ret;
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
