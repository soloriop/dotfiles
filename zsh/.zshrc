# Path to your oh-my-zsh installation.
export ZSH=/Users/luismendoza/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="luismendozamx"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(rails git node npm ember-cli)

# User configuration
export PATH="$PATH/Users/luismendoza/.rvm/gems/ruby-2.1.2/bin:/Users/luismendoza/.rvm/gems/ruby-2.1.2@global/bin:/Users/luismendoza/.rvm/rubies/ruby-2.1.2/bin:/Users/luismendoza/google-cloud-sdk/bin:/usr/local/heroku/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/luismendoza/.rvm/bin"


# Export ENV variables for Kiwi
export KIWI_SMTP_USER="hola@usekiwi.com"
export KIWI_SMTP_PASSWORD="BZKNb8nHR3JrTjRvVmpg"
export GOPATH="/Users/luismendoza/dev/kiwi/appengine"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

## Postgres Commands
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias pgstatus="pg_ctl -D /usr/local/var/postgres status"

#Solr Commands
alias solrstart="bundle exec sunspot-solr start"
alias solrrun="bundle exec sunspot-solr run"
alias solrstop="bundle exec sunspot-solr stop"

## Rails
alias be="bundle exec"
alias bi="bundle install"
alias r='rails'
alias rg='rails g'
alias rs='rails s'
alias rc='rails c'
alias rn='rails new'
alias rd='rails dbconsole'
alias rp='rails plugin'
alias ra='rails application'
alias rd='rails destroy'
 
## rake
alias rt='rake test'
alias rtu='rake test:units'
alias rtf='rake test:functionals'
alias rti='rake test:integration'
alias rr='rake routes'
alias rdbm='rake db:migrate'
alias rdbr='rake db:rollback'

## Utility Aliases
alias ~="cd ~"
alias flushDNS='dscacheutil -flushcache'
alias reload="source ~/.zshrc"

# Personal aliases
alias dotfiles="cd ~/dev/config/dotfiles"
alias dev="cd ~/dev"
alias personal="cd ~/dev/personal"
alias kiwi="cd ~/dev/kiwi"
alias web="cd ~/dev/kiwi/web"
alias admin="cd ~/dev/kiwi/admin"
alias api="cd ~/dev/kiwi/appengine/src/kiwi"
alias beek="cd ~/dev/clientes/beek/beek_core"
