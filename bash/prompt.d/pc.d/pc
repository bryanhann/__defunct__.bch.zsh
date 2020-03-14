pc () {
    if    [ "${1}" == ""   ]; then pc-notify
    elif  [ "${1}" == "-h" ]; then pc-help
    elif  [ "${1}" == "-r" ]; then pc-reset
    elif  [ "${1}" == "-l" ]; then set | grep ^pc_
    elif  [ ! -z "$1"      ]; then export pc_$1=$2
    fi
}

pc-reset () {
    for ii in "${!pc_@}"; do unset $ii; done
    export pc_pathcolor=Green
    export pc_err=
    export pc_init=yes
    export pc_short=
    export pc_blank=
    export pc_nl=         # set to move $ below the text
}

pc-notify () {
    echo  For runtime prompt configuration info type 'pc -h'
}

function pc-help {
cat <<HERE
usage: 
    pc [option] key [value]
    
If value is given, set key to that value. 
Otherwise set key to the empty string.

Some keys are binary flags, e.g.
    pc err *anystring*   -- sets the err flag to true
    pc err               -- sets the err flag to false 

Some keys have multiple settings, e.g.
    pc pathcolor Green   -- sets pathcolor to green
    pc pathcolor Red     -- sets pathcolor to red
    pc pathcolor         -- unset pathcolor
    
OPTIONS
    -h help message
    -r reset values
    -l list values
HERE
}
