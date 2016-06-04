# ap (cd to Atom project directory)
#
# require: fzf, atom, cson2json, jq
#

function fzf-get-atom-projects {
  cson2json ~/.atom/projects.cson | jq -r ".[].paths[]" | fzf --query="$@" --select-1 --exit-0
}

function ap {
  local dir="$(fzf-get-atom-projects "$@")"
  [ -n "$dir" ] && cd "$dir"
}

function aap {
  local dir="$(fzf-get-atom-projects "$@")"
  [ -n "$dir" ] && atom "$dir"
}

function fzf-ap {
  local dir="$(fzf-get-atom-projects "$LBUFFER")"
  if [ -n "$dir" ]; then
    BUFFER="cd $dir"
    zle accept-line
  else
    zle reset-prompt
  fi
}
zle -N fzf-ap
bindkey '^T' fzf-ap
