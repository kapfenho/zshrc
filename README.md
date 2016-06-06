My ZSH Profiles
===============

Easy to use, to customize and to transport.
I am using this config on FreeBSD, OpenBSD, OS X and Linux machines.

Installation
------------

For installation clone this repo as a new subdir in $HOME and link `.zshenv`
into your home directory.  The directory name must be set in `zshenv` as
`$ZDOTDIR`.

    $ cd
    $ git clone ...... .zsh
    $ ln -sf ~/.zsh/zshenv ~/.zshenv
    $ exec $SHELL -l

Customizations
--------------

Login shell initialization (`.zshrc`) will source those files, in case they 
exist:

    $ZDOTDIR/local.zsh
    $ZDOTDIR/path.zsh

Why two files?  A proper path is needed early in initialization, other stuff you
may want to load as late as possible.

    $ cd ~/.zsh
    $ cp local.zsh.sample local.zsh
    $ cp path.zsh.sample  path.zsh
    $ vi local.zsh path.zsh



