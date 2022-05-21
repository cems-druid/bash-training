#!/bin/bash
#An exmaple of the conditional expressions can be used with [[ file or arguments ]]. The arguments can be -a, -b, -c, ...

#if-else conditional
admin="admin123"
read -p "Enter credentials: " username
if [[ "${username}" == "${admin}" ]] ; then
    echo "Credentials are true, authenticate as admin"
else
    echo "Credentials are false, cannot authenticate"
fi

#switch-case conditional

read -p "Enter the name of your OS (windows, macos, linux): " operating_system
case $operating_system in
    windows)
        echo -n "The end line in ${operating_system} is: CRLF"
        ;;
    macos)
        echo -n "The end line in ${operating_system} is: CR"
        ;;
    linux | ubuntu | kali | debian)        
        echo -n "The end line in ${operating_system} is: LF"
        ;;
    *)
        echo -n "Unknown operating system"
esac