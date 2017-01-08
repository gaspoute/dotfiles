# Path to your oh-my-zsh installation.
export ZSH=/Users/gaspar/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gaspar"

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
# ENABLE_CORRECTION="true"

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
plugins=(git z history-substring-search zsh-autosuggestions zsh-syntax-highlighting)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

setopt autopushd
setopt correct
setopt correctall
setopt extendedglob
setopt histignorealldups
setopt pushdminus
setopt pushdsilent
setopt pushdtohome
setopt sharehistory

unsetopt ignore_eof
unsetopt list_ambiguous

eval $(thefuck --alias)

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

alias f="fuck"
alias a="atom"

# Show all 256 colors with color number
function spectrum_ls() {
  for code in {000..255}; do
    print -P -- "$code: %{$FG[$code]%}$ZSH_SPECTRUM_TEXT%{$reset_color%}"
  done
}

[[ "$TERM" == "xterm" ]] && export TERM=xterm-256color

RED=203
GREEN=065
BLUE=067
YELLOW=223
CYAN=073
DARK_GREY=236

ZSH_HIGHLIGHT_STYLES[unknown-token]='fg='$RED',bold'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg='$YELLOW
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg='$GREEN',underline'
ZSH_HIGHLIGHT_STYLES[precommand]='fg='$GREEN',underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg='$BLUE
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg='$BLUE
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg='$YELLOW
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg='$YELLOW
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg='$YELLOW
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg='$CYAN
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg='$CYAN
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg='$CYAN
ZSH_HIGHLIGHT_STYLES[comment]='fg='$DARK_GREY',bold'
ZSH_HIGHLIGHT_STYLES[arg0]='fg='$GREEN
