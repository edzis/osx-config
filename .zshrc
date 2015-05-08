source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle osx
antigen bundle brew
antigen bundle brew-cask

antigen bundle git
antigen bundle node
antigen bundle npm
antigen bundle gem
antigen bundle sublime

antigen apply

PROMPT="
%{$fg[yellow]%}%~%{$reset_color%}%# "

ZSH_THEME_TERM_TITLE_IDLE='%~'
ZSH_THEME_TERM_TAB_TITLE_IDLE='$(basename ${PWD/$HOME/"~"})/'

WORDCHARS='-._'

zstyle ':completion:*' matcher-list '' \
 'm:{a-z\-}={A-Z\_}' \
 'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
 'r:[[:ascii:]]||[[:ascii:]]=** r:|=* m:{a-z\-}={A-Z\_}'

unset HISTFILE

###

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export PATH="$HOME/.node/bin:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

clear