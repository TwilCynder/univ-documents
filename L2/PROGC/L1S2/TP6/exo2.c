#include <stdio.h>

#define WMAX 512
#define HMAX 512

void read_img(int img[WMAX][HMAX], int* pWidth, int* pHeight){
    char input[2];
    int maxLevel = 0;

    scanf("%2s", input);
    if (input[0] != 'P' || input[1] != '2') return;

    scanf("%d %d", pWidth, pHeight);
    if (*pWidth > WMAX || *pHeight > HMAX) return;

    scanf("%d", &maxLevel)

    for (int i = 0; i < *pWidth; i++){
      for (int j = 0; j < *pHeight; j++){
        scanf("%d", &img[i][j]);
      }
    }

    for (int i = 0; i < *pWidth; i++){
      for (int j = 0; j < *pHeight; j++){
        printf("%d\t", img[i][j]);
      }
      printf("\n");
    }

}

int main(int argc, char const *argv[]) {
  int img_in[10][10];
  int w, h;

  read_img(img_in, &w, &h);
  return 0;
}
