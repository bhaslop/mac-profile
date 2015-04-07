# iterm coloring
function tab-color() {
    if [[ $# == 1 ]]
    then
        # convert hex to decimal
        hex=$1
        if [[ ${hex:0:1} == "#" ]]
        then
            # strip leading hash sign
            hex=${hex:1:6}
        fi
        if [[ ${#hex} == 3 ]]
        then
            # handle 3-letter hex codes
            hex="${hex:0:1}${hex:0:1}${hex:1:1}${hex:1:1}${hex:2:1}${hex:2:1}"
        fi
        r=$(printf "%d" 0x${hex:0:2})
        g=$(printf "%d" 0x${hex:2:2})
        b=$(printf "%d" 0x${hex:4:2})
    else
        r=$1
        g=$2
        b=$3
    fi
    echo -ne "\033]6;1;bg;red;brightness;$r\a"
    echo -ne "\033]6;1;bg;green;brightness;$g\a"
    echo -ne "\033]6;1;bg;blue;brightness;$b\a"
}
function tred() { tab-color 203 111 111; }
function tgreen() { tab-color 6cc276; }
function tyellow() { tab-color "#e8e9ac"; }
function tblue() { tab-color 6f8ccc; }
function tpurple() { tab-color a789d4; }
function torange() { tab-color fbbc79; }
function twhite() { tab-color fff; }
function tgray() { tab-color c3c3c3c; }

function thelp() { echo "tab-color #e8e9ac"; }

function ttitle {
    echo -ne "\033]0;"$*"\007"
}
