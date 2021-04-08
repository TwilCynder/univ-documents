#include <stdio.h>
#include <string.h>

#define NAME_MAX_LEN 30
#define FNAME_MAX_LEN 20
#define MAIL_MAX_LEN 254

struct sContact{
  char name[NAME_MAX_LEN];
  char fName[FNAME_MAX_LEN];
  char mail[MAIL_MAX_LEN];
};

void viewContact2(const struct sContact *Contact){
  printf("Nom : %s\nPrénom : %s\nAdresse Mail : %s\n",
    Contact->name,
    Contact->fName,
    Contact->mail
  );
}

void viewRepertory(struct sContact repertory[], int n){
  for (int i = 0; i < n; i++){
    viewContact2(&repertory[i]);
  }
}

void dumpInputBuffer(){
  while (getchar() != '\n');
}

void readLine(char* s, int lenMax){
  fgets(s, lenMax + 1, stdin);

  if (s[strlen(s) - 1] == '\n'){
    s[strlen(s) - 1] = '\0';
  } else {
    dumpInputBuffer();
  }
}

void readContact(struct sContact *contact){
  printf("Nom : ");
  readLine(contact->name, 30);
  printf("Prénom : ");
  readLine(contact->fName, 20);
  printf("Adresse mail : ");
  readLine(contact->mail, 254);
}

void addContact(struct sContact repertory[], int *pNbContacts){
  readContact(&repertory[*pNbContacts]);
  *pNbContacts += 1;
}

int main(int argc, char const *argv[]) {
  int n = 3;
  struct sContact repertory1[4] = {
    {"Zemmour", "Eric", "islamogauchisme@gmail.com"},
    {"Macron", "Emmanuel", "argent@capital.fr"},
    {"Mélenchon", "Jean-luc", "marx@communisme.fr"}
  };

  addContact(repertory1, &n);
  viewRepertory(repertory1, n);

  return 0;
}
