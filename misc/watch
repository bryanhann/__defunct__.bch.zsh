
function watch {
    PILL=~/.poisonpill
    [ -z "$1" ] && touch $PILL && return
    rm $PILL
    target=$1
    new=$(stat -r ${target})
    old=$new
    while [ true ]; do
        [ -f $PILL ] && echo killed && break
        echo -n .
        sleep 1
        new=$(stat -r ${target})
        [ "$old" == "$new" ] && continue
        clear
        python3 ${target}
        echo '---------------'
        old=$new
    done
    echo killed
}
