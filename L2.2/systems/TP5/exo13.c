#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <time.h>
#include <dirent.h>
#include <string.h>

long int parcourirDossier(const char* nom);

long int examinerFichier(const char * nom){
    struct stat info;
    if (stat(nom, &info) == -1){
        perror(nom);
        return 0;
    }

    if (S_ISDIR(info.st_mode)){
        long int total = parcourirDossier(nom);
        printf("    Total %-30s: %8ld\n", nom, total);
        return total;
    } else {
        printf("%-40s: %8ld octets\n", nom, info.st_size);
        return info.st_size;
    }
}

long int parcourirDossier(const char* nom){
    struct dirent* dirInfo;
    char designation[128];
    DIR* directory = opendir(nom);

    long int total = 0;

    if (!directory){
        perror(nom);
        exit(2);
    }

    while (dirInfo = readdir(directory)){
        if (!strcmp(dirInfo->d_name, "..") || !strcmp(dirInfo->d_name, ".")) continue;

        strcpy(designation, nom);
        strcat(designation, "/");
        strcat(designation, dirInfo->d_name);
        //printf("%s\n", designation);

        total += examinerFichier(designation);
    }
    return total;
}

int main(int argc, char const *argv[]) {
    if (argc < 2){
        fprintf(stderr, "Usage %s dossier ...\n", argv[0]);
        exit(1);
    }

    
    printf("        TOTAL %-26s: %8ld\n", argv[1], parcourirDossier(argv[1]));

    return 0;
}