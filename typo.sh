# To be run like this: 
# source <(curl -s $SCRIPT)

# test

python_script=https://raw.githubusercontent.com/lacunahag/bash_troll_mode/master/insanity/typo/script.py

curl -s $python_script | python - | echo