" ====================
" = Vundle
" ====================




set nocompatible " be iMproved
filetype off " disable temporarily
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/TabBar'
Plugin 'henrik/vim-indexed-search'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Raimondi/delimitMate'
Plugin 'amiorin/vim-project'
Plugin 'wincent/Command-T'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'tobyS/pdv'
Plugin 'tobyS/vmustache'
Plugin 'ap/vim-css-color'
Plugin 'YankRing.vim'
Plugin 'tristen/vim-sparkup'
Plugin 'L9'
Plugin 'mru.vim'
Plugin 'bufkill.vim'
Plugin 'matchit.zip'
"colorschemes
Plugin 'ScrollColors'
Plugin 'sjl/badwolf'
Plugin 'twerth/ir_black'


Plugin 'joonty/vim-phpqa'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'docteurklein/vim-symfony'
Plugin 'shawncplus/phpcomplete.vim'

" experimenting with python
Plugin 'nvie/vim-flake8'
Plugin 'pytest.vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'davidhalter/jedi-vim'

call vundle#end()
" }







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
"set shortmess=atIoOTts
set shortmess+=filmnrxoOtT

" Always display the status line, even if only one window is displayed
set laststatus=2

" highlight current line
set cursorline

set autoindent
set smartindent
set tabstop=4
set smarttab
set softtabstop=4
set shiftround
set shiftwidth=4
set expandtab
set list

set formatoptions+=or

"set listchars=eol:¬,nbsp:⋅,tab:\|\ ,trail:⋅,extends:>,precedes:<
set listchars=nbsp:⋅,tab:\|\ ,trail:⋅,extends:>,precedes:<

set whichwrap+=<,>,[,],h,l
set nostartofline
set backspace=indent,eol,start

" ------
" - Search settings
" ------

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

" Better command-line completion
set wildmenu
set wildignore+=*.pyc,*.zip,*.gz,*.bz,*.tar,*.jpg,*.png,*.gif,*.avi,*.wmv,*.ogg,*.mp3,*.mov,.git,.svn
set wildmode=list:longest

set errorformat+=%*[\"]%f%*[\"]\\,\ line\ %l:\ %m
set completeopt=menuone,longest
" Limit popup menu height
set pumheight=15

filetype plugin indent on

" ignore whitespaces when vimdiff'ing
set diffopt=iwhite


" ------
" - Settings: Folding
" ------




set foldnestmax=2      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=2






" ====================
" = Settings: Gui
" ====================






syntax on

if has("gui_running")
    colorscheme halflife
"    set background=light

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

let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips/'

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

let g:PHP_removeCRwhenUnix = 1
let g:PHP_vintage_case_default_indent = 1

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
let g:tagbar_phpctags_memory_limit = '1024M'

let NERDTreeShowBookmarks = 1

let g:CommandTMaxHeight = 10

let g:jedi#popup_on_dot = 0
let g:jedi#use_tabs_not_buffers = 0



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

map <c-s> <esc>:w<cr>
imap <c-s> <esc>:w<cr>a

" delete word after cursor in insert mode
inoremap <c-s-l> <c-o>dw

inoremap <m-;> <esc>A;<esc>
nnoremap <m-;> A;<esc>


map <F4> :call UpdateTags()<cr>

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


" ------
" - Mappings: Plugins
" ------


"namespace plugin
inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>
noremap <Leader>u :call PhpInsertUse()<CR>
inoremap <Leader>e <C-O>:call PhpExpandClass()<CR>
noremap <Leader>e :call PhpExpandClass()<CR>


map <leader>; :TagbarToggle<cr>

map <leader>gw :Gwrite<cr>
map <leader>gc :Gcommit<cr>
map <leader>gp :!git push<cr>

map <leader><space> :CommandT<cr>
map <leader><leader> :CommandTBuffer<cr>

map <leader>n :NERDTreeToggle<CR>
map <leader>N :NERDTreeFind<cr>

map <silent> <leader>A :exec "Ack! ".expand("<cword>")<cr>
map <leader>a :Ack!<space>

map <leader><enter> :Mru<cr>

nnoremap <silent> <Leader>y :YRShow<CR>


map <F8> <esc>:w<cr>:Phpmd<cr>
map <F9> <esc>:w<cr>:Phpcs<cr>
map <F12> <esc>gg=G:w<cr>:silent !php-cs-fixer -qn fix %<CR>:e<cr>zi:Phpmd<cr>

inoremap <M-p> <ESC>:call pdv#DocumentCurrentLine()<CR>
nnoremap <M-p> :call pdv#DocumentCurrentLine()<CR>
nnoremap <M-P> :call pdv#DocumentWithSnip()<CR>

"let g:UltiSnipsListSnippets="<s-tab>"
let g:UltiSnipsExpandTrigger="<m-j>"
let g:UltiSnipsJumpForwardTrigger="<m-j>"
let g:UltiSnipsJumpBackwardTrigger="<m-k>"

let g:sparkupExecuteMapping='<m-i>'
let g:sparkupNextMapping = '<m-o>'


" python
" Execute the tests
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>
" cycle through test errors
nmap <silent><Leader>tn <Esc>:Pytest next<CR>
nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>te <Esc>:Pytest error<CR>



let g:jedi#goto_assignments_command = "<leader>jg"
let g:jedi#goto_definitions_command = "<leader>jd"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>jn"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>jr"
let g:jedi#show_call_signatures = "1"


" ====================
" = Custom functions
" ====================

function! UpdateTags()
  let cwd = getcwd()
  let tagfilename = cwd . "/tags"
  let cmd = 'ctags --fields=+aimS --languages=php -R  --totals=yes --tag-relative=yes --exclude="*.html" --exclude=".svn" --exclude=".git" --exclude="*t3*" --exclude="*Twig*"  --exclude="*typo3*" -f '.tagfilename
  let resp = system(cmd)
  echo resp
endfunction




function! OpenPHPManual(keyword)
    "let browser = '/usr/bin/firefox'
    let browser = '/usr/bin/chromium-browser'
    let url = 'http://ro.php.net/' . a:keyword
    silent exec '!' . browser . ' "' . url . '" &'
endfunction
noremap <silent> <leader>k :call OpenPHPManual(expand('<cword>'))<CR>


" auto reload vimrc on save
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" toggles the quickfix window.
map <leader>q :QFix<cr>
command! -bang -nargs=? QFix call QFixToggle(<bang>0)
augroup QFixToggle
    autocmd!
    autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")
    autocmd BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
augroup END
let g:jah_Quickfix_Win_Height=10


function! QFixToggle(forced)
    if exists("g:qfix_win") && a:forced == 0
        cclose
    else
        execute "copen " . g:jah_Quickfix_Win_Height
    endif
endfunction



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

function! BExtractMethod() range
  let name = inputdialog("Name of new method:")
  '<
  exe "normal! O\<BS>private " . name ."()\<CR>{\<Esc>"
  '>
  exe "normal! oreturn ;\<CR>}\<Esc>k"
  s/return/\/\/ return/ge
  normal! j%
  normal! kf(
  exe "normal! yyPi// = \<Esc>wdwA;\<Esc>"
  normal! ==
  normal! j0w
endfunction

function! ExtractMethod() range
    normal gvd
    exe "normal! ma"
    let name = inputdialog("name of new method")
    let params = inputdialog("parameters separated by ,")
    ?function
    exe "normal! }"
    exe "normal! o\private function " . name ."(" . params . ") {"
    exe "normal! oreturn ;"
    exe "normal! o\}"
    normal kP
    exe "normal! 'a"
    exe "normal! O= $this->" . name . "(" . params . ");"
    normal I
endfunction

" call function by:
vmap <leader>em :call ExtractMethod()<cr>


" jump to a twig view in symfony
"
" note: path must be set to project root! should be set automatically when using vim-projects.
" otherwise: uncomment following line
" set path+=**

function! s:SfJumpToView()
    mark C
    normal! ]M
    let end = line(".")
    normal! [m
    try
        call search('v[^.:]+.html.twig', '', end)
        normal! gf
    catch
        normal! g`C
        echohl WarningMsg | echomsg "Template file not found" | echohl None
    endtry
endfunction
com! SfJumpToView call s:SfJumpToView()

" create a mapping only in a Controller file
autocmd BufEnter *Controller.php nmap <buffer><leader>v :SfJumpToView<CR>


" ====================
" = Auto commands
" ====================


"autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP
" save with strg-s
autocmd FileType php map <buffer> <c-s> <esc>:w<cr>:silent !php-cs-fixer -qn fix %<CR>:e<cr>

"Automatically delete trailing DOS-returns and whitespace
autocmd BufRead * silent! %s/[\r \t]\+$//
autocmd BufEnter *.php :%s/[ \t\r]\+$//e

"python stuff
au FileType python let g:pyref_mapping = 'K'
au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType python setlocal formatoptions=croql
au FileType python nmap <buffer> <F5> :w<Esc>mwG:r!python %<CR>`.
autocmd BufWritePost *.py call Flake8()
autocmd FileType python setlocal completeopt-=preview
set foldmethod=indent
set foldlevel=99



" ====================
" = Settings: Performance
" ====================





set nocursorcolumn
set nocursorline
set lazyredraw
syntax sync minlines=50
set scrolljump=5
let html_no_rendering=1
let php_sql_query=0
let php_htmlInStrings=0



so ~/.nonpublic-vimprojects

