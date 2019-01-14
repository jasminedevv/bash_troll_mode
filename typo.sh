#!/bin/bash

# To be run like this: 
# source <(curl -s $SCRIPT)

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

    for ARG in $@; do
        # find the length of the arg
        LENGTH=${#ARG}
        # echo "len is $LENGTH"
        # pick a random number in that range
        POSITION=$(rand_in_range 0 $LENGTH)
        # echo "position is $POSITION"
        # get the adjacent char
        let ADJACENT=$(($POSITION-1))
        WINDOW=${ARG:$ADJACENT:$POSITION}
        # echo "adjacent is $ADJACENT"
        SWAPPED=$(echo $WINDOW | rev)
        # echo "window is $WINDOW"
        # echo "swapped is $SWAPPED"
        # get left, right, and swaps
        NEW_ARG=${ARG/$WINDOW/$SWAPPED}
        # echo "$NEW_ARG"
        NEW_ARGS+=($NEW_ARG)
        # recontruct the string
    done

    NEW_COMMAND=${NEW_ARGS[@]} 

    # echo $NEW_COMMAND

    eval $NEW_COMMAND
}

alias mkdir="typoify mkdir"
alias rmdir="typoify rmdir"
alias cat="typoify cat"
alias pwd="typoify pwd"
alias mv="typoify mv"
alias touch="typoify touch"
alias unalias="typoify unalias"
alias top="typoify top"