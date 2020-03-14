# XXX HERE is deliberately hardcoded to simplify code.

HERE=~/.config/bch.shell

PP=${HERE}/posix
BB=${HERE}/bash
VV=${HERE}/__VENV__
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


if [ ! -d ${VV} ]; then
    python3 -m venv ${VV}
    source ${VV}/bin/activate
    pip install --upgrade pip
    pip install virtualenv
    pip install virtualenvwrapper
fi
export PROJECT_HOME=~/dev
source ${VV}/bin/activate
source virtualenvwrapper.sh
function wpy { echo $(python -c "import sys;print(sys.executable)"); }
echo ACTIVE PYTHON IS: $(wpy)


