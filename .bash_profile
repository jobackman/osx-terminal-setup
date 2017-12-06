. ~/.nvm/nvm.sh

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias clearnpm='rm -rf node_modules/ bower_components/ && npm cache clean && bower cache clean'
alias clearepm='rm -rf node_modules/ bower_components/ tmp dist deploy-dist && npm cache clean && bower cache clean && npm install && bower install'
export PATH=/Users/Johan/.nvm/versions/node/v6.9.5/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/Users/Johan/.yarn/bin:/Users/Johan/.vimpkg/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
