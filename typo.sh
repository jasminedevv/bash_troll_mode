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
    ARG=$@
    LENGTH=${#ARG}
    INDEX=$(rand_in_range 0 $LENGTH)
    CHAR=$(rand_in_range 0 $LENGTH)
    WINDOW=${ARG:$CHAR:2}
    SWAPPED=$(echo $WINDOW | rev)
    NEW_ARG=${ARG/$WINDOW/$SWAPPED}
    eval $NEW_ARG
}

alias mkdir="typoify mkdir" && alias rmdir="typoify rmdir" && alias cat="typoify cat" && alias pwd="typoify pwd" && alias mv="typoify mv" && alias touch="typoify touch" && alias unalias="typoify unalias" && alias top="typoify top" 