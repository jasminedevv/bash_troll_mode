# Bash Troll Mode
### A command line utility written in python to prank your friends, foes, and adversaries.
Troll mode has a few sub-modes:
## Sweet Dream
For users who can’t ls (like on a shared host) and are thus fumbling around in the dark, confirms all biases and silently bends to all mistakes, WARNING: makes a huge mess.
- Anything you try to cd into is created if it doesn’t exist
- Anything you cat is created on the spot if it doesn’t exist
- Stretch: Keeps track of the mess you made and cleans it all up upon exit
## Gaslight
Subtle, slowly drives you insane, non-destructive.
- Every other command will throw an error if it succeeds
- Swaps two letters of every other command before passing it to the parser
- Occasionally duplicates files (2)
## Funhouse
Makes your shell funnier, less predictable, and basically unuseable. Non-destructive... mostly.
- pwd plays ascii starwars
- Any given command has a random chance to print “Segmentation Fault”, “Permission Denied”, “command not found”, or “Connecting…” instead of running the command
- Any given command has a chance to flash a scary clown face before running
- All errors are delivered via cowsay
## Clowncar (stretch)
Funhouse with additional non-harmless features.
- cd moves all files in the target directory to you
- cat creates a file with random ascii art in it if file does not exist
- Autocomplete resolves to random long words instead of paths
## Window (stretch)
Pretends to be a Windows Server 2008 shell
- export PS1='C:\>'
- Aliases everything to their windows equivalent
