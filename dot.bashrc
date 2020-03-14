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

$HERE/venv.sh $VV
echo "Activating virtual environment."
source ${VV}/bin/activate
source virtualenvwrapper.sh

that=~/.local/.config/bash

if [ -f ${that} ];
    then __source__ ${that}
fi

