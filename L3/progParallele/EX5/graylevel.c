
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <omp.h>

#ifndef NBTHREADS
#define NBTHREADS 8
#endif

typedef struct color_pixel_struct {
    unsigned char r,g,b;
} color_pixel_type;

typedef struct color_image_struct
{
  int width, height;
  color_pixel_type * pixels;
} color_image_type;

typedef struct grey_image_struct
{
  int width, height;
  unsigned char * pixels;
} grey_image_type;

/**********************************************************************/

void improveGreyImage(grey_image_type* image){
  int H[256] = {0}; //H[i] = nombre de pixels ayant la couleur (graylevel) i
  int C[256]; //C[i] = nombre de pixels de couleur (greylevel) <= i
  double pixels = image->width * image->height; //en double pour éviter que le calcul de la 3ème boulce fasse unee division entière.

  printf("Improving image contrast ...\n");

  double t,start,stop;
  start = omp_get_wtime();

  #pragma omp parallel num_threads(NBTHREADS)
  {
    int Hlocal[256] = {0}; //H[i] = nombre de pixels ayant la couleur (graylevel) i
    #pragma omp for
    for (int i = 0; i < image->width; i++){
      for (int j = 0; j < image->height; j++){
        int index = i * image->height + j;
        unsigned char pixel = image->pixels[index];
        Hlocal[pixel]++; 
      }
    }
    #pragma omp critical
    for (int i = 0; i < 256; i++){
      H[i] += Hlocal[i];
    }
  }


  C[0] = H[0];
  for (int i = 1; i < 256; i++){
    C[i] = C[i - 1] + H[i] ;//pas parallélisable
  }

  #pragma omp parallel for num_threads(NBTHREADS)
  for (int i = 0; i < image->width; i++){
    for (int j = 0; j < image->height; j++){
      int index = i * image->height + j;
      image->pixels[index] = 255 * (C[ image->pixels[index] ] / pixels);
    }
  }

  stop=omp_get_wtime();
  t=stop-start;

  printf("Temps d'éxécution de l'algo (avec %d threads): %fs\n", NBTHREADS, t);
}

/**********************************************************************/

color_image_type * loadColorImage(char *filename){
  int i, width,height,max_value;
  char format[8];
  color_image_type * image;
  FILE * f = fopen(filename,"r");
  if (!f){
    fprintf(stderr,"Cannot open file %s...\n",filename);
    exit(-1);
  }
  fscanf(f,"%s\n",format);
  assert( (format[0]=='P' && format[1]=='3'));  // check P3 format
  while(fgetc(f)=='#') // commentaire
    {
      while(fgetc(f) != '\n'); // aller jusqu'a la fin de la ligne
    }
  fseek( f, -1, SEEK_CUR);
  fscanf(f,"%d %d\n", &width, &height);
  fscanf(f,"%d\n", &max_value);
  image = malloc(sizeof(color_image_type));
  assert(image != NULL);
  image->width = width;
  image->height = height;
  image->pixels = malloc(width*height*sizeof(color_pixel_type));
  assert(image->pixels != NULL);

  for(i=0 ; i<width*height ; i++){
      int r,g,b;
      fscanf(f,"%d %d %d", &r, &g, &b);
      image->pixels[i].r = (unsigned char) r;
      image->pixels[i].g = (unsigned char) g;
      image->pixels[i].b = (unsigned char) b;
    }
  fclose(f);
  return image;
}

/**********************************************************************/

grey_image_type * createGreyImage(int width, int height){
  grey_image_type * image = malloc(sizeof(grey_image_type));
  assert(image != NULL);
  image->width = width;
  image->height = height;
  image->pixels = malloc(width*height*sizeof(unsigned char));
  assert(image->pixels != NULL);
  return(image);
}

/**********************************************************************/

void saveGreyImage(char * filename, grey_image_type *image){
  int i;
  FILE * f = fopen(filename,"w");
  if (!f){
    fprintf(stderr,"Cannot open file %s...\n",filename);
    exit(-1);
  }
  fprintf(f,"P2\n%d %d\n255\n",image->width,image->height);
  for(i=0 ; i<image->width*image->height ; i++){
    fprintf(f,"%d\n",image->pixels[i]);
  }
  fclose(f);
}

/**********************************************************************/

void saveColorImage(char * filename, color_image_type *image){
  int i;
  FILE * f = fopen(filename,"w");
  if (!f){
    fprintf(stderr,"Cannot open file %s...\n",filename);
    exit(-1);
  }
  fprintf(f,"P3\n%d %d\n255\n",image->width,image->height);
  for(i=0 ; i<image->width*image->height ; i++){
    fprintf(f,"%d\n%d\n%d\n",image->pixels[i].r, image->pixels[i].g, image->pixels[i].b);
  }
  fclose(f);
}

/**********************************************************************/

void colorToGrey(color_image_type *col_img, grey_image_type *grey_img){
    for (int i=0; i < col_img->height ; i++)
      for (int j=0; j < col_img->width ; j++){
        int index = i * col_img->width + j;
        color_pixel_type *pix = &(col_img->pixels[index]);
        grey_img->pixels[index] = (299*pix->r + 587*pix->g + 114*pix->b)/1000;
      }
}

/**********************************************************************/
int checkSwitch(char* arg){
  return (arg[0] != '\0' && arg[0] == '-' && arg[1] != '\0' && arg[1] == 'i');
}

int main(int argc, char ** argv){
  color_image_type * col_img;
  grey_image_type * grey_img;

  if (argc < 3){
    printf("Usage: togrey <input image> <output image> [-i]\n");
    exit(-1);
  }
  char *input_file = argv[1];
  char *output_file = argv[2];

  col_img = loadColorImage(input_file);
  grey_img = createGreyImage(col_img->width, col_img->height);

  colorToGrey(col_img, grey_img);
  
  if (argc > 3 && checkSwitch(argv[3])){
    improveGreyImage(grey_img);
  }

  saveGreyImage(output_file, grey_img);
}
