#!/bin/bash
remote_ip() {
read -p "Enter the remote servers IP Address : " remoteip
while ! is_valid "$remoteip"
   do
   read -p "Please enter a valid ip : " remoteip
   done
}

failed_ip() {
remote_ip
connect_rip
}

echo " "
read -p "Enter the ip for $remoteip on remote : " remoteip
while [ -z "$remoteip" ]
    do
    read -p "Enter ip : " remoteip
    done

