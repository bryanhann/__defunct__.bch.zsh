VENV=${1}

if [ "${2}" == "-r" ];
    then rm -rf $VENV ;
fi

if [ ! -d ${VENV} ]; then
   echo installing venv. This will take a few seconds...
   python3 -m venv ${VENV}
fi

source ${VENV}/bin/activate
pip install --upgrade pip
pip install virtualenv
pip install virtualenvwrapper
