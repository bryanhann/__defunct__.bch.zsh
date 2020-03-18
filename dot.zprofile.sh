source $(dirname $0)/common.profile.sh
export ZDOTDIR=${BCH_SHELL_BLD}/zdotdir
mkdir -p ${ZDOTDIR}
echo source ${BCH_SHELL_DIR}/dot.zshrc.sh > ${ZDOTDIR}/.zshrc``
export ZSH=${BCH_SHELL_BUILD_DIR}/omzsh
