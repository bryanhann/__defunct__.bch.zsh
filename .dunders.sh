################################################################
# These dunder functions serve all other sourced functions
# and so this file must be sourced FIRST.
################################################################


#===============================================================
# Some of the files we source will sub-source files in their
# own sub-folders, and will do so with paths that are hard
# as relative sub-paths. To make this work the files that
# we source will need to be told where they are. We do this
# my passing the sourced file it's own path as a first arg
# like so:
#
#    source <absolutepath>/to/file <absolutepath>/to/file
#
# But we wrap this ugliness in this function, allowing
#
#    __source__ <absolutepath>/to/file
#
# Since the sourced file receives it's own path, it can
# source its own subfiles by
#
#    __source__ $(dirname $1)/path/to/subfile
#===============================================================

__source__ () { source $1 $1; }


#===============================================================
# Suppose we want to use [~/.config/foo] rather than [~/.foo]
# but the foo program only looks at [~/.foo]. We fis this by
# creating an appropriate [~/.config/foo] and calling
#
#     __link__ foo
#===============================================================

__link__ () { [ -e ~/.$1 ] || ln -s ~/.config/$1 ~/.$1 ; }


#===============================================================
# Suppose we want to internally document a function in a
# way that can be inspected at runtime. We do this with the
# function '__DOC__'.
#
#     function foo {
#         __DOC__ 'foo() -> bar'
#         ....
#
# We can later review this by grepping the environment:
#
#     set | grep __DOC__
#
# Note that while the function itself does nothing, by
# prepending it to a line of documentation that line
# is registered in the environment.
#
# TODO (maybe): implement intelligent registration
#===============================================================

__DOC__ () { true ; }


