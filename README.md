# Introduction
This is my approach to transform vim into a full featured PHP IDE. It's only tested under linux.

## Included Features (plugins)

* super fast & sexy &intelligent autocompletion (youcompleteme)
* fuzzy file/buffer finder (command-t)
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
* ack integration (ack.vim)
* coding standard fixer (vim-php-cs-fixer)
* improved php completion (phpcomplete.vim)
* surrounding words/selections with stuff (vim-surround)
* autoclosing html tags (closetag.vim)
* phpdoc generator (pdv)


## Basic installation

## (optional) create a separate dir to organize git repositories

```
$ mkdir ~/git && cd ~/git
```

## Clone this repository
```
$ git clone https://github.com/phux/php-vim-setup.git
```

## Install plugins
### Clone vundle
```
$ git clone https://github.com/gmarik/vundle.git ~/git/php-vim-setup/.vim/bundle/vundle
```
### fetch and installing plugins

```
$ vim
:BundleInstall
```

#### Compiling Command-T and YouCompleteMe
Note: you have to compile the Command-T and the YouCompleteMe plugins manually in order to get them working
##### Command-T
```
$ cd ~/git/php-vim-setup/.vim/bundle/Command-T/ruby/command-t/
$ ruby extconf.rb
$ make
```
##### YouCompleteMe
```
$ cd ~/git/php-vim-setup/.vim/bundle/YouCompleteMe
$ ./install.sh
```
