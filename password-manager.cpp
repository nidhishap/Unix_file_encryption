#include <stdio.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <time.h>
#include <pwd.h>
#include <grp.h>
#include <sys/types.h>
#include <bits/stdc++.h>
#define linebreak cout<<"\n**********************************\n\n";
using namespace std;


int main(int argc, char** argv){

    // "./a.out" = cout<<argv[0];

    if(strcmp(argv[1],"store")==0){
        //user wants to store a password
        //means he already has : email-id and password

        linebreak
        std::cout<<"This is the command to store the password"<<endl;
        linebreak
        if(argc == 2){
            system("/home/nidhi/Desktop/password-manager/store.sh");
        }
        else{
        std::string path="/home/nidhi/Desktop/password-manager/store.sh";
        std::string para= argv[2];
        std::string result = path + " " + para;
        system(result.c_str());
        }    
    }
    
    if(strcmp(argv[1],"recollect")==0){

        linebreak
        std::cout<<"This is the command to read the password"<<endl;
        std::cout<<"To see all passwords stored enter all when prompted for Enter the website\n";
        linebreak

        if(argc == 2){
            system("/home/nidhi/Desktop/password-manager/recollect.sh");
        }
        else{
        std::string path="/home/nidhi/Desktop/password-manager/recollect.sh";
        std::string para= argv[2];
        std::string result = path + " " + para;
        system(result.c_str());
        }

    }

    if(strcmp(argv[1],"create")==0){

        linebreak
        std::cout<<"This is the command to create password for existing users"<<endl;
        linebreak

        if(argc == 2){
            system("/home/nidhi/Desktop/password-manager/create.sh");
        }
        else{
        std::string path="/home/nidhi/Desktop/password-manager/create.sh";
        std::string para= argv[2];
        std::string result = path + " " + para;
        system(result.c_str());
        }
    }

    
}
