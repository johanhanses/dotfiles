#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set to superior editing mode
set -o vi

# keybinds
bind -x '"\C-l":clear'

# ~~~~~~~~~~~~~~~ Environment Variables ~~~~~~~~~~~~~~~~~~~~~~~~

# directories
export REPOS="$HOME/Repos"
export GITUSER="johanhanses"
export GHREPOS="$REPOS/github.com/$GITUSER"
export DOTFILES="$GHREPOS/dotfiles"
export SCRIPTS="$DOTFILES/scripts"
export SECOND_BRAIN="$GHREPOS/zettelkasten"
export XDG_CONFIG_HOME="$HOME"/.config

export CLICOLOR=1
# export TERM=xterm-256color
# export COLORTERM=truecolor
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export WORK_DIR="$REPOS/github.com/Digital-Tvilling"
export LKAB_DIR=${WORK_DIR}/.lkab
export ONPREM_CONFIG_DIR=${LKAB_DIR:?}/on-prem/config
export ONPREM_CERT_DIR=${LKAB_DIR:?}/on-prem/cert

export LDFLAGS="-L/opt/homebrew/opt/node@18/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@18/include"

# ~~~~~~~~~~~~~~~ Path configuration ~~~~~~~~~~~~~~~~~~~~~~~~

export PATH="/opt/homebrew/opt/node@18/bin:$PATH"
export PATH="$SCRIPTS:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH

# ~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~~~~~~

export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace

# --------------------------- smart prompt ---------------------------
#                 (keeping in bashrc for portability)

PROMPT_LONG=20
PROMPT_MAX=95
PROMPT_AT=@

__ps1() {
  local P='$' dir="${PWD##*/}" B countme short long double \
    r='\[\e[31m\]' g='\[\e[97m\]' h='\[\e[34m\]' \
    u='\[\e[33m\]' p='\[\e[34m\]' w='\[\e[35m\]' \
    b='\[\e[36m\]' x='\[\e[0m\]'

  [[ $EUID == 0 ]] && P='#' && u=$r && p=$u # root
  [[ $PWD = / ]] && dir=/
  [[ $PWD = "$HOME" ]] && dir='~'

  B=$(git branch --show-current 2>/dev/null)
  [[ $dir = "$B" ]] && B=.
  countme="$USER$PROMPT_AT$(hostname):$dir($B)\$ "

  [[ $B == master || $B == main ]] && b="$r"
  [[ -n "$B" ]] && B="$g($b$B$g)"

  short="$u\u$g$PROMPT_AT$h\h$g:$w$dir$B$p$P$x "
  long="$g╔ $u\u$g$PROMPT_AT$h\h$g:$w$dir$B\n$g╚ $p$P$x "
  double="$g╔ $u\u$g$PROMPT_AT$h\h$g:$w$dir\n$g║ $B\n$g╚ $p$P$x "

  if ((${#countme} > PROMPT_MAX)); then
    PS1="$double"
  elif ((${#countme} > PROMPT_LONG)); then
    PS1="$long"
  else
    PS1="$short"
  fi
}

PROMPT_COMMAND="__ps1"

# ~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~~~

alias zk="cd $GHREPOS/zettelkasten"
alias repos="cd $REPOS"
alias ghrepos="cd $GHREPOS"
alias dot="cd $GHREPOS/dotfiles"
alias scripts="cd $DOTFILES/scripts"
alias rwdot="cd $REPOS/github.com/rwxrob/dot"
alias rob="cd $REPOS/github.com/rwxrob"
alias home="cd $GHREPOS/johanhanses"
alias dt="cd $REPOS/github.com/Digital-Tvilling"
alias rtm="cd $REPOS/github.com/Digital-Tvilling/dt-frontend-vite"
alias deploy="cd $REPOS/github.com/Digital-Tvilling/deployment-configuration"
alias backend="cd $REPOS/github.com/Digital-Tvilling/deployment-configuration/external/localhost"
alias dti="cd $REPOS/github.com/Digital-Tvilling/dti"
#alias icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias sb="cd $SECOND_BRAIN"
alias in="cd $SECOND_BRAIN/0\ Inbox"
alias config="cd $XDG_CONFIG_HOME"

alias sbr="source ~/.bashrc"
alias cat="bat"
alias fast="fast -u --single-line"
alias nv=nvim
alias ..="cd .."
alias c="clear"
alias '?'=duck
alias '??'=gpt
alias '???'=google

alias n="npm"
alias nr="npm run"
alias ns="npm start"

alias ls='ls --color=auto'
alias ll='ls -la'
alias l='ls -l'
alias la='ls -lathr'
alias e='exit'

alias gm="git checkout main && git pull"
alias gp='git push'
alias ga="git add ."
alias gs='git status'
alias gc="git checkout"
alias gcb="git checkout -b"
alias gcm="git commit -m"

alias lg='lazygit'

alias k='kubectl'

alias t='tmux'
alias tk='tmux kill-server'
alias tl='tmux ls'
alias ta='tmux a'

# Docker
alias d="docker"
alias dc="docker compose"

# Change kitty theme
alias dark="kitten themes --reload-in=all Tokyo Night Storm && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'"
alias light="kitten themes --reload-in=all Tokyo Night Day && gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'"

if [[ "$OSTYPE" == "darwin"* ]]; then
  echo "I'm on Mac!"

  source "$HOME/.fzf.bash"

  # a pop up notification and sound alert (using the built-in sounds for macOS)
  # Requires https://github.com/caarlos0/timer to be installed
  # Mac setup for pomo
  # alias work="timer 20m && terminal-notifier -message 'Pomodoro'\
  #         -title 'Work Timer is up! Take a Break 😊'\
  #         -appIcon '~/Pictures/pumpkin.png'\
  #         -sound Crystal"
  #
  # alias rest="timer 5m && terminal-notifier -message 'Pomodoro'\
  #         -title 'Break is over! Get back to work 😬'\
  #         -appIcon '~/Pictures/pumpkin.png'\
  #         -sound Crystal"

  # brew bash completion
  # [[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
else
  # source /usr/share/fzf/key-bindings.bash
  # source /usr/share/fzf/completion.bash

  # The first one worked on Ubuntu, the eval one on Fedora. Keeping for reference.
  [ -f ~/.fzf.bash ] && source ~/.fzf.bash
  # eval "$(fzf --bash)"
fi
