# upr (cd to the root of the current git repos)
#
# require: git
#

function upr {
  git rev-parse --is-inside-work-tree >/dev/null 2>&1 && \
    cd `pwd`/`git rev-parse --show-cdup`
}
