# This will activate the BCHSHELL python virtual environment,
# first installing it if necessary. Installing the environment
# at [${__BCHSHELL__}/.3] is arbitrary and this can be changed
# in this script without any change in functionality.
local VENV=${BCH_SHELL_BUILD_DIR}/3
install_venv () {
    python3 -m venv ${VENV}
    source ${VENV}/bin/activate
    pip install --upgrade pip
    pip install virtualenv
    pip install virtualenvwrapper
}
__tryinstall__ VENV ${VENV}_ install_venv
source ${VENV}/bin/activate

