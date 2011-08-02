#!/usr/bin/env bash

source class-magic.sh

User() {
    var name $1
    var age $2
    var sex $3
}

User.register() {
    echo "Registered user with name $(var name), age $(var age) and sex $(var sex)" 
    $this.postRegister
}

User.postRegister() {
    echo "Executing %${__METHOD__}"
}

new User user 'Vasya' 16 'yes'
$user.register

