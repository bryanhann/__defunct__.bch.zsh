
install_omzsh () {
    URL=https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
    tSCRIPT=/tmp/$RANDOM.$RANDOM.sh
    touch    ${tSCRIPT}
    chmod +x ${tSCRIPT}
    curl -fsSL ${URL} > ${tSCRIPT}
    ${tSCRIPT} --unattended
    rm ${tSCRIPT}
}

__tryinstall__ Oh-My-ZSH ${ZSH} install_omzsh










