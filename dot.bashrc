#--------------------------------------------------------------------------
# WARNING: HERE is deliberately hardcoded to simplify code.
#--------------------------------------------------------------------------
HERE=~/.config/bch.shell

#--------------------------------------------------------------------------
# WARNING: The dunders must be sourced FIRST.
#--------------------------------------------------------------------------
source $HERE/posix/dunders
__source__ ${HERE}/bash/misc
__source__ ${HERE}/bash/prompt.d/prompt

#--------------------------------------------------------------------------
# Install configure and activate the default python virtual environment
#--------------------------------------------------------------------------
__VENV__=${HERE}/__VENV__
if [ -d ${__VENV__} ]; then
    source ${__VENV__}/bin/activate
else
    python3 -m venv ${__VENV__}
    source ${__VENV__}/bin/activate
    pip install --upgrade pip
    pip install virtualenv
    pip install virtualenvwrapper
fi

#--------------------------------------------------------------------------
# Prepare and activate virtualenvwrapper
#--------------------------------------------------------------------------
export PROJECT_HOME=~/dev
source virtualenvwrapper.sh

#--------------------------------------------------------------------------
# Inform the user of some stuff
#--------------------------------------------------------------------------
echo ACTIVE PYTHON IS: $(wpy)
echo $(pc)
