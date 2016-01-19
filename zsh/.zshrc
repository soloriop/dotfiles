# Path to your oh-my-zsh installation.
export ZSH=/Users/luis/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it"ll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="luismendozamx"

# Plugins
plugins=(rails git ember-cli)

#Load Rbenv
eval "$(rbenv init -)"

# User configuration
export PATH="$PATH:/Users/luis/.rbenv/shims:/Users/luis/google-cloud-sdk/go_appengine:/Users/luis/dev/kiwi/appengine/bin:/Users/luis/google-cloud-sdk/bin:/usr/local/heroku/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Export ENV variables for Kiwi
export KIWI_SMTP_USER="hola@usekiwi.com"
export KIWI_SMTP_PASSWORD="BZKNb8nHR3JrTjRvVmpg"
export GOPATH="/Users/luis/dev/kiwi/appengine"
export KIWI_DEV_MOBILE="+525535668392"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="vim"
else
  export EDITOR="mvim"
fi

# Run Main Editor
e() {
  if ((! $#)); then
    mvim . && echo "mvim ."
  else
    mvim $1 && echo " mvim" $1
  fi
}

## Postgres Commands
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias pgstatus="pg_ctl -D /usr/local/var/postgres status"

## MySql Commands
alias msqlstart="mysql.server start"
alias msqlstop="mysql.server stop"
alias msqlstatus="mysql.server status"
alias kiwidb="mysql -uroot kiwi_dev"

## Solr Commands
alias solrstart="bundle exec sunspot-solr start"
alias solrrun="bundle exec sunspot-solr run"
alias solrstop="bundle exec sunspot-solr stop"

# MongoDB Commands
alias mongostart="mongod --config /usr/local/etc/mongod.conf"

# Redis Commands
alias redistart="redis-server /usr/local/etc/redis.conf"

## Rails
alias be="bundle exec"
alias bi="bundle install"
alias rg="rails g"
alias rs="rails s"
alias rc="rails c"
alias rn="rails new"
alias rd="rails dbconsole"
alias rp="rails plugin"
alias ra="rails application"
alias rd="rails destroy"
alias prythis="pry -r ./config/environment"
alias serve="foreman start web"

## rake
alias rt="rake test"
alias rtu="rake test:units"
alias rtf="rake test:functionals"
alias rti="rake test:integration"
alias rro="rake routes"
alias rdbm="rake db:migrate"
alias rdbrb="rake db:rollback"
alias rdbs="rake db:seed"
alias rdbr="rake db:reset"
alias ri="rake install"
alias ru="rake update"
alias rr="rake run"

## Utility Aliases
alias ~="cd ~"
alias flushDNS="dscacheutil -flushcache"
alias reload="source ~/.zshrc"

# Personal aliases
alias dotfiles="cd ~/dev/config/dotfiles"
alias dev="cd ~/dev"
alias personal="cd ~/dev/personal"
alias clientes="cd ~/dev/clientes"
alias kiwi="cd ~/dev/kiwi"
alias mercadoni="cd ~/dev/mercadoni"
alias api="cd ~/dev/kiwi/kiwi"
alias locale="cd ~/dev/clientes/local-e"

# Git aliases
alias commit="git commit -am"
alias c="echo 'git commit -am' && git commit -am"
alias s="echo 'git stash' && git stash"
alias a="echo 'git add .' && git add ."

# Git functions
gitlog () {
  if (( ! $# )); then
    git log -15 --oneline --decorate --color --graph | cat
  else
    git log -$1 --oneline --decorate --color --graph | cat
  fi
}

# Ember aliases
alias ets="ember test --server"

# Work Aliases
alias rdeploy="rake deploy"
alias rsdeploy="rake stage:deploy"
alias rkdeploy="rake kiwi:deploy"

# NPM and Bower
alias npmi="npm install"
alias bwi="bower install"
alias npmb="npm install && bower install"

# The next line updates PATH for the Google Cloud SDK.
source "/Users/luis/google-cloud-sdk/path.zsh.inc"

# The next line enables shell command completion for gcloud.
source "/Users/luis/google-cloud-sdk/completion.zsh.inc"

# Load NVM
export NVM_DIR="/Users/luis/.nvm"
source $NVM_DIR/nvm.sh
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
