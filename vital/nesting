# trap exit if not in subshell, because having your terminal disappear is annoying.

if [ -z "${mybash_nesting_ppid}" ]; then
    export mybash_nesting_ppid=${PPID}
    export mybash_nesting_depth=-1
fi

function exit { 
    if [ "${PPID}" == "${mybash_nesting_ppid}" ];
    then echo Try \'builtin exit\'
    else builtin exit 
    fi
}
export mybash_nesting_depth=$(( ${mybash_nesting_depth} + 1 ))

