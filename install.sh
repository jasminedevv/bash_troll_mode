#!/bin/bash

# untested and under construction

# copy insanity.sh to /usr/bin/insanity if it is in the PATH
script_name='insanity'

read -p "I'm going to install to /usr/bin. Is this ok? (y/n) " -n 1 -r
echo    # move to a new line
if [[ $REPLY =~ ^[Nn]$ ]] || [[ ":$PATH:" != *":/usr/bin:"* ]] 
# make sure the above if statement works
# should evaluate to true if the user either does not want the script installed to /usr/bin or if it is not in their PATH
then
    echo "Specify where you would like to install or check the docs on how to install manually: "
    read install_path -p "custom PATH > " # global
    # TODO validate the new specified install path
else
    install_path='/usr/bin/'
fi

# copy all the files to the folder

# check if ~/.insanity exists
# if not, create it

if [ -d "~/.insanity" ]
then
    read -p "It looks like you already have insanity installed. This operation will overwrite your old installation. Is this ok? (y/n) " -n 1 -r
    echo    # move to a new line
    if [[ $REPLY =~ ^[Nn]$ ]]
    then 
        echo Canceling install
        exit 1 # stop the installation
    else
        cp -rf . ~/.insanity # force copy this directory to ~/.insanity
        # TODO make sure it's copying the directory where the script is and not where the user happens to be running it from
    fi
else
    cp -r . ~/.insanity # copy this folder to ~/.insanity
fi