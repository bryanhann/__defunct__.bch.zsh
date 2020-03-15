echo "________________ .zprofile ________________"
# IF OMZSH has not been constructed. We wll contend with other processes for
# the right to construction by testing the fWAIT flag and raising it if
# it is down. Because of race conditions, we must to both in an atomic act
# of trying to create a folder.

export  ZDOTDIR=~/.config/bch.shell          # This is where .zshrc is to be found
export  ZSH_VAR=~/.config/bch.shell/__ZSH__  # This is where various zsh stuff will be stuffed
export  ZSH=${ZSH_VAR}/omzsh                 # This is where Oh-My-ZSH will be cloned
URL=https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
fWAIT=${ZSH_VAR}/__fwait # OMZSH is currently under construction.
fREADY=${ZSH}/__fready # OMZSH has been consructed,

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

_main () {
    mkdir ${ZSH_VAR} 2> /dev/null
    if [ ! -f ${fREADY}  ]; then
        mkdir ${fWAIT} 2> /dev/null && _install || _wait
    fi
}

_main
