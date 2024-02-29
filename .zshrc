# I'm using pyenv to manage python versions,
# and this makes it run at terminal startup.
source ~/.aliases
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi


source ~/.aliases
