bhclone () {
    name=$1
    shift
    git clone https://github.com/bryanhann/${name} ${*}
}
function .rxx {
    [ -f ${HOME}/.rxx/rxx ] || bhclone rxx.git ${HOME}/.rxx
    ${HOME}/.rxx/rxx $*
}
function .3  { .rxx -q -c basic   ${*}; }
function .3b { .3 bash       ${*} ; }
function .3p { .3 python3    ${*} ; }
function .3m { .3 python3 -m ${*} ; }
