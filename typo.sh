#!/bin/bash
function rand_in_range {
    FLOOR=$1;
    CEILING=$2;
    RANGE=$(($CEILING-$FLOOR));
    RESULT=$RANDOM;
    let "RESULT %= $RANGE";
    RESULT=$(($RESULT+$FLOOR));

    echo $RESULT;
}

function typoify {
    NEW_ARGS=()
    ARGS=$@
    for ARG in "${ARGS[@]:1}"; do
        # find the length of the arg
        LENGTH=${#ARG}
        # pick a random number in that range
        POSITION=$(rand_in_range 0 $LENGTH)
        # get the adjacent char
        let ADJACENT=$(($POSITION-1))
        WINDOW=${ARG:$ADJACENT:$POSITION}
        SWAPPED=$(echo $WINDOW | rev)
        NEW_ARG=${ARG/$WINDOW/$SWAPPED}
        NEW_ARGS+=($NEW_ARG)
    done
    NEW_COMMAND=${NEW_ARGS[@]} 
    echo $NEW_COMMAND
    eval $NEW_COMMAND
}

alias mkdir="typoify mkdir" && alias rmdir="typoify rmdir" && alias cat="typoify cat" && alias pwd="typoify pwd" && alias mv="typoify mv" && alias touch="typoify touch" && alias unalias="typoify unalias" && alias top="typoify top" 