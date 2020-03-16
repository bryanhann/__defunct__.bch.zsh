#
# This file is sourced direcly by zsh, and so we cannot determine what folder we
# are in by examining the value of [$*].
#
# For zsh to source us directly, the environment variable [$ZDOTDIR] *must* be
# set to our parent folder, and so we use the value of this variable instead.
#
# Compare with [./.zprofile] in our folder which does use the value of [$0].
#
# NOTE: For this to be sourced at the start of each zsh shell, the environment
# variable [$ZDOTDIR] MUST be set and exported at the [.zprofile] stage.
#

source ${ZDOTDIR}/zshrc
