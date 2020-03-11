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

MAGIC='834765q784q3'
HOME=os.environ['HOME']

BASHRC="""
    source ~/.config/bash/bashrc
"""

PROFILE="""
    [ -d ~/.config/bash/profile ] || git clone https://github.com/bryanhann/config.bash.git ~/.config/bash
    source ${HOME}/.config/bash/profile
"""

def magic(line): return '%s # %s\n' % (line,MAGIC)
def notmagical(line): return not MAGIC in line
def strip(line): return line.strip()

def inject( fname, virus ):
    virus = virus.split('\n')
    virus = map( strip, virus  )
    virus = filter( None, virus )
    virus = map( magic, virus  )
    with open(fname) as fd:
        old=fd.readlines()
        old = filter(notmagical,old)
        new = old + virus
        new = ''.join( new )
    with open(fname, 'w' ) as fd:
        fd.write(new)

if __name__=='__main__':
    profile = HOME + '/.profile'
    bashrc  = HOME + '/.bashrc'
    inject( bashrc, BASHRC )
    inject( profile, PROFILE )


