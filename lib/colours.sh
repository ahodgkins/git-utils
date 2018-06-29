#!/bin/bash

end='\033[0m'
red='\033[00;31m'
green='\033[00;32m'
yellow='\033[00;33m'
blue='\033[00;34m'
magenta='\033[00;35m'
purple='\033[00;35m'
cyan='\033[00;36m'
lgrey='\033[00;37m'
lred='\033[01;31m'
lgreen='\033[01;32m'
lyellow='\033[01;33m'
lblue='\033[01;34m'
lmagenta='\033[01;35m'
lpurple='\033[01;35m'
lcyan='\033[01;36m'
white='\033[01;37m'

function red {
    echo -en "${red}${1}${end}"
}

function cyan {
    echo -en "${cyan}${1}${end}"
}

function magenta {
    echo -en "${magenta}${1}${end}"
}
