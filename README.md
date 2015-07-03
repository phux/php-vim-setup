# Introduction
This is my approach to transform vim into a full featured PHP IDE. It's only tested under linux.

## Included Features (plugins)

* super fast & sexy &intelligent autocompletion (youcompleteme)
* fuzzy file/buffer finder (CtrlP)
* project based vim configuration (vim-project)
* enhanced status bar (vim-powerline)
* tagbar
* file panel (nerdtree)
* easy commenting (nerdcommenter)
* mighty snippet plugin (ultisnips)
* autocompletion for brackets,..
* enhanced buffer/window behaviour (bufkill.vim)
* most recent used files access (mru.vim)
* cool yank history (yankring)
* git integration (fugitive)
* codesniffer & messdetector integration (phpqa)
* php refactoring
* ack integration (ack.vim)
* coding standard fixer (vim-php-cs-fixer)
* improved php completion (phpcomplete.vim)
* surrounding words/selections with stuff (vim-surround)
* autoclosing html tags (closetag.vim)
* phpdoc generator (pdv)


## Basic installation

### (optional) create a separate dir to organize git repositories

```
$ mkdir ~/git && cd ~/git
```

### Clone this repository
```
$ git clone https://github.com/phux/php-vim-setup.git
$ cd && ln -s ~/git/php-vim-setup/.vim* && ln -s ~/git/php-vim-setup/.gvimrc
```

### Install plugins
#### Clone NeoBundle
```
$ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
```
#### fetch and install plugins

```
$ vim -c 'NeoBundleInstall'
```

##### Compiling YouCompleteMe
Note: you have to compile the YouCompleteMe plugin manually in order to get it working.

```
$ cd ~/git/php-vim-setup/.vim/bundle/YouCompleteMe
$ git submodule update --init --recursive
$ ./install.sh
```
