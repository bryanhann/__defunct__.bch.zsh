# IF OMZSH has not been constructed. We wll contend with other processes for
# the right to construction by testing the fWAIT flag and raising it if
# it is down. Because of race conditions, we must to both in an atomic act
# of trying to create a folder.

export  __ZSH__=${__BCHSHELL__}/__ZSH__  # This is where various zsh stuff will be stuffed
export  ZDOTDIR=${__BCHSHELL__}          # This is where .zshrc is to be found
export  ZSH=${__ZSH__}/omzsh             # This is where Oh-My-ZSH will be cloned

URL=https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
fWAIT=${__ZSH__}/__fwait # OMZSH is currently under construction.
fREADY=${ZSH}/__fready  # OMZSH has been consructed,

_install () {
    tSCRIPT=/tmp/$RANDOM.$RANDOM.sh
    touch    ${tSCRIPT}
    chmod +x ${tSCRIPT}
    curl -fsSL ${URL} > ${tSCRIPT}
    ${tSCRIPT} --unattended
    touch ${fREADY}
    rmdir ${fWAIT}
    rm ${tSCRIPT}
    rm ~/.zshrc
    return 0
}
_wait () {
    echo -n Waiting for OMZSH to install...
    while [ ! -f ${fREADY} ]; do sleep 1; echo -n .;  done
    echo
}

mkdir ${__ZSH__} 2> /dev/null

if [ ! -f ${fREADY}  ]; then
    mkdir ${fWAIT} 2> /dev/null && _install || _wait
fi
