#ifndef INFO_H
#define INFO_H

#define MAX_NAME_LEN 20
typedef struct {
  char name[MAX_NAME_LEN + 1];
  unsigned age;
  unsigned nChildren;
} Infos;

#endif
