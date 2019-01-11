#!/bin/bash

SCRIPT_PATH=~/.insanity/typo/script.py

echo aliases activated

alias typo="python $SCRIPT_PATH $1 $@"

alias mkdir="typo mkdir"
alias cat="typo cat"
alias pwd="typo pwd"
alias mv="typo mv"
alias rmdir="typo rmdir"
alias touch="typo touch"