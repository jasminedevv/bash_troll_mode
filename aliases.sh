export PS1='C:\>'
alias ls='echo index.html app.php passwords.txt media db && echo $* > /dev/null'
alias cd="echo bash: cd: $*: No such file or directory && cd"
alias pwd="telnet towel.blinkenlights.nl"
alias source="cowsay Not Your Computer! && echo $* > /dev/null"
# pretend you made a typo
# write all commands to an unaccessible file so you can laugh later
# what now homeslice
alias unalias="echo $* > /dev/null" 
alias gimme="source ~/.bashrc"