#  zshrc - initializiation of interactive login zsh
#  horst@agoracon.at
#
HISTFILE=${ZDOTDIR}/.history
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

setopt autocd auto_pushd                  # directories
setopt auto_list complete_in_word         # completion
setopt extended_glob nomatch              # globbing
setopt append_history bang_hist hist_ignore_space   # history
setopt clobber                            # input output
setopt nobgnice notify                    # jobs
setopt prompt_bang prompt_subst           # prompt expansion
setopt nobeep combining_chars             # zle
# setopt ksh_autoload

export BLOCKSIZE=K
export    EDITOR=vim
export     PAGER=less
export  CLICOLOR=1
export      LESS="-RSi"
export        RI="--format ansi --width 70"

export    MAIL=~/Maildir
export   EMAIL="horst.kapfenberger@agoracon.at"
export IRCNICK=orthos
export IRCNAME=horst
export PGPPATH=$HOME/.gnupg

[ -e $ZDOTDIR/path.zsh ] && . $ZDOTDIR/path.zsh

autoload -Uz vcs_info
autoload -U colors compinit promptinit
colors
compinit

zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ”

# HELPDIR=/usr/local/share/zsh/help
unalias  run-help 2>/dev/null
autoload run-help

# default path and promt, override with lib/prompt.zsh
prompt="%{%F{094}%}%n%{%f%}@%{%F{022}%}%m %{%F{094}%}%1~%{%f%} %(#.#.$) "

. $ZDOTDIR/lib/man-color.zsh
. $ZDOTDIR/aliases

[ -e $ZDOTDIR/local.zsh ] && . $ZDOTDIR/local.zsh
[ -e $HOME/.aliases  ] && . $HOME/.aliases

true
