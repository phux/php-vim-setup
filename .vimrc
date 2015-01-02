" Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
 "

NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/TabBar'
NeoBundle 'henrik/vim-indexed-search'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'amiorin/vim-project'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tobyS/pdv'
NeoBundle 'tobyS/vmustache'
NeoBundle 'ap/vim-css-color'
NeoBundle 'YankRing.vim'
NeoBundle 'tristen/vim-sparkup'
NeoBundle 'L9'
NeoBundle 'mru.vim'
NeoBundle 'bufkill.vim'
NeoBundle 'matchit.zip'

"colorschemes
NeoBundle 'ScrollColors'
NeoBundle 'sjl/badwolf'
NeoBundle 'twerth/ir_black'
NeoBundle 'flazz/vim-colorschemes'


NeoBundle 'joonty/vim-phpqa'
NeoBundle 'evidens/vim-twig'
NeoBundle 'elzr/vim-json'
NeoBundle 'shawncplus/phpcomplete.vim'
NeoBundle 'arnaud-lb/vim-php-namespace'
" php 5.5 syntax highlight
NeoBundle '2072/vim-syntax-for-PHP'
NeoBundle '2072/PHP-Indenting-for-VIm'

NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/unite.vim'

NeoBundle 'pangloss/vim-javascript'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'maksimr/vim-jsbeautify'
NeoBundle 'einars/js-beautify'

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck







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
set shortmess+=filmnrxoOtT

" Always display the status line, even if only one window is displayed
set laststatus=2

" highlight current line
set cursorline

set autoindent
set smartindent
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




"set foldnestmax=2      "deepest fold is 10 levels
"set foldenable        "dont fold by default
"set foldlevel=2






" ====================
" = Settings: Gui
" ====================






syntax on

if has("gui_running")
    "colorscheme wombat256mod
    "colorscheme getafe
    colorscheme ir_dark
    "set background=light

    set guicursor=a:block-Cursor
    "cursors dont blink!
    set guicursor+=n-v:blinkon0
else
    set background=dark
    colorscheme wombat256mod
endif






" ====================
" = Settings: Plugins
" ====================





let g:vim_json_syntax_conceal = 0
let g:project_use_nerdtree = 1
let g:project_enable_welcome = 1
set rtp+=~/.vim/bundle/vim-project/
call project#rc("~/git/code")

let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips/'

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

set completeopt-=preview

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/cache/*     " MacOSX/Linux

let g:tagbar_phpctags_bin='~/git/phpctags/phpctags'
let g:tagbar_phpctags_memory_limit = '1024M'

let NERDTreeShowBookmarks = 1


let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

let g:phpqa_codesniffer_args = "--standard=Symfony2"



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

inoremap <c-space> <C-x><C-o>

" ------
" - Mappings: folding
" ------


" Toggle folds
"nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>zz
"vnoremap <Space> zf


" ------
" - Mappings: Plugins
" ------


autocmd FileType javascript noremap <buffer> <leader>f :call JsBeautify()<cr>
autocmd FileType javascript vnoremap <buffer> <leader>f :call RangeJsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <leader>f :call HtmlBeautify()<cr>
autocmd FileType html vnoremap <buffer> <leader>f :call RangeHtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <leader>f :call CSSBeautify()<cr>
autocmd FileType css vnoremap <buffer> <leader>f :call RangeCSSBeautify()<cr>

"namespace plugin
inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>
noremap <Leader>u :call PhpInsertUse()<CR>
inoremap <Leader>e <C-O>:call PhpExpandClass()<CR>
noremap <Leader>e :call PhpExpandClass()<CR>

map <F6> <Esc>:EnableFastPHPFolds<Cr>
map <F7> <Esc>:EnablePHPFolds<Cr>

map <leader>; :TagbarToggle<cr>

map <leader>gw :Gwrite<cr>
map <leader>gc :Gcommit<cr>
map <leader>gp :!git push<cr>

map <leader><space> :CtrlPMixed<cr>
map <space><leader> :CtrlP<cr>

map <leader>n :NERDTreeToggle<CR>
map <leader>N :NERDTreeFind<cr>

nnoremap <silent> <leader>F :exec "Ack! --ignore-file=is:tags ".expand("<cword>")<cr>
nnoremap <silent> <leader>f :Ack! --ignore-file=is:tags<space>

map <leader><enter> :Mru<cr>

nnoremap <silent> <Leader>y :YRShow<CR>

inoremap <M-p> <ESC>:call pdv#DocumentCurrentLine()<CR>
nnoremap <M-p> :call pdv#DocumentCurrentLine()<CR>
nnoremap <M-P> :call pdv#DocumentWithSnip()<CR>

let g:UltiSnipsExpandTrigger="<m-j>"
let g:UltiSnipsJumpForwardTrigger="<m-j>"
let g:UltiSnipsJumpBackwardTrigger="<m-k>"

let g:sparkupExecuteMapping='<m-i>'
let g:sparkupNextMapping = '<m-o>'


" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

nnoremap <leader>a :Align<Space>
vnoremap <leader>a :Align<Space>


let g:phpcomplete_complete_for_unknown_classes = 1
let g:phpcomplete_search_tags_for_variables = 1
let g:phpcomplete_parse_docblock_comments = 1
let g:phpcomplete_cache_taglists = 1
let g:phpcomplete_enhance_jump_to_definition = 1


" Enable omni completion.
set omnifunc=syntaxcomplete#Complete


" ====================
" = Custom functions
" ====================

function! UpdateTags()
    let cwd = getcwd()
    let tagfilename = cwd . "/tags"
    let cmd = 'ctags --fields=+aimS --languages=php -R  --totals=yes --tag-relative=yes --exclude="*.html" --exclude=".svn" --exclude=".git" --exclude="*t3*" --exclude="*Twig*" --exclude="*typo3*" -f '.tagfilename.' --PHP-kinds=+cf-v --regex-PHP="/abstract\s+class\s+([^ ]+)/\1/c/" --regex-PHP="/interface\s+([^ ]+)/\1/c/" --regex-PHP="/(public\s+|static\s+|abstract\s+|protected\s+|private\s+)function\s+\&?\s*([^ (]+)/\2/f/"'
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


" Parameters:
"
" fileExtension: the file extension this script should act on, i.e. 'php'
" (without dot)
"
" firstDirBeginning: a file path that identifies the first type
" of paths, i.e. 'tests/unit/'
"
" secondDirBeginning: a file path pattern that identifies the second type
" of paths, i.e. 'src/'
"
" filenameAddition: string that should be removed from the first filename and
" added to the second, i.e. 'Test' if your testfile filename has the suffix
" 'Test' as in /path/MyServiceTest.php

function! SwitchBetweenFiles(fileExtension, firstDirBeginning, secondDirBeginning, filenameAddition)
    let f = bufname("%")
    if f =~ '.'.a:fileExtension
        if f =~ '\<'.a:firstDirBeginning && f =~ a:filenameAddition.'\.'.a:fileExtension
            let filename = substitute(substitute(f, a:firstDirBeginning, '', ''), a:filenameAddition, '', '')
            if !filereadable(filename)
                let new_dir = substitute(filename, '/\w\+\.'.a:fileExtension, '', '')
                exe ":!mkdir -p ".new_dir
            endif
            exe ":e ".filename
        elseif f =~ '\<'.a:secondDirBeginning && f !~ a:filenameAddition.'\.'.a:fileExtension
            let filename = substitute(substitute(f, a:secondDirBeginning, a:firstDirBeginning.a:secondDirBeginning, ''), '.'.a:fileExtension, a:filenameAddition.'.'.a:fileExtension, '')
            if !filereadable(filename)
                let new_dir = substitute(filename, '/\w\+'.a:filenameAddition.'\.'.a:fileExtension, '', '')
                exe ":!mkdir -p ".new_dir
            endif
            exe ":e ".filename
        else
            echom "Could not switch because needed patterns not matched."
        endif
    endif
endfunction

nmap <leader>tu :call SwitchBetweenFiles('php', 'tests/unit/', 'src/', 'Test')<cr>
nmap <leader>tf :call SwitchBetweenFiles('php', 'tests/functional/', 'src/', 'Test')<cr>
nmap <leader>ta :call SwitchBetweenFiles('php', 'tests/acceptance/', 'src/', 'Test')<cr>



" ====================
" = Auto commands
" ====================


autocmd FileType php map <buffer> <c-s> <esc>:w<cr>
map <F8> <esc>:w<cr>:Phpmd<cr>
map <F9> <esc>:w<cr>:Phpcs<cr>
map <M-s> <esc>magg=G:w<cr>:!php-cs-fixer -qn --config=sf23 fix %<CR>:e<cr>'a

"Automatically delete trailing DOS-returns and whitespace
autocmd BufRead * silent! %s/[\r \t]\+$//
autocmd BufEnter *.php :%s/[ \t\r]\+$//e





" ====================
" = Settings: Performance
" ====================





set nocursorcolumn
set nocursorline
set lazyredraw
"syntax sync minlines=100
"set synmaxcol=200
set scrolljump=5
let html_no_rendering=0
let php_sql_query=1
let php_noShortTags=1
"let php_folding=1
let php_htmlInStrings=1
let g:PHP_default_indenting=0
set foldopen=block,hor,mark,percent,quickfix,search,tag,undo,jump

so ~/.nonpublic-vimprojects
