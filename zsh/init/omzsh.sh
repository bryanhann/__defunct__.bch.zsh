
install_omzsh () {
    URL=https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
    tSCRIPT=/tmp/$RANDOM.$RANDOM.sh
    touch    ${tSCRIPT}
    chmod +x ${tSCRIPT}
    curl -fsSL ${URL} > ${tSCRIPT}
    ${tSCRIPT} --unattended
    rm ${tSCRIPT}
}

local ZZ=${__ZSH__}.omzsh
mkdir ${__ZSH__} 2> /dev/null
__tryinstall__ Oh-My-ZSH ${ZZ} install_omzsh










