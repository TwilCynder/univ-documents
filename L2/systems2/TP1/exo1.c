#include <sys/types.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdio.h>
#include <stdlib.h>

void viewInfo(){
  printf(
    "PID : %d\n\
Parent PID: %d\n\
Group ID : %d\n\
Username : %s\n\
User ID : %d\n",
    getpid(), getppid(), getpgrp(), getlogin(), getuid()
  );
}

int main(int argc, char const *argv[]) {
  pid_t pid = fork();
  if (pid){
    printf("Parent info : \n");
    viewInfo();
    int cr;
    wait(&cr);
    cr = cr >> 8;
    printf("[Parent] The child process returned with exit code %d\n", cr);
    printf("[Parent]Return code : 7\n");
    exit(7);
  } else {
    printf("Child info : \n");
    viewInfo();
    printf("[Child] Return code : 6\n");
    exit(6);
  }

  return 0;
}
