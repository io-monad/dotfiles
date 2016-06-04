# :herb: dotfiles by @io-monad

Supports Mac only. Aims to be fast.

## Usage

To install everything:

    $ ./install

To update everything:

    $ ./update

Or, partially update:

    $ ./update node

See [installers](installers/) for details.

## Tools

- [zsh](http://www.zsh.org/) for default shell
- [Prezto](https://github.com/sorin-ionescu/prezto) for shell theme and modules
- [Homebrew](http://brew.sh/) for package management
- [homebrew-file](https://github.com/rcmdnk/homebrew-file) for Homebrew + Cask + Mac App Store bundler file
- [rcm](https://github.com/thoughtbot/rcm) for dotfiles management
- [nodebrew](https://github.com/hokaccha/nodebrew) for Node.js version management

## Note on files

- `dotfiles/brewfile` contains a list of packages installed by Homebrew.
- `dotfiles/brewfile.local` is loaded at the end of `brewfile` if exists.
- `dotfiles/gitconfig` contains author's name and e-mail address.
- `dotfiles/zshrc.local` is loaded at the end of `zshrc` if exists.

## License

MIT (See [LICENSE.txt](LICENSE.txt))

Some files in `dotfiles/` are copied from Prezto project, and modified by me.
