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
	echo "The folder exists"
	cd $FILE  	
	ccdecrypt passwords.cpt
	read -p "Please enter the name of your webiste : " websiteName
	read -p "Please enter your email-id : " emailid
	read -p "Please enter password : " websitePassword
	echo $websiteName "|" $emailid "|" $websitePassword >> passwords
	ccencrypt passwords
			
else 
	echo "Creating folder..."
    mkdir $FILE
	cd $FILE
	touch passwords
	read -p "Please enter the name of your webiste : " websiteName
	read -p "Please enter your email-id : " emailid
	read -p "Please enter your password : " websitePassword
	echo $websiteName "|" $emailid "|" $websitePassword >> passwords
	ccencrypt passwords
fi
