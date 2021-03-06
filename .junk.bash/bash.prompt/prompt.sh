source $(__root__)/bash.prompt/vendor/git-prompt
source $(__root__)/bash.prompt/pc/pc.sh

function wide4e {
    echo $(printf "%03.0f" $1)

}

function color4e4E {
    if [ $1. == 0. ];
        then echo -e "${On_IYellow}${2}${Color_Off}"
        else echo -e "${On_IRed}${2}${Color_Off}"
    fi
}

function colored4c4s {
    echo ${1}${2}${Color_Off}

}

my_prompt_command () {
    err=$?

    # set error info
    E=$( wide4e    ${err}      )
    E=$( color4e4E ${err} ${E} )
    [ -z "${pc_err}" ] && unset E

    # set depth info
    D="$mybash_nesting_depth"
    D="[$D]"

    # set path info
    P="\w"
    P=$(colored4c4s ${!pc_pathcolor} $P )

    # set PS1
    PS1=
    PS1+="${D}"
    PS1+="${E}"
    PS1+=" ${P}"
    PS1+="$(__git_ps1)"
    PS1+=" $ "
}

export PROMPT_COMMAND=my_prompt_command

pc -r
