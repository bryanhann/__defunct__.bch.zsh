source     $(dirname $0)/init.d/__dunders__.sh
__source__ $(dirname $0)/init.d/venv.sh
__source__ $(dirname $0)/init.d/omzsh.sh
__source__ $(dirname $0)/zsh.d/main.sh
__source__ $(dirname $0)/posix.d/misc

export PROJECT_HOME=~/dev
source virtualenvwrapper.sh
