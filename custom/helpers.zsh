

function ffind()
{
    c=0
    for arg in "$@"
    do
        echo "\n---- Looking for:  $arg -----------------------------"

        find . -iname "*$arg*" | grep -i --color $arg
        c=$(( $c + 1 ))
    done
}

alias ff="ffind"

