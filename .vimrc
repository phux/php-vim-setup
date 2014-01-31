" ====================
" = VUNDLE Plugin initializing
" ====================



set nocompatible " be iMproved
filetype off " disable temporarily
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/TabBar'
Bundle 'henrik/vim-indexed-search'
Bundle 'Valloric/YouCompleteMe'
Bundle 'shawncplus/phpcomplete.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'mbbill/undotree'
Bundle 'StanAngeloff/php.vim'
Bundle 'rayburgemeestre/phpfolding.vim'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'bling/vim-airline'
Bundle 'SirVer/ultisnips'
Bundle 'bkad/CamelCaseMotion'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/nerdcommenter'
"Bundle 'flazz/vim-colorschemes'
Bundle 'joonty/vim-phpqa'
Bundle 'tpope/vim-fugitive'
Bundle 'amiorin/vim-project'
Bundle 'kien/ctrlp.vim'
"Bundle 'vim-php/tagbar-phpctags.vim'
Bundle 'tpope/vim-unimpaired'
Bundle 'tobyS/pdv'
Bundle 'tobyS/vmustache'

Bundle 'YankRing.vim'
"Bundle 'ScrollColors'
Bundle 'L9'
Bundle 'mru.vim'
"Bundle 'SearchComplete'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bufkill.vim'









" ====================
" = Settings: General
" ====================







" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

set nu " show line numbers
set enc=utf-8
set hidden
" no backups
set nobackup
set nowritebackup
set noswapfile
" automatically read file changed outside of Vim
set autoread

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Copy to Clipboard (on Unix)
set clipboard+=unnamed
set clipboard+=+

" use open windows/tabs for buffer switching
set switchbuf=useopen,usetab

" Show partial commands in the last line of the screen
set showcmd

" Line wrapping
set wrap
" " but don't split words
set lbr
" "show this in front of broken lines
set showbreak=↪

" split new window at the right of current
set spr

" Set the command window height to 1 lines
set cmdheight=1

" This makes more sense than the default of 1
set winminheight=0

" no welcome screen
set shortmess=atIoOTts

" Always display the status line, even if only one window is displayed
set laststatus=2

" highlight current line
set cursorline

set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set list
"set listchars=eol:¬,nbsp:⋅,tab:\|\ ,trail:⋅,extends:>,precedes:<
set listchars=nbsp:⋅,tab:\|\ ,trail:⋅,extends:>,precedes:<

set whichwrap+=<,>,[,],h,l
set nostartofline
set backspace=indent,eol,start

" Highlight searches
set hlsearch

" " Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" " do highlight as you type your search phrase
set incsearch

" undo 
set undofile                " Save undo's after file closes
set undodir=~/.undovim " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000

set textwidth=0
set fo+=2

" Better command-line completion
set wildmenu
set wildignore+=*.pyc,*.zip,*.gz,*.bz,*.tar,*.jpg,*.png,*.gif,*.avi,*.wmv,*.ogg,*.mp3,*.mov,.git,.svn
set wildmode=list:longest

set errorformat+=%*[\"]%f%*[\"]\\,\ line\ %l:\ %m
set completeopt=menuone
" Limit popup menu height
set pumheight=15

filetype indent plugin on

" ignore whitespaces when vimdiff'ing
set diffopt=iwhite


" ------
" - Settings: Folding
" ------




set foldmethod=indent   "fold based on indent
set foldnestmax=2      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=2






" ====================
" = Settings: Gui
" ====================






syntax on

colorscheme solarized
if has("gui_running")
    set background=light

    set guicursor=a:block-Cursor
    "cursors dont blink!
    set guicursor+=n-v:blinkon0
else
    set background=dark
    colorscheme slate
endif






" ====================
" = Settings: Plugins
" ====================






let g:project_use_nerdtree = 1
let g:project_enable_welcome = 1
set rtp+=~/.vim/bundle/vim-project/
call project#rc("~/git/code")

let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'

let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX

let g:phpqa_codesniffer_autorun = 0
let g:phpqa_messdetector_autorun = 0

let g:php_cs_fixer_level = "all"                  " which level ?
let g:php_cs_fixer_config = "default"             " configuration
let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_fixers_list = ""               " List of fixers
let g:php_cs_fixer_enable_default_mapping = 0     " Enable the mapping by default (<leader>pcd)

let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.


let g:pdv_template_dir = $HOME."/.vim/bundle/pdv/templates_snip"

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" YOUCOMPLETEME SETTINGS
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:tagbar_phpctags_bin='~/git/phpctags/phpctags'
let g:tagbar_phpctags_memory_limit = '512M'

let NERDTreeShowBookmarks = 1





" ====================
" = Mappings
" ====================




" ------
" - Mappings: General
" ------


" Edit the vimrc file
nmap <silent> <F5> :e $MYVIMRC<CR>

let mapleader=","

inoremap jk <esc>

" map j to gj and k to gk, so line navigation ignores line wrap
nmap j gj
nmap k gk

" Copy Paste
map <leader>p "+p
cmap <leader>p <C-R>+
vnoremap <leader>y "+y

map <leader>W :set nowrap!<CR>

map <leader>t :set tags=~/tags/

" fast closing of html tags
imap ;; </<c-x><c-o>

vmap < <gv
vmap > >gv

" command line bash behavior
cnoremap <C-A> <Home>
cnoremap <C-B> <Left>
cnoremap <C-E> <End>
cnoremap <C-F> <Right>
cnoremap <C-N> <End>
cnoremap <C-P> <Up>

" delete char after cursor in insert mode, same as del key
inoremap <c-l> <del>

" jump to line AND column
nnoremap ' `
nnoremap ` '

" window switching
noremap <silent> <c-l> <c-w>l
noremap <silent> <c-j> <c-w>j
noremap <silent> <c-k> <c-w>k
noremap <silent> <c-h> <c-w>h

" window resizing
map <c-down> <C-W>-
map <c-up> <C-W>+
map <c-left> <c-w>3<
map <c-right> <c-w>3>

" move to next or previous buffer with ALT+hl
nmap <m-h> :bp<cr>
nmap <m-l> :bn<cr>

" tag bindings
nmap <leader>o <c-w>g}

" Edit the vimrc file
nmap <silent> <F5> :e $MYVIMRC<CR>

" save with strg-s
"autocmd FileType php map <buffer> <c-s> <esc>:w<cr>:silent call PhpCsFixerFixFile()<CR>:e<cr>zz
autocmd FileType php map <buffer> <c-s> <esc>:w<cr>:silent !php-cs-fixer -qn fix %<CR>:e<cr><space>

map <c-s> <esc>:w<cr>
imap <c-s> <esc>:w<cr>a

" delete word after cursor in insert mode
inoremap <c-s-l> <c-o>dw

inoremap <m-;> <esc>A;<esc>
nnoremap <m-;> A;<esc>

map <F4> :!ctags -h ".php" -R --exclude="\.svn" --exclude="\.js" --totals=yes --tag-relative=yes --PHP-kinds=+cf-v --regex-PHP='/abstract class ([^ ]*)/\1/c/' --regex-PHP='/interface ([^ ]*)/\1/c/' --regex-PHP='/(public \|static \|abstract \|protected \|private )+function ([^ (]*)/\2/f/' -f ~/tags/

" unmark search matches
nmap <silent> ,/ :nohlsearch<CR>

" Refactor names easily (hit ,s on the word you'd like to rename
nnoremap <Leader>S :s/<c-r><c-w>/<c-r><c-w>/g<left><left>
nnoremap <Leader>s :%s/<c-R><c-w>/<c-r><c-w>/g<left><left>

" reformat html -> each tag on own row
nmap <F3> :%s/<[^>]*>/\r&\r/g<cr>gg=G:g/^$/d<cr><leader>/


" ------
" - Mappings: folding
" ------


" Toggle folds
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>zz
vnoremap <Space> zf
" Folding and unfolding
map ,f :set foldmethod=indent<cr>zM<cr>
map ,F :set foldmethod=manual<cr>zR<cr>


" ------
" - Mappings: Plugins
" ------



nnoremap <leader>u :UndotreeToggle<cr>

map <leader>; :TagbarToggle<cr>

map <leader>gw :Gwrite<cr>
map <leader>gc :Gcommit<cr>
map <leader>gp :!git push<cr>

map <c-p> :CtrlP<cr>

map <leader>n :NERDTreeToggle<CR>
map <leader>N :NERDTreeFind<cr>

map <silent> <leader>A :exec "Ack! ".expand("<cword>")<cr>
map <leader>a :Ack!<space>

map <leader><enter> :Mru<cr>

nnoremap <silent> <Leader>y :YRShow<CR>

map <F8> <esc>:w<cr>:Phpmd<cr>

map <silent><F3> :NEXTCOLOR<cr>:redraw<cr>
map <silent><F2> :PREVCOLOR<cr>:redraw<cr>
nmap <F2> :SCROLL<cr>

inoremap <M-p> <ESC>:call pdv#DocumentCurrentLine()<CR>i 
nnoremap <M-p> :call pdv#DocumentCurrentLine()<CR> 
nnoremap <M-P> :call pdv#DocumentWithSnip()<CR> 

let g:UltiSnipsListSnippets="<s-tab>"
let g:UltiSnipsExpandTrigger="<m-j>"
let g:UltiSnipsJumpForwardTrigger="<m-j>"
let g:UltiSnipsJumpBackwardTrigger="<m-k>"





" ====================
" = Custom functions
" ====================





" auto reload vimrc on save
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

autocmd BufWrite *.php :call DeleteTrailingWS()
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc

" toggles the quickfix window.
map <leader>q :QFix<cr>
command! -bang -nargs=? QFix call QFixToggle(<bang>0)
augroup QFixToggle
    autocmd!
    autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")
    autocmd BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
augroup END
let g:jah_Quickfix_Win_Height=10

" jump to last cursor position when opening files
function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction
augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END






" ====================
" = Auto commands
" ====================





function! OpenPHPManual(keyword)
    "let browser = '/usr/bin/firefox'
    let browser = '/usr/bin/chromium-browser'
    let url = 'http://ro.php.net/' . a:keyword
    silent exec '!' . browser . ' "' . url . '"'
endfunction
noremap <silent> <leader>k :call OpenPHPManual(expand('<cword>'))<CR>

function! QFixToggle(forced)
    if exists("g:qfix_win") && a:forced == 0
        cclose
    else
        execute "copen " . g:jah_Quickfix_Win_Height
    endif
endfunction





" ====================
" = Settings: Performance
" ====================





set nocursorcolumn
set nocursorline
syntax sync minlines=256
set scrolljump=5
let html_no_rendering=1



so ~/.nonpublic-vimprojects
