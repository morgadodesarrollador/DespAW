#!/bin/bash

newUser(){
    useradd -rm -d /home/morgado -s /bin/bash morgado
    echo "morgado:1234" | chpasswd
    echo "Bienvenido Morgado ... " > /home/morgado/bienvenida.txt
}

main(){
    newUser
    tail -f /dev/null
}

main
