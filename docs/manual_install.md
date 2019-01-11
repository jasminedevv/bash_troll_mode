# Install Insanity Manually
This script requires python (for now).

In theory it should be compatible with older versions like 2.7 (untested).
## Instructions
- clone the repo
```bash
$ git clone https://github.com/lacunahag/bash_troll_mode.git
```
- cd into the folder
```
$ cd bash_troll_mode
```
- copy the contents of insanity to ~/.insanity/
'''bash
$ cp -r insanity ~/insanity
'''
- copy insanity.sh to somewhere in you PATH. The default is ~/.local/bin/insanity. Insanity may not work if you put it somewhere like /usr/bin/.
'''bash
$ cp insanity/insanity.sh ~/.local/bin/insanity
'''
- source the aliases (just typing `insanity activate typo` unfortunately does not yet work)
```bash
$ source ~/.insanity/typo/typo.sh
```

That's it!

rm -rf ~/.insanity && rm ~/.local/bin/insanity

cp -r insanity ~/.insanity && cp insanity/insanity.sh ~/.local/bin/insanity && chmod 755 ~/.local/bin/insanity 

