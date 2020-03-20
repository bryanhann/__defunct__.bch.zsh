source $(dirname $0)/__constants__.sh

export PATH=$PATH:~/.local/bin


[ -d ${BCH_SHELL_BLD} ] || mkdir ${BCH_SHELL_BLD}
[ -d ${ZDOTDIR}       ] || mkdir ${ZDOTDIR}
echo source ${BCH_SHELL_DIR}/dot.zshrc.sh > ${ZDOTDIR}/.zshrc``

source $(dirname $0)/install.venv.sh
source $(dirname $0)/install.omzsh.sh

__link__ pip
