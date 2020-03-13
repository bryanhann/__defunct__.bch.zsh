if [ $(dirname $0) == . ]; then
    mkdir -p ~/.local/bin
    cp ./* ~/.local/bin
fi
MAGIC='#3i7igliaisadudev6745aog'
DST=~/.config/bash.usual

[ -d $DST ] || ./ghbh-clone config.bash.usual $DST

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


