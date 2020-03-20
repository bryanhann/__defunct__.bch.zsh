install_venv () {
    python3 -m venv ${BCH_SHELL_VENV}
    source ${BCH_SHELL_VENV}/bin/activate
    pip install --upgrade pip
    pip install virtualenv
    pip install virtualenvwrapper
}
__tryinstall__ VENV ${BCH_SHELL_VENV} install_venv




