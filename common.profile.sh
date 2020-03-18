export BCH_SHELL_DIR=$(dirname $(grealpath $0))
export BCH_SHELL_BLD=${BCH_SHELL_DIR}/__BUILD__

export PATH=$PATH:~/.local/bin

mkdir -p ${BCH_SHELL_DIR}

export __BCHSHELL__=${BCH_SHELL_DIR}
export BCH_SHELL_BUILD_DIR=${BCH_SHELL_DIR}/__BUILD__
