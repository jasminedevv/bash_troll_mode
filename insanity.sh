#!/bin/bash

# copied to /usr/bin/insanity by install.sh
# accepts command line arguments to activate specific modes

install=~/.insanity

echo "Welcome to insanity!"

# stops the script if $1 is not start or deactivate
if [ $1 == "activate" ]
then 
    echo starting
elif [ $1 == "deactivate" ]
then 
    echo Deactivating...
    source ~/.bashrc # not sure if this will work
elif [ $1 == "help" ]
then
    cat $install/help.txt
else
    echo "first argument should be either activate or deactivate."
    exit 1
fi

if [ $2 == "typo" ]
then
    typo_path=$install/typo/aliases.sh
    echo v1
    echo $typo_path
    . $typo_path
fi

# insanity begin typo
# insanity end

# tox