[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/emiller/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=agnoster

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(archlinux)
plugins=(git)
plugins=(vi-mode)
plugins=(npm)
plugins=(python)
# plugins=(tmux)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='emacs -nw'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias config='/usr/bin/git --git-dir=/home/emiller/.cfg/ --work-tree=/home/emiller'
alias config='/usr/bin/git --git-dir=/home/emiller/.cfg/ --work-tree=/home/emiller'
# Tensorflow
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/cuda/lib64"
export CUDA_HOME=/opt/cuda/
# Bowtie
export BT2_HOME=/opt/bin/bowtie2
#Setting the GEM_PATH and GEM_HOME variables may not be necessary, check 'gem env' output to verify whether both variables already exist
GEM_HOME=$(ls -t -U | ruby -e 'puts Gem.user_dir')
GEM_PATH=$GEM_HOME
export PATH=$PATH:$GEM_HOME/bin
# Node
export PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules 
# Emacs
alias emacs='emacs -nw'
# export ALTERNATE_EDITOR=""
# export EDITOR=emacsclient
# Haskell
# add Cabal's bin directory to the executable search PATH if it exists
if [ -d "$HOME/.cabal/bin" ] ; then
    PATH="$HOME/.cabal/bin:$PATH"
fi
# ssh aliases
alias promoter='ssh edmund@promoter.utdallas.edu'
alias greenpi='ssh emiller@192.168.0.108'
alias faucet='ssh emiller@50.2.39.116'
alias ada='ssh emiller@165.227.189.186'
alias ardor='ssh emiller@192.168.1.7'
# VPN
alias school='sudo openconnect https://vpn.utdallas.edu'
# TMUX
# if which tmux >/dev/null 2>&1; then
#     # if no session is started, start a new session
#     test -z ${TMUX} && tmux

#     # when quitting tmux, try to attach
#     while test -z ${TMUX}; do
#         tmux attach || break
#     done
# fi
# Git
alias s='git status -s'
alias co='git checkout'
export PATH=$HOME/bin:$PATH
# Docker
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
# MPD
export MPD_HOST="localhost"
export MPD_PORT="6601"
# added by Miniconda3 installer
export PATH="/home/emiller/miniconda3/bin:$PATH"
export PATH="~/miniconda3/bin/python3.6:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
