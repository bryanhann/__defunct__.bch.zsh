if [ -f $1/bashrc ]; 
    then here=$1
    else here=~/.config/bash
fi

source ${here}/dunder.d/__link__
source ${here}/dunder.d/__source__
source ${here}/dunder.d/__DOC__

__source__ ${here}/misc.d/nesting
__source__ ${here}/misc.d/colors
__source__ ${here}/misc.d/rxx
__source__ ${here}/misc.d/watch
__source__ ${here}/misc.d/XDG
__source__ ${here}/misc.d/pip
__source__ ${here}/misc.d/misc
__source__ ${here}/prompt.d/prompt

that=~/.local/.config/bash

if [ -f ${that} ];
    then __source__ ${that}
fi

