# XXX HERE is deliberately hardcoded to simplify code.

HERE=~/.config/bch.shell

PP=${HERE}/posix
BB=${HERE}/bash
source ${PP}/dunder.d/__link__
source ${PP}/dunder.d/__source__
source ${PP}/dunder.d/__DOC__

__source__ ${BB}/misc.d/nesting
__source__ ${BB}/misc.d/colors
__source__ ${BB}/misc.d/rxx
__source__ ${BB}/misc.d/watch
__source__ ${BB}/misc.d/XDG
__source__ ${BB}/misc.d/pip
__source__ ${BB}/misc.d/misc
__source__ ${BB}/prompt.d/prompt

#------------------------------------------------------------------------
# Install, configure, and activate the default python virtual environment
#

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

#------------------------------------------------------------------------
# Prepare and activate virtualenvwrapper
#
export PROJECT_HOME=~/dev
source virtualenvwrapper.sh

#------------------------------------------------------------------------
#Show the user which python is active
#
function wpy { echo $(python -c "import sys;print(sys.executable)"); }
echo ACTIVE PYTHON IS: $(wpy)


