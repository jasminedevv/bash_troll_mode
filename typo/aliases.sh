SCRIPT_PATH=~/MS/intensives/bash_troll_mode/typo/script.py

echo activated

function typo () {
    echo $@
    # python command.py $0 $@
}

alias typo="python $SCRIPT_PATH $1 $@"
alias mkdir="typo mkdir"
alias cat="typo cat"
alias pwd="typo pwd"
alias mv="typo mv"
alias rmdir="typo rmdir"
alias touch="typo touch"