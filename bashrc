# Source every module from ~/.bashrc
# to get the path only - not the script name - add
source ~/.bash/aliases
source ~/.bash/config
source ~/.bash/env

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
