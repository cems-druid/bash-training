#!/bin/bash


server_name=${hostname}

function memory_check() {
    echo ""
        echo "Memory usage on ${server_name} is: "
        free -h
        echo ""
}

function cpu_check() {
    echo ""
        echo "CPU load on ${server_name} is: "
    echo ""
        uptime
    echo ""
}

function tcp_check() {
    echo ""
        echo "TCP connection on ${server_name} is: "
    echo ""
        cat /proc/net/tcp | wc -l
    echo ""
}

function kernel_check() {
    echo ""
        echo "OS kernel version ${server_name} is: "
        echo ""
        uname -r
    echo ""
}

function all_checks() {
    memory_check
    cpu_check
    tcp_check
    kernel_check
}

green='\e[32m'
blue='\e[34m'
purple_background='\033[45m'
clear='\e[0m'

ColorGreen(){
    echo -ne $green$1$clear
}
ColorBlue(){
    echo -ne $blue$1$clear
}

menu(){
    echo -ne "
    Sample Colorful Menu
    $(ColorGreen '1)') Memory usage 
    $(ColorGreen '2)') CPU load 
    $(ColorGreen '3)') Number of TCP connections 
    $(ColorGreen '4)') Kernel version 
    $(ColorGreen '5)') Check all 
    $(ColorGreen '0)') Exit 
    $(ColorBlue 'Choose an option: ')" 
    
        read a
        case $a in
            1) memory_check ; menu ;;
            2) cpu_check ; menu ;;
            3) tcp_check ; menu ;;
            4) kernel_check ; menu ;;
            5) all_checks ; menu ;;
                0) exit 0 ;;
                *) echo -e $red"Please select an option on the list."$clear;

    WrongCommand;;
        esac
}
#Starting point
menu