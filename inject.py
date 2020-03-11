"""
Inject into ~/.profile the following behaviour:
    1. Clone ~/.config/bash (if necessary)
    2. Source ~/.config/bash/profile

Inject into ~/.bashrc the following behaviour:
    1. Clone ~/.config/bash (if necessary)
    2. Source ~/.config/bash/profile

Injection appends lines to the end and removes any
previous injection.
"""

import os
import sys
from os.path import realpath, abspath, relpath, dirname

HOME=os.environ['HOME']
HERE_ABS=dirname(abspath(realpath(sys.argv[0])))
HERE="~/%s" % relpath( HERE_ABS, HOME )
MAGIC="# 834765q784q3"
URL="https://github.com/bryanhann/config.bash.git"
NIL=""
EOL="\n"
SPACE=' '
PROFILE_NAME="profile"
BASHRC_NAME="bashrc"

BASHRC_VIRUS=f"""
    source {HERE}/{BASHRC_NAME} {HERE}
""".format( HERE=HERE, BASHRC_NAME=BASHRC_NAME  )
PROFILE_VIRUS=f"""
    [ -d {HERE} ] || git clone {URL} {HERE}
    source {HERE}/{PROFILE_NAME} {HERE}
""".format( HERE=HERE, PROFILE=PROFILE_NAME, URL=URL  )

def clear( fname ):
    def keep(line): return not MAGIC in line
    with open(fname, 'r') as fd: new = NIL.join(filter(keep,fd.readlines()))
    with open(fname, 'w') as fd: fd.write(new)

def inject( fname, virus ):
    magic = lambda virus : NIL.join([ xx + SPACE + MAGIC + EOL for xx in virus.split(EOL)  ])
    clear( fname )
    with open(fname, 'a') as fd: fd.write( magic(virus) )

if __name__=='__main__':
    inject( HOME+"/.profile" , PROFILE_VIRUS )
    inject( HOME+"/.bashrc" , BASHRC_VIRUS )


