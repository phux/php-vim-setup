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

NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/TabBar'
NeoBundle 'henrik/vim-indexed-search'
"NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'

NeoBundle 'majutsushi/tagbar'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'xolox/vim-easytags'
NeoBundle 'xolox/vim-misc'

"NeoBundle 'mileszs/ack.vim'
NeoBundle 'rking/ag.vim'
NeoBundle 'vim-scripts/grep.vim'
NeoBundle 'bling/vim-airline'

NeoBundle 'SirVer/ultisnips'
NeoBundle 'phux/vim-snippets'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'amiorin/vim-project'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
"NeoBundle 'chrisbra/changesPlugin'
"NeoBundle 'mhinz/vim-signify'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tobyS/pdv'
NeoBundle 'tobyS/vmustache'
NeoBundle 'ap/vim-css-color'
NeoBundle 'YankRing.vim'
NeoBundle 'tristen/vim-sparkup'
NeoBundle 'L9'
NeoBundle 'mru.vim'
NeoBundle 'bufkill.vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'matchit.zip'
"NeoBundle 'DBGp-Remote-Debugger-Interface'
"NeoBundle 'joonty/vdebug
NeoBundle 'vim-scripts/keepcase.vim'


"colorschemes
NeoBundle 'ScrollColors'
NeoBundle 'sjl/badwolf'
NeoBundle 'twerth/ir_black'
NeoBundle 'flazz/vim-colorschemes'
"NeoBundle 'daf-/vim-daylight'


NeoBundle 'joonty/vim-phpqa'
NeoBundle 'adoy/vim-php-refactoring-toolbox'
NeoBundle 'evidens/vim-twig'
NeoBundle 'elzr/vim-json'
"NeoBundle 'shawncplus/phpcomplete.vim'
"NeoBundle 'm2mdas/phpcomplete-extended'
"autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
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

NeoBundle 'rodjek/vim-puppet'

NeoBundle 'editorconfig/editorconfig-vim'

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

set nonu " show line numbers
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

set t_Co=256

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
    "colorscheme pyte
    "colorscheme github
    "colorscheme solarized
    "set background=light
    "colorscheme zmrok
    "colorscheme vilight
    "colorscheme jellybeans
    colorscheme ir_dark
    "colorscheme abra
    "colorscheme symfony
    "colorscheme sonofobsidian

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





let g:vim_json_syntax_conceal = 0
let g:project_use_nerdtree = 1
let g:project_enable_welcome = 1
set rtp+=~/.vim/bundle/vim-project/
call project#rc("~/git")

let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips/'

let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

let g:PHP_removeCRwhenUnix = 1
let g:PHP_vintage_case_default_indent = 1

let g:pdv_template_dir = $HOME."/.vim/bundle/pdv/templates_snip"
let g:pdv_cfg_Package = ""
let g:pdv_cfg_Version = ""
let g:pdv_cfg_Author = ""
let g:pdv_cfg_Copyright = ""

let g:ag_highlight=1


if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_power_line_fonts = 1
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


let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#branch#displayed_head_limit = 10
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 0
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']
"let g:airline#extensions#tagbar#flags = ''
"let g:airline#extensions#tagbar#flags = 'f'
"let g:airline#extensions#tagbar#flags = 's'
"let g:airline#extensions#tagbar#flags = 'p'
let g:airline#extensions#ctrlp#color_template = 'insert'
let g:airline#extensions#ctrlp#color_template = 'normal'
let g:airline#extensions#ctrlp#color_template = 'visual'
let g:airline#extensions#ctrlp#color_template = 'replace'

let g:vim_debug_disable_mappings = 1

set completeopt-=preview

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/cache/*     " MacOSX/Linux

let g:tagbar_phpctags_bin='~/git/phpctags/phpctags'
let g:tagbar_phpctags_memory_limit = '1024M'


let g:phpcomplete_parse_docblock_comments = 1
let g:phpcomplete_enhance_jump_to_definition = 1


let NERDTreeShowBookmarks = 1


let g:ctrlp_use_caching = 1
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

let g:phpqa_codesniffer_args = "--standard=PSR2"



" ====================
" = Mappings
" ====================




" ------
" - Mappings: General
" ------

let mapleader = "\<Space>"

" Edit the vimrc file
nmap <silent> <leader>z :e $MYVIMRC<CR>

inoremap jk <esc>

" map j to gj and k to gk, so line navigation ignores line wrap
nmap j gj
nmap k gk

" Copy Paste
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
cmap ,p <C-R>+

nnoremap <s-bs> G
nnoremap <BS> gg

nnoremap <leader>x <c-w>c


vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

"  select pasted text
noremap gV `[v`]

nmap <leader>W :set nowrap!<CR>


" fast closing of html tags
imap ;; </<c-x><c-o><del>

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
noremap <silent> <m-l> <c-w>l
noremap <silent> <m-j> <c-w>j
noremap <silent> <m-k> <c-w>k
noremap <silent> <m-h> <c-w>h

noremap <silent> <m-s-l> :bn<cr>
noremap <silent> <m-s-j> :tabp<cr>
noremap <silent> <m-s-k> :tabn<cr>
noremap <silent> <m-s-h> :bp<cr>

noremap <silent> <leader>tc :tabc<cr>
noremap <silent> <leader>tn :tabnew<cr>



" window resizing
map <c-j> <C-W>10-
map <c-k> <C-W>10+
map <c-l> <c-w>10<
map <c-h> <c-w>10>

" tag bindings
nmap <leader>o <c-w>g}

map <c-s> <esc>:w<cr>
imap <c-s> <esc>:w<cr>a

" delete word after cursor in insert mode
inoremap <c-s-l> <c-o>dw

inoremap <m-;> <esc>A;<esc>
nnoremap <m-;> A;<esc>


nmap <leader><F4> :call UpdateTags()<cr>

" unmark search matches
nmap <silent> ,/ :nohlsearch<CR>

" Refactor names easily (hit <leader>s on the word you'd like to rename





nnoremap <Leader>[ :SubstituteCase/\c<c-R><c-w>/<c-r><c-w>/g<left><left>
nnoremap <Leader>] :%SubstituteCase/\c<c-R><c-w>/<c-r><c-w>/g<left><left>








" reformat html -> each tag on own row
nmap <leader><F3> :%s/<[^>]*>/\r&\r/g<cr>gg=G:g/^$/d<cr><leader>/

inoremap <c-space> <C-x><C-o>

nmap <leader>l :lnext<cr>
nmap <leader>h :lprevious<cr>
" ------
" - Mappings: folding
" ------


" Toggle folds
"nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>zz
"vnoremap <Space> zf


" ------
" - Mappings: Plugins
" ------

" Don't run messdetector on save (default = 1)
let g:phpqa_messdetector_autorun = 1

" Don't run codesniffer on save (default = 1)
let g:phpqa_codesniffer_autorun = 1

nmap <leader>gg :GitGutterToggle<cr>
nmap <leader>gn :GitGutterNextHunk<cr>
nmap <leader>gN :GitGutterPrevHunk<cr>
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

"autocmd FileType javascript noremap <buffer> <leader>f :call JsBeautify()<cr>
"autocmd FileType javascript vnoremap <buffer> <leader>f :call RangeJsBeautify()<cr>
" for html
"autocmd FileType html noremap <buffer> <leader>f :call HtmlBeautify()<cr>
"autocmd FileType html vnoremap <buffer> <leader>f :call RangeHtmlBeautify()<cr>
" for css or scss
"autocmd FileType css noremap <buffer> <leader>f :call CSSBeautify()<cr>
"autocmd FileType css vnoremap <buffer> <leader>f :call RangeCSSBeautify()<cr>

"namespace plugin
"inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>
noremap <Leader>u :call PhpInsertUse()<CR>
"inoremap <Leader>e <C-O>:call PhpExpandClass()<CR>
noremap <Leader>e :call PhpExpandClass()<CR>

nmap <leader>; :TagbarToggle<cr>

nmap <leader>gw :Gwrite<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gp :!git push<cr>

nmap <leader>f :CtrlPMixed<cr>
nmap <leader>d :CtrlPBuffer<cr>
nmap <leader>s :CtrlPTag<cr>
nmap <leader>, :CtrlP<cr>
"nmap <Leader><Leader> V

nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>N :NERDTreeFind<cr>

" -t all text files
" -f follow symlinks
" -S smart case
nnoremap <leader>a :Ag! --ignore=tags -t -f -S<space>
nnoremap <leader>A :Ag! --ignore=tags -t -f -S -u<space>
nnoremap <M-a> :exec "Ag! --ignore=tags -t -f ".expand("<cword>")<cr>
nnoremap <M-g> :exec "Rgrep ".expand("<cword>")<cr>

map <leader><enter> :Mru<cr>

nnoremap <silent> <Leader>y :YRShow<CR>

inoremap <M-p> <ESC>:call pdv#DocumentCurrentLine()<CR>
nnoremap <M-p> :call pdv#DocumentCurrentLine()<CR>
nnoremap <M-P> :call pdv#DocumentWithSnip()<CR>

let g:vdebug_options = {
\ 'path_maps': {"/var/www/wirkaufens": "/home/jmollowitz/git/wirkaufens",
\ "/var/www": "/home/jmollowitz/git/core/application"
\},
\ 'server': '0.0.0.0',
\ 'port': '9000',
\    "timeout" : 20,
\    "on_close" : 'detach',
\    "break_on_open" : 1,
\    "ide_key" : '',
\    "debug_window_level" : 0,
\    "debug_file_level" : 0,
\    "debug_file" : "",
\    "watch_window_style" : 'expanded',
\    "marker_default" : '⬦',
\    "marker_closed_tree" : '▸',
\    "marker_open_tree" : '▾'
\}

let g:UltiSnipsExpandTrigger="<m-j>"
let g:UltiSnipsJumpForwardTrigger="<m-j>"
let g:UltiSnipsJumpBackwardTrigger="<m-k>"

let g:sparkupExecuteMapping='<m-i>'
let g:sparkupNextMapping = '<m-o>'

let g:easytags_by_filetype = ''
let g:easytags_async=1
let g:easytags_dynamic_files = 1
let g:easytags_on_cursorhold = 1
let g:easytags_events = ['BufWritePost']
"milliseconds
let g:easytags_updatetime_min = 60000
let g:easytags_auto_highlight = 0

"let g:daylight_morning_color_gvim = "Tomorrow"
"let g:daylight_afternoon_color_gvim = "solarized"
"let g:daylight_evening_color_gvim = "ir_dark"
"let g:daylight_late_color_gvim = "jellybeans"

"let g:daylight_morning_color_term = "Tomorrow"
"let g:daylight_afternoon_color_term = "mayansmoke"
"let g:daylight_evening_color_term = "Tomorrow-Night"
"let g:daylight_late_color_term = "jellybeans"

"let g:daylight_morning_hour = 9
"let g:daylight_afternoon_hour = 12
"let g:daylight_evening_hour = 16
"let g:daylight_late_hour = 18
"
let g:ycm_complete_in_comments = 1
let g:ycm_min_num_of_chars_for_completion = 2


let g:vim_php_refactoring_default_property_visibility = 'private'
let g:vim_php_refactoring_default_method_visibility = 'private'

let g:vim_php_refactoring_auto_validate_visibility = 1

" Enable omni completion.
set omnifunc=syntaxcomplete#Complete


" ====================
" = Custom functions
" ====================

function! UpdateTags()
    let cwd = getcwd()
    let tagfilename = cwd . "/tags"
    let cmd = 'ctags --fields=+aimS --languages=php -R  --totals=yes --tag-relative=yes --exclude="*.html" --exclude="*/cache/*" --exclude=".svn" --exclude=".git" --exclude="*t3*" --exclude="*Twig*" --exclude="*typo3*" -f '.tagfilename.' --PHP-kinds=+cf-v --regex-PHP="/abstract\s+class\s+([^ ]+)/\1/c/" --regex-PHP="/interface\s+([^ ]+)/\1/c/" --regex-PHP="/^[ \t]*trait[ \t]+([a-z0_9_]+)/\1/t,traits/i" --regex-PHP="/(public\s+|static\s+|abstract\s+|protected\s+|private\s+)function\s+\&?\s*([^ (]+)/\2/f/"'
    let resp = system(cmd)
    echo resp
endfunction


function! FormatPHPLineLength()
    let l:currentLine = getline('.')
    let l:isFunctionCallOrDefinitionOrArray = l:currentLine =~ ',' || l:currentLine =~ ';' || l:currentLine =~ ' array(' || l:currentLine =~ '(['
    let l:isConditional = l:currentLine =~ '\s*&&' || l:currentLine =~ ' and ' || l:currentLine =~ '\s*||' || l:currentLine =~ ' or ' || l:currentLine =~ '\s*?'

    normal! $
    normal! ma
    if l:isConditional
        normal! F)
    elseif l:isFunctionCallOrDefinitionOrArray
        if l:currentLine =~ ';'
            normal! h
        else
            normal! Jh
        endif
    endif

    execute "normal! i\n"
    normal! mb
    normal! k

    if l:isConditional
        :s/\(\s*&&\| and \|\s*||\| or \| ?\| :\)/\r\1/g
    elseif l:isFunctionCallOrDefinitionOrArray
        execute "normal! 0f(a\n"
        if l:currentLine =~ ','
            :s/,\s/,\r/g
        endif
    endif
    'b
    normal! V
    'a
    normal! =
endfunction

nmap <leader>i :call FormatPHPLineLength()<cr>



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
    exe "normal! O$ = $this->" . name . "(" . params . ");"
    ?function
    /{
    %
    exe "normal! O"
    exe "normal! oprivate function " . name ."(" . params . ")"
    exe "normal! mb"
    exe "normal! o\{"
    exe "normal! oreturn ;"
    exe "normal! o\}"
    normal kP
    'b
endfunction

" call function by:
"vmap <leader>em :call ExtractMethod()<cr>

function! ExtractVoidMethod() range
    normal gvd
    exe "normal! ma"
    let name = inputdialog("name of new method")
    let params = inputdialog("parameters separated by ,")
    exe "normal! O$this->" . name . "(" . params . ");"
    ?function
    /{
    %
    exe "normal! O"
    exe "normal! oprivate function " . name ."(" . params . ")"
    exe "normal! mb"
    exe "normal! o\{"
    normal kp
    exe "normal! o\}"
    'b
endfunction

" call function by:
vmap <leader>vem :call ExtractVoidMethod()<cr>


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

function! SwitchBetweenPhpunitAndClasses()
    let f = bufname("%")
    if f =~ '.php'
        if f =~  '/Tests/' && f =~ 'Test\.php'
            let filename = substitute(substitute(f, '/Tests/', '', ''), 'Test.php', '.php', '')
            if !filereadable(filename)
                let new_dir = substitute(filename, '/\w\+\.php', '', '')
                exe ":!mkdir -p ".new_dir
            endif
            exe ":e ".filename
        elseif f !~ 'Test\.php'
            let filename = substitute(substitute(f, 'Bundle/', 'Bundle/Tests/', ''), '.php', 'Test.php', '')
            if !filereadable(filename)
                let new_dir = substitute(filename, '/\w\+Test\.php', '', '')
                exe ":!mkdir -p ".new_dir
            endif
            exe ":e ".filename
        else
            echom "Could not switch because needed patterns not matched."
        endif
    endif
endfunction

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

function! SwitchBetweenFiles1(fileExtension, firstDirBeginning, secondDirBeginning, filenameAddition)
    let f = bufname("%")
    if f =~ '.'.a:fileExtension
        if f =~ a:firstDirBeginning && f =~ a:filenameAddition.'\.'.a:fileExtension
            let filename = substitute(substitute(f, a:firstDirBeginning, 'Bundle/', ''), a:filenameAddition, '', '')
            if !filereadable(filename)
                let new_dir = substitute(filename, '/\w\+\.'.a:fileExtension, '', '')
                exe ":!mkdir -p ".new_dir
            endif
            exe ":e ".filename
        elseif f =~ a:secondDirBeginning && f !~ a:filenameAddition.'\.'.a:fileExtension
            let filename = substitute(substitute(f, a:secondDirBeginning, a:firstDirBeginning, ''), '.'.a:fileExtension, a:filenameAddition.'.'.a:fileExtension, '')
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

"nmap <leader>tu :call SwitchBetweenPhpunitAndClasses()<cr>
nmap <leader>tu :call SwitchBetweenFiles1('php', 'Bundle/Tests/', 'Bundle/', 'Test')<cr>
"nmap <leader>tf :call SwitchBetweenFiles('php', 'tests/functional/', 'src/', 'Cept')<cr>
"nmap <leader>ta :call SwitchBetweenFiles('php', 'tests/acceptance/', 'src/', 'Cept')<cr>
nmap <leader>tsu <c-w>v:call SwitchBetweenFiles1('php', 'Bundle/Tests/', 'Bundle/', 'Test')<cr>
"nmap <leader>tsf <c-w>v:call SwitchBetweenFiles('php', 'tests/functional/', 'src/', 'Cept')<cr>
"nmap <leader>tsa <c-w>v:call SwitchBetweenFiles('php', 'tests/acceptance/', 'src/', 'Cept')<cr>



" ====================
" = Auto commands
" ====================


autocmd FileType php map <buffer> <c-s> <esc>:w<cr>
autocmd FileType html setfiletype html.twig
nmap <leader><F8> <esc>:w<cr>:Phpmd<cr>
nmap <leader><F9> <esc>:w<cr>:Phpcs<cr>
nmap <M-f> <esc>:w<cr>:silent !phpcbf --standard=Symfony2 %<cr>:e<cr>
nmap <M-s> <esc>ma:w<cr>:!php-cs-fixer -qn --level=symfony fix %<CR>:!phpcbf --standard=Symfony2 %<cr>:e<cr>'a:e<CR>
nmap <leader>w :let g:phpqa_open_loc = 0<cr>:let g:phpqa_messdetector_autorun = 0<cr>:let g:phpqa_codesniffer_autorun = 0<cr>:w<cr>:let g:phpqa_messdetector_autorun = 1<cr>:let g:phpqa_codesniffer_autorun = 1<cr>:let g:phpqa_open_loc = 1<cr>

"Automatically delete trailing DOS-returns and whitespace
autocmd BufRead * silent! %s/[\r \t]\+$//
autocmd BufEnter *.php :%s/[ \t\r]\+$//e





" ====================
" = Settings: Performance
" ====================





set nocursorcolumn
set nocursorline
"set cursorline
set lazyredraw
"syntax sync minlines=100
"set synmaxcol=200
set scrolljump=5
let html_no_rendering=0
"let php_sql_query=1
let php_noShortTags=1
"let php_folding=1
"let php_htmlInStrings=1
let g:PHP_default_indenting=0
set foldopen=block,hor,mark,percent,quickfix,search,tag,undo,jump

" Protect large files from sourcing and other overhead.
" Files become read only
if !exists("my_auto_commands_loaded")
  let my_auto_commands_loaded = 1
  " Large files are > 10M
  " Set options:
  " eventignore+=FileType (no syntax highlighting etc
  " assumes FileType always on)
  " noswapfile (save copy of file)
  " bufhidden=unload (save memory when other file is viewed)
  " buftype=nowritefile (is read-only)
  " undolevels=-1 (no undo possible)
  let g:LargeFile = 1024 * 1024 * 10
  augroup LargeFile
    autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 | else | set eventignore-=FileType | endif
    augroup END
  endif



so ~/.nonpublic-vimprojects
