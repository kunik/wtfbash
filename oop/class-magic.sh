#!/usr/bin/env bash

declare -A __VARIABLES__

__object__() {
    local __OBJECTID__="$1"
    local __METHOD__="$2"
    local __CLASS__=${__METHOD__%%.*} 
    var() {
        local name="$1"
        local value="$2"
        if [[ -z ${value} ]]; then
            # get value
            echo ${__VARIABLES__["${__OBJECTID__}.${name}"]}
        else
            # set value
            __VARIABLES__+=( ["${__OBJECTID__}.${name}"]="${value}" )
        fi
    }

    local this="__object__ ${__OBJECTID__} ${__CLASS__}"
    ${__METHOD__} ${@:3}
}

new() {
    local __CLASS__="$1"
    local __INSTANCE__="$2"
    local __OBJECTID__=$(uuidgen)
    __VARIABLES__+=( ["${__OBJECTID__}.__CLASS__"]="${__CLASS__}" )

    __object__ "$__OBJECTID__" ${__CLASS__} ${@:3}
    eval "${__INSTANCE__}=\"__object__ ${__OBJECTID__} ${__CLASS__}\""
}

