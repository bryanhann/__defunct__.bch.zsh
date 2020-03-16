# This will activate the BCHSHELL python virtual environment,
# first installing it if necessary. Installing the environment
# at [${__BCHSHELL__}/.3] is arbitrary and this can be changed
# in this script without any change in functionality.

local XX=${__BCHSHELL__}/.3

install_venv () {
    python3 -m venv ${XX}
    source ${XX}/bin/activate
    pip install --upgrade pip
    pip install virtualenv
    pip install virtualenvwrapper
}

__tryinstall__ VENV ${XX}.venv install_venv
source ${XX}/bin/activate

unset install_venv
#install_venv
