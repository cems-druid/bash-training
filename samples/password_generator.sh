#!/bin/bash
#For password generation we can use date as a random number.
# date | md5sum
# date | sha256sum
# date | base64
#We can also use openssl command for this.
#openssl rand -base64 10

clear
printf '\n'
read -p "Enter string length for password: " password_length
print "\n"

#Password creation
for i in {1..10};
do ()

