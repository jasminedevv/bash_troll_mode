#!/bin/bash

# untested and under construction

# this script should be run using something like curl -c https://raw.githubusercontent.com/lacunahag/bash_troll_mode/master/install.sh | source
# idk tbh but that is what I have seen other people do

# download the project

# copy insanity.sh to ~/.local/bin/insanity if it is in the PATH
script_name='insanity'

read -p "I'm going to install to ~/.local/bin/. Is this ok? (y/n) " -n 1 -r
echo    # move to a new line
if [[ $REPLY =~ ^[Nn]$ ]] 
# make sure the above if statement works
# should evaluate to true if the user either does not want the script installed to /usr/bin or if it is not in their PATH
then
    echo "Specify where you would like to install or check the docs on how to install manually: "
    read install_path -p "custom PATH > " # global
    # TODO validate the new specified install path

    # could write a function to check if the specified path can be written to without root
else
    install_path='~/.local/bin/'
fi

if [[ ":$PATH:" != *":~/.local/bin:"* ]]
then
    echo "~/.local/bin is not in your PATH. Add it now? (y/n)"
    if [[ $REPLY =~ ^[Nn]$ ]] 
    then
        echo "You'll need to add the following line to ~/.bashrc or ~/.zshrc in order for insanity to work."
        echo "export PATH=~/.local/bin:$PATH"
    else
        echo -e "\nexport PATH=~/.local/bin:$PATH"
    fi
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