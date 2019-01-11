#!/bin/bash

SCRIPT_PATH=~/.insanity/typo/script.py

echo aliases activated v2

typo () {
    python $SCRIPT_PATH $1 $@
    # echo "typo"
}
# this should be refactored to only get the updated string from the python script
# alias typo="python $SCRIPT_PATH $1 $@"



alias mkdir="typo mkdir"
alias cat="typo cat"
alias pwd="typo pwd"
alias mv="typo mv"
alias rmdir="typo rmdir"
alias touch="typo touch"

export typo