WTF-bash
========

This repository represents our tries to gain world domination using bash

## OOP

Bash can do OOP didn't you know?

Look at this:

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

Isn't it nice?


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/kunik/wtfbash/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

