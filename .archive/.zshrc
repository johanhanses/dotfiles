# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi


# ~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~~~~~~
export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace

# ~~~~~~~~~~~~~~~ Environment Variables ~~~~~~~~~~~~~~~~~~~~~~~~

export PATH=$HOME/bin:/usr/local/bin:$PATH
export XDG_CONFIG_HOME="$HOME"/.config
export REPOS="$HOME/Repos"
export GITUSER="johanhanses"
export GHREPOS="$REPOS/github.com/$GITUSER"
export DOTFILES="$GHREPOS/dotfiles"
export SCRIPTS="$DOTFILES/scripts"
export SECOND_BRAIN=${HOME}/Documents/obsidian-notes

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

export PATH="/opt/homebrew/opt/node@18/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"
export PATH="$XDG_CONFIG_HOME/scripts:$PATH"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="dpoggi"
# ZSH_THEME="agnoster"
# ZSH_THEME="fwalch"
# ZSH_THEME="powerlevel10k/powerlevel10k"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias zk="cd $GHREPOS/zettelkasten"
alias repos="cd $REPOS"
alias ghrepos="cd $GHREPOS"
alias dot="cd $GHREPOS/dotfiles"
alias scripts="cd $DOTFILES/scripts"
alias rwdot="cd $REPOS/github.com/rwxrob/dot"
alias rob="cd $REPOS/github.com/rwxrob"
alias dt="cd $REPOS/github.com/Digital-Tvilling"
alias rtm="cd $REPOS/github.com/Digital-Tvilling/dt-frontend-vite"
alias deploy="cd $REPOS/github.com/Digital-Tvilling/deployment-configuration"
alias backend="cd $REPOS/github.com/Digital-Tvilling/deployment-configuration/external/localhost"
alias dti="cd $REPOS/github.com/Digital-Tvilling/dti"
alias icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias sb="cd $SECOND_BRAIN"
alias in="cd $SECOND_BRAIN/0\ Inbox"
alias config="cd $XDG_CONFIG_HOME"

alias sbr="source ~/.bashrc"
alias sz="source ~/.zshrc"
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

# a pop up notification and sound alert (using the built-in sounds for macOS)
# Requires https://github.com/caarlos0/timer to be installed
# Mac setup for pomo
alias work="timer 50m && terminal-notifier -message 'Pomodoro'\
        -title 'Work Timer is up! Take a Break 😊'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"

alias rest="timer 10m && terminal-notifier -message 'Pomodoro'\
        -title 'Break is over! Get back to work 😬'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"

eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
