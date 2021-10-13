#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <time.h>

void printInfo(const char* filename){
    struct stat fileInfo;
    if (stat(filename, &fileInfo) == -1){
        perror(filename);
    }
    if (S_ISDIR(fileInfo.st_mode)){
        printf("%-20s: répertoire %8ld octets %s", filename, fileInfo.st_size, ctime(&fileInfo.st_mtime));
    } else {
        printf("%-20s: fichier    %8ld octets %s", filename, fileInfo.st_size, ctime(&fileInfo.st_mtime));
    }
}

int main(int argc, char const *argv[]) {
    if (argc < 2){
        fprintf(stderr, "Usage %s fichier/dossier ...\n", argv[0]);
        exit(1);
    }

    if (argc > 1){
        for (int i = 1; i < argc; i++){
            printInfo(argv[i]);
        }
    } else {
        
    }

    return 0;
}