#-------------------------------------------------------------------------------------
# Definitions.

SRC=https://github.com/bryanhann/config.bash.usual
DST=~/.config/bch.bash


#-------------------------------------------------------------------------------------
# Clone if necessary

[ -d $DST ] || git clone $SRC $DST


#-------------------------------------------------------------------------------------
# Update ~/.profile and ~/.bashrc

MAGIC='#3i7i5gliaisadudev6745aog'

grep -q $MAGIC ~/.profile && echo skipping .profile || cat >> ~/.profile <<________PROFILE
# BEGIN MAGIC $MAGIC
    export PATH=\$PATH:~/.local/bin
    source $DST/profile $DST
# END MAGIC $MAGIC
________PROFILE

grep -q $MAGIC ~/.bashrc  && echo skipping .bashrc  || cat >> ~/.bashrc  <<________BASHRC
# BEGIN MAGIC $MAGIC
    source $DST/bashrc $DST
# END MAGIC $MAGIC
________BASHRC


#-------------------------------------------------------------------------------------
# Copy this script to ./local/bin to reuse if this installation disappears

if [ $(dirname $0) == . ]; then mkdir -p ~/.local/bin; cp ./* ~/.local/bin; fi

