# To be run like this: 
# source <(curl -s $SCRIPT)

# test

python_script=https://raw.githubusercontent.com/lacunahag/bash_troll_mode/master/insanity/typo/script.py

echo $python_script

script=$(curl -s $python_script)

echo

echo $script

echo

echo $@

echo

$script | $(python -)

echo "$output slash output"

echo 'done'