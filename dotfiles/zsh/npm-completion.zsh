# Cached npm completion
#
# Code is borrowed from Prezto's node module.
# Not using Prezto's node module directly since it is a bit slow.
#

cache_file="${0:h}/npm-completion.cache"

if [[ ! -s "$cache_file" ]]; then
  # npm is slow; cache its output.
  npm completion >! "$cache_file" 2> /dev/null
fi

source "$cache_file"

unset cache_file
