# Basic installation

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
