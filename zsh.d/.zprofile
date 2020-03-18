#
# This file is not sourced direcly by zsh, and so we can determine what folder we
# are in by examining the value of [$*].
#
# We expect normally to be called directly by [~/.zprofile] which will do nothing
# other than transfer control to us. We, in turn, will transfer control to the 
# more visible "zprofile"" in our directory.
#
# Compare with [./.zshrc] in our folder which does not do this.
#
# NOTE: The line "source path/to/this/.zprofile" (with 'path/to/this/' appropriately
# modifies) MUST appear in the [~/.zprofile] file. Ideally it should be the only line.
#
source $(dirname $0)/zprofile

