#
# ~/.bash_profile
#
# bash profile is executed for login shells (only when entering username/pwd)
# An exception to the terminal window guidelines is Mac OS X’s Terminal.app,
# which runs a login shell by default for each new terminal window, calling
# .bash_profile instead of .bashrc. Other GUI terminal emulators may do the
# same, but most tend not to.

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

##-------------------
## Useful information
##-------------------

echo $(hostname)

