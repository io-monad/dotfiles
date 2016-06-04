function install_homebrew {
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install rcmdnk/file/brew-file

  export HOMEBREW_BREWFILE="$HOME/.brewfile"
  export HOMEBREW_CASK_OPTS="--appdir=/Applications"
  if [ -e $HOMEBREW_BREWFILE ]; then
    echo "Skipping symlink $HOMEBREW_BREWFILE"
  else
    echo "ln -s $PWD/dotfiles/brewfile $HOMEBREW_BREWFILE"
    ln -s $PWD/dotfiles/brewfile $HOMEBREW_BREWFILE
  fi

  brew file install
}

function update_homebrew {
  brew file update
  chmod -x dotfiles/brewfile
}

# Prepend to the array to be always first
installers=(homebrew $installers)
