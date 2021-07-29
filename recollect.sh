#!/bin/bash
set -e 

if [ $# -eq 1 ]
    then 
        FILE=/home/nidhi/Desktop/password-manager/$1
    else
        read -p 'Please enter your name: ' nameOfPerson
        FILE=/home/nidhi/Desktop/password-manager/$nameOfPerson
fi

if [ -e "$FILE" ]; 
then
	cd $FILE  	
    read -p "Please enter the webiste you want the password for : " websiteChoice

	if [ "$websiteChoice" = "all" ];
		then ccat passwords.cpt
	else
		ccat passwords.cpt | grep $websiteChoice
	fi 		
else 
	echo "No such user found, please create a user to store passwords first"
fi
