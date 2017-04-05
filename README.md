# Deprecated
This repo is deprecated.
I've switched to neovim and a dotfiles repo.
See my current config @ https://github.com/phux/.dotfiles


# Introduction
This was my approach to transform vim into a full featured PHP IDE. It's only tested under linux.

## Included Features (plugins)

* really working php autocompletion (neocomplete + tags)
* fuzzy file/buffer finder (CtrlP)
* project based vim configuration (vim-project)
* enhanced status bar (vim-airline)
* tagbar
* file panel (nerdtree)
* easy commenting (nerdcommenter)
* mighty snippet plugin (ultisnips)
* autocompletion for brackets,..
* enhanced buffer/window behaviour (bufkill.vim)
* most recent used files access (mru.vim)
* yank history (yankring)
* improved navigation (vim-easymotion)
* namespace handling (vim-php-namespace)
* git integration (fugitive)
* codesniffer & messdetector integration (phpqa)
* php refactoring (php-refactoring-toolbox)
* ack/ag integration
* coding standard fixer (vim-php-cs-fixer)
* surrounding words/selections with stuff (vim-surround)
* autoclosing html tags (closetag.vim)
* phpdoc generator (pdv)
* automatic tag-file updates (easytags)


## Basic installation

### Dependencies
* instant markdown: npm -g install instant-markdown-d
* easytags: exuberant ctags -> https://github.com/universal-ctags/ctags

### (optional) create a separate dir to organize git repositories

```
$ mkdir ~/git && cd ~/git
```

### Clone this repository
```
$ git clone https://github.com/phux/php-vim-setup.git
$ cd && ln -s ~/git/php-vim-setup/.vim* . && ln -s ~/git/php-vim-setup/.gvimrc .
```

### Install plugins
#### Install vim-plug
```
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
#### fetch and install plugins

```
$ vim -c 'PlugInstall'
```
