source $(dirname $0)/__constants__.sh

export PATH=$PATH:~/.local/bin

#### INSTALL PYTHON 3 VIRTUAL ENVIRONMENT
    install_venv () {
        python3 -m venv ${BCH_SHELL_VENV}
        source ${BCH_SHELL_VENV}/bin/activate
        pip install --upgrade pip
        pip install virtualenv
        pip install virtualenvwrapper
    }
    __tryinstall__ VENV ${BCH_SHELL_VENV} install_venv


#### INASALL Oh-My-Zsh  ENVIRONMENT
    install_omzsh () {
        URL=https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
        tSCRIPT=/tmp/$RANDOM.$RANDOM.sh
        touch    ${tSCRIPT}
        chmod +x ${tSCRIPT}
        curl -fsSL ${URL} > ${tSCRIPT}
        ${tSCRIPT} --unattended
        rm ${tSCRIPT}
        echo source ${BCH_SHELL_DIR}/dot.zshrc.sh > ${ZDOTDIR}/.zshrc``
    }
    __tryinstall__ Oh-My-ZSH ${ZSH} install_omzsh


