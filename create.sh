#!/bin/bash
set -e 

if [ $# -eq 1 ]
    then 
        FILE=/home/nidhi/Desktop/password-manager/$1
    else
        read -p 'Please enter your name: ' nameOfPerson
        FILE=/home/nidhi/Desktop/password-manager/$nameOfPerson
fi

createdPassword=$(pwgen 20 1)

cd $FILE  	
ccdecrypt passwords.cpt
read -p "Please enter the name of your website : " websiteName
read -p "Please enter you email id: " emailid
echo $createdPassword | xclip -sel clip
echo "The password has now been created and copied to clipboard"
echo $websiteName "|" $emailid "|" $createdPassword >> passwords
ccencrypt passwords
