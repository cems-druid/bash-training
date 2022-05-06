#!/bin/bash

#This script checks for hardware utilization and OS information.

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

all_checks