# OSX BASHER

OSX Basher is a bash_profile and bashrc file that borrwos heavily from [Expected Behaviors common-files](https://github.com/expectedbehavior/common-files) without some of the auto updating cruft and the specific code for handling remote connections.  That is mostly because I don't need it.  

Currently includes the following:

* sets colors for ls and terminal.
* sets ps1 to current directory and git branch if present.
* loads ssh keys using keychaing (brew install keychain)
* convenient git aliases (.custom-bash/git-customization)
* includes git completion (.custom-bash/git-completion)

I'm relatively new at this level of *nix customization and like leveling up so if you have feedback I'd love to hear it.

