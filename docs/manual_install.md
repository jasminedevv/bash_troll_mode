# Install Insanity Manually
This script requires python (for now).

In theory it should be compatible with older versions like 2.7 (untested).
## Instructions
- copy the contents of the project (bash_troll_mode/) to ~/.insanity/
'''bash
$ cp -r insanity ~/insanity
'''
- copy insanity.sh to somewhere in you PATH. The default is ~/.local/bin/insanity. Insanity may not work if you put it somewhere like /usr/bin/.
'''bash
$ cp insanity/insanity.sh ~/.local/bin/insanity
'''

That's it!

rm -rf ~/.insanity && rm insanity/insanity.sh ~/.local/bin/insanity

cp -r insanity ~/.insanity && cp insanity/insanity.sh ~/.local/bin/insanity && chmod 755 ~/.local/bin/insanity