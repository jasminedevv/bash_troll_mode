# Bash Troll Mode
### A command line utility written in python to prank your friends, foes, and adversaries.
This prototype includes one mode: typo. It adds typos to common commands such as mkdir, touch, cat.

## Getting Started
### Install Insanity Manually
This script requires python (for now).

In theory it should be compatible with older versions like 2.7 (untested).
### Instructions
- clone the repo
```bash
$ git clone https://github.com/lacunahag/bash_troll_mode.git
```
- cd into the folder
```
$ cd bash_troll_mode
```
- copy the contents of insanity to ~/.insanity/
```bash
$ cp -r insanity ~/insanity
```
- copy insanity.sh to somewhere in you PATH. The default is ~/.local/bin/insanity. Insanity may not work if you put it somewhere like /usr/bin/.
```bash
$ cp insanity/insanity.sh ~/.local/bin/insanity
```
- change the permissions on the run script so you can run it as a command
```
$ chmod 755 ~/.local/bin/insanity 
```
- source the aliases (just typing `insanity activate typo` unfortunately does not yet work)
```bash
$ source ~/.insanity/typo/typo.sh
```

#### Or do it in one fell swoop if you're feeling fancy:
```bash
cp -r insanity ~/.insanity && cp insanity/insanity.sh ~/.local/bin/insanity && chmod 755 ~/.local/bin/insanity 
```
