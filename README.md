# Bash Troll Mode
### A quick and harmless prank to play on your friends
A simple bash script that adds typos to common commands such as mkdir, touch, cat. Deactivates when you close your terminal window.

## Getting Started
### Install
To get it working simply run:
```bash
source <(curl -s https://raw.githubusercontent.com/lacunahag/bash_troll_mode/master/typo.sh)
```
OR

```bash
source <(curl -s eepy.net/typo.sh)
```
## How it Works
- Re-aliases common commands to the typoify function
- Typoify function picks a random character in the whole command and swaps it with its neighbor
- rand_in_range function picks a random number from a range
