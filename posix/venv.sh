
VENV=${__BCHSHELL__}/__VENV__
if [ -d ${VENV} ]; then
    source ${VENV}/bin/activate
else
    python3 -m venv ${VENV}
    source ${VENV}/bin/activate
    pip install --upgrade pip
    pip install virtualenv
    pip install virtualenvwrapper
fi

export PROJECT_HOME=~/dev
source virtualenvwrapper.sh

