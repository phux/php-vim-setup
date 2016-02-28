" Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

if &compatible
    set nocompatible               " Be iMproved
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'

Plug 'vim-scripts/tabbar'

Plug 'henrik/vim-indexed-search'
Plug 'scrooloose/nerdtree' , { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'rking/ag.vim'
Plug 'vim-scripts/grep.vim'
Plug 'bling/vim-airline'
Plug 'SirVer/ultisnips' | Plug 'phux/vim-snippets'

Plug 'jiangmiao/auto-pairs'

Plug 'amiorin/vim-project'
Plug 'kien/ctrlp.vim'

Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tobyS/pdv' | Plug 'tobyS/vmustache'
Plug 'ap/vim-css-color', { 'for': ['html', 'php', 'css'] }
Plug 'YankRing.vim'
Plug 'tristen/vim-sparkup'
Plug 'L9'
Plug 'mru.vim'
Plug 'moll/vim-bbye'
Plug 'Lokaltog/vim-easymotion'
Plug 'matchit.zip'
Plug 'vim-scripts/keepcase.vim'
Plug 'junegunn/vim-easy-align'

Plug 'nelstrom/vim-qargs'

"colorschemes
Plug 'ScrollColors'
Plug 'sjl/badwolf'
Plug 'twerth/ir_black'
Plug 'flazz/vim-colorschemes'

Plug 'Shougo/neocomplete.vim'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

Plug 'phux/vim-phpqa'
"Plug 'vim-scripts/vawa.vim'
"Plug 'scrooloose/syntastic'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'shawncplus/phpcomplete.vim'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'joonty/vdebug'
" php 5.5 syntax highlight
Plug '2072/vim-syntax-for-PHP'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'alvan/vim-php-manual'


Plug 'mitsuhiko/vim-jinja'
Plug 'evidens/vim-twig'

Plug 'elzr/vim-json' , { 'for': ['html', 'twig'] }

"Plug 'Yggdroot/indentLine'

Plug 'pangloss/vim-javascript' , { 'for': ['javascript', 'html'] }
Plug 'jelera/vim-javascript-syntax' , { 'for': ['javascript', 'html'] }
Plug 'maksimr/vim-jsbeautify' , { 'for': ['javascript', 'html'] }
Plug 'einars/js-beautify' , { 'for': ['javascript', 'html'] }
Plug 'ternjs/tern_for_vim' , { 'for': ['javascript', 'html'] }
Plug 'moll/vim-node' , { 'for': ['javascript', 'html'] }
set runtimepath^=~/.vim/bundle/node
nnoremap <silent> <leader>e :call JSFormat()<cr>

function! JSFormat()
  " Preparation: save last search, and cursor position.
  let l:win_view = winsaveview()
  let l:last_search = getreg('/')
  let fileWorkingDirectory = expand('%:p:h')
  let currentWorkingDirectory = getcwd()
  execute ':lcd' . fileWorkingDirectory
  execute ':silent' . '%!esformatter'
  if v:shell_error
    undo
    "echo "esformatter error, using builtin vim formatter"
    " use internal formatting command
    execute ":silent normal! gg=G<cr>"
  endif
  " Clean up: restore previous search history, and cursor position
  execute ':lcd' . currentWorkingDirectory
  call winrestview(l:win_view)
  call setreg('/', l:last_search)
endfunction

Plug 'rodjek/vim-puppet'

Plug 'editorconfig/editorconfig-vim'

Plug 'suan/vim-instant-markdown' , { 'for': 'markdown' }

Plug 'wakatime/vim-wakatime'

Plug 'vim-scripts/indentpython.vim'

call plug#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 "NeoBundleCheck


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
au FocusLost * silent! wa


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
" Maps Alt-[s.v] to horizontal and vertical split respectively
map <silent> <m-s> :split<CR>
map <silent> <m-v> :vsplit<CR>

" Set the command window height to 1 lines
set cmdheight=1

" This makes more sense than the default of 1
set winminheight=1

" no welcome screen
set shortmess+=filmnrxoOtT

" Always display the status line, even if only one window is displayed
set laststatus=2

set t_Co=256

" highlight current line
"set cuc cul


set autoindent
set smartindent
set smarttab
set softtabstop=4
set nojoinspaces
set tabstop=4
set shiftround
set shiftwidth=4
set expandtab

set formatoptions+=or

set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. 

set whichwrap+=<,>,[,],h,l
"set nostartofline
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
set wildmode=list:longest,full

set errorformat+=%*[\"]%f%*[\"]\\,\ line\ %l:\ %m
set completeopt=longest
"set complete=.,w,b,u,t,i
" Limit popup menu height
set pumheight=15

filetype plugin indent on

" ignore whitespaces when vimdiff'ing
set diffopt=iwhite




" ====================
" = Settings: Gui
" ====================





syntax on

if has("gui_running")
    "set background=light
    "colorscheme solarized
    "colorscheme grb256

    "colorscheme zenburn
    "colorscheme wombat256mod
    "colorscheme getafe
    "colorscheme pyte
    "colorscheme github
    "colorscheme distinguished
    colorscheme ir_dark
    "colorscheme busybee
    "colorscheme vilight
    "colorscheme jelleybeans
    "colorscheme caramel
    "colorscheme symfony
    "colorscheme sonofobsidian

    set guicursor=a:block-Cursor
    ""cursors dont blink!
    set guicursor+=n-v:blinkon0
else
    set background=dark
    colorscheme slate
endif
"
"let g:daylight_morning_color_gvim = "solarized"
"let g:daylight_afternoon_color_gvim = "solarized"
"let g:daylight_evening_color_gvim = "ir_dark"
"let g:daylight_late_color_gvim = "ir_dark"

"let g:daylight_morning_color_term = "mayansmoke"
"let g:daylight_afternoon_color_term = "mayansmoke"
"let g:daylight_evening_color_term = "mayansmoke"
"let g:daylight_late_color_term = "mayansmoke"

"let g:daylight_morning_hour = 8
"let g:daylight_afternoon_hour = 12
"let g:daylight_evening_hour = 16
"let g:daylight_late_hour = 22





" ====================
" = Settings: Plugins
" ====================





let g:vim_json_syntax_conceal = 0
let g:project_use_nerdtree = 1
let g:project_enable_welcome = 1
set rtp+=~/.vim/bundle/vim-project/
call project#rc("~/git")

let g:UltiSnipsSnippetsDir = '~/.vim/plugged/vim-snippets/UltiSnips/'

let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

let g:PHP_removeCRwhenUnix = 1
let g:PHP_vintage_case_default_indent = 1

let g:pdv_template_dir = $HOME."/.vim/pdv_templates_snip"
"let g:pdv_cfg_Package = ""
"let g:pdv_cfg_Version = ""
"let g:pdv_cfg_Author = ""
"let g:pdv_cfg_Copyright = ""

let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'}

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

let NERDTreeShowBookmarks = 1
let NERDTreeQuitOnOpen=1

let g:ctrlp_use_caching = 1
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor\ --ignore=./tags

    "let g:ctrlp_user_command = 'ag  --ignore tags --ignore /cache/ %s -l --nocolor -g ""'
    let g:ctrlp_user_command = 'ag %s --ignore=./tags -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif
"let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:40'

let g:phpqa_codesniffer_args = "--standard=Symfony2"


let g:phpcomplete_complete_for_unknown_classes = 0
let g:phpcomplete_search_tags_for_variables = 0
let g:phpcomplete_parse_docblock_comments = 1
let g:phpcomplete_enhance_jump_to_definition = 1

"let g:ycm_complete_in_comments = 0




"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Set minimum syntax keyword length.
"let g:neocomplete#sources#syntax#min_keyword_length = 2
"let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'


"let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#max_list = 15
let g:neocomplete#force_overwrite_completefunc = 1

" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
  "return neocomplete#close_popup() . "\<CR>"
"endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplete#close_popup()
"inoremap <expr><C-e>  neocomplete#cancel_popup()
inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" Enable heavy omni completion.



" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'


" Enable heavy omni completion.
"if !exists('g:neocomplete#sources#omni#input_patterns')
    "let g:neocomplete#sources#omni#input_patterns = {}
"endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'

"nnoremap <leader>m :NeoCompleteToggle<cr>

" vdebug
highlight DbgBreakptLine ctermbg=none ctermfg=none
"highlight DbgBreakptSign ctermbg=none ctermfg=10

"highlight DbgCurrentLine ctermbg=none ctermfg=none
"highlight DbgCurrentSign ctermbg=none ctermfg=red


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
noremap <silent> <m-l> <c-w>l
noremap <silent> <m-j> <c-w>j
noremap <silent> <m-k> <c-w>k
noremap <silent> <m-h> <c-w>h

noremap <silent> <leader>tn :ptn<cr>
noremap <silent> <leader>tp :ptp<cr>
noremap <silent> <leader>tc :pc<cr>



" window resizing
"map <c-s-j> <C-W>10-
"map <c-s-k> <C-W>10+
"map <c-s-l> <c-w>10<
"map <c-s-h> <c-w>10>
"noremap <silent> <m-s-j> :tabp<cr>
"noremap <silent> <m-s-k> :tabn<cr>
"noremap <silent> <m-s-h> :bp<cr>
"noremap <silent> <m-s-l> :bn<cr>
set winheight=30
nnoremap <silent> <c-k> :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <c-j> :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <c-h> :exe "vertical resize " . (winwidth(0) * 4/5)<CR>
nnoremap <silent> <c-l> :exe "vertical resize " . (winwidth(0) * 5/4)<CR>

" tag bindings
nmap <leader>o <c-w>g}

map <c-s> <esc>:w<cr>
imap <c-s> <esc>:w<cr>a

" delete word after cursor in insert mode
inoremap <c-s-l> <c-o>dw

inoremap <m-;> <esc>A;<esc>
nnoremap <m-;> A;<esc>

nnoremap <f9> /\v^[<\|=>]{7}( .*\|$)<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Allow using the repeat operator with a visual selection (!)
" http://stackoverflow.com/a/8064607/127816
vnoremap . :normal .<CR>

nmap <leader><F4> :call UpdateTags()<cr>
nmap <leader><F6> :call UpdateTagsJs()<cr>

" unmark search matches
nmap <silent> ,/ :nohlsearch<CR>

" Refactor names easily (hit <leader>[ or <leader>] with cursor on the word you'd like to rename

nnoremap <Leader>[ :%s/<c-r><c-w>/<c-r><c-w>/g<left><left>
nnoremap <Leader>] :%SubstituteCase/\c<c-R><c-w>/<c-r><c-w>/g<left><left>

" reformat html -> each tag on own row
nmap <leader><F3> :%s/<[^>]*>/\r&\r/g<cr>gg=G:g/^$/d<cr><leader>/
vmap <Leader>j !python -m json.tool<CR>

inoremap <c-space> <C-x><C-o>

nmap <leader>l :lnext<cr>
nmap <leader>h :lprevious<cr>

nnoremap <Tab> :bnext<CR>:redraw<cr>
nnoremap <S-Tab> :bprevious<CR>:redraw<cr>

nnoremap <c-tab> :b#<cr>

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
let g:gitgutter_max_signs = 1000

nnoremap <silent><leader>rcd :call PhpCsFixerFixDirectory()<CR>
"nnoremap <silent><m-s> <esc>:w<cr>:call PhpCsFixerFixFile()<CR>:!phpcbf --standard=Symfony2 %<cr>:e<cr>

vmap <Enter> <Plug>(EasyAlign)

nmap <leader>tt :TbToggle<cr>

"namespace plugin
noremap <Leader>u :call PhpInsertUse()<CR>
noremap <Leader>e :call PhpExpandClass()<CR>

nmap <leader>; :TagbarToggle<cr>

nmap <leader>gw :Gwrite<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gb :Gbrowse<cr>
nmap <leader>gp :!git push<cr>

nmap <leader>gv :Gitv<cr>

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
nnoremap <leader>a :Ag! --php<space>
nnoremap <leader>A :Ag! -u --php<space>

let g:ag_prg="ag --vimgrep --smart-case --ignore-dir=app/cache --ignore=./tags"
nnoremap <M-a> :exec "Ag! -f ".expand("<cword>")." --php"
nnoremap <M-g> :exec "Rgrep ".expand("<cword>")<cr>

map <leader><enter> :Mru<cr>

nnoremap <silent> <Leader>y :YRShow<CR>

inoremap <M-p> <ESC>:call pdv#DocumentWithSnip()<CR>
nnoremap <M-P> :call pdv#DocumentWithSnip()<CR>

let g:UltiSnipsExpandTrigger="<m-j>"
let g:UltiSnipsJumpForwardTrigger="<m-j>"
let g:UltiSnipsJumpBackwardTrigger="<m-k>"

let g:sparkupExecuteMapping='<m-i>'
let g:sparkupNextMapping = '<m-o>'

let g:gitgutter_realtime = 0

"let g:easytags_by_filetype = ''
let g:easytags_async=1
let g:easytags_dynamic_files = 1
let g:easytags_on_cursorhold = 1

set tags=tags;/
" write to working dir instead of buffer dir.
set cpo+=d
"let g:easytags_events = []
"let g:easytags_cmd = 'ctags --fields=+aimS --languages=php -R  --totals=yes --tag-relative=yes --PHP-kinds=+cf-v --regex-PHP="/abstract\s+class\s+([^ ]+)/\1/c/" --regex-PHP="/interface\s+([^ ]+)/\1/c/" --regex-PHP="/^[ \t]*trait[ \t]+([a-z0_9_]+)/\1/t,traits/i" --regex-PHP="/(public\s+|static\s+|abstract\s+|protected\s+|private\s+)function\s+\&?\s*([^ (]+)/\2/f/"'
"let g:easytags_cmd = 'ctags --fields=+aimS --PHP-kinds=+cf --languages=php -R  --totals=yes --tag-relative=yes'
"let g:easytags_languages = {
"\   'php': {
"\     'cmd': 'ctags --fields=+aimS --PHP-kinds=+cf --languages=php -R  --totals=yes --tag-relative=yes',
"\     'args': [],
"\     'fileoutput_opt': '-f',
"\     'stdout_opt': '-f-'
"\   }
"\}
"let g:easytags_cmd = 'ctags --languages=php -R  --totals=yes --tag-relative=yes'
"let g:easytags_cmd = 'phpctags  --recurse=yes '
let g:easytags_events = ['BufWritePost']
let g:easytags_syntax_keyword = 'always'
"milliseconds
let g:easytags_updatetime_min = 60000
let g:easytags_auto_highlight = 0
nmap @@x !%xmllint --format --recover -

let g:php_cs_fixer_enable_default_mapping = 0
"let g:php_cs_fixer_config = "sf23"
"let g:php_cs_fixer_fixers_list = "align_double_arrow,align_equals,multiline_spaces_before_semicolon,ordered_use,short_array_syntax,extra_empty_lines"
"let g:php_cs_fixer_level = 'symfony'
"let g:php_cs_fixer_path = "php-cs-fixer" " define the path to the php-cs-fixer.phar

let g:vim_php_refactoring_default_property_visibility = 'private'
let g:vim_php_refactoring_default_method_visibility = 'private'

let g:vim_php_refactoring_auto_validate_visibility = 1
let g:vim_php_refactoring_phpdoc = "pdv#DocumentCurrentLine"

let g:vim_php_refactoring_use_default_mapping = 0
nnoremap <Leader>rlv :call PhpRenameLocalVariable()<CR>
nnoremap <Leader>rcv :call PhpRenameClassVariable()<CR>
nnoremap <Leader>rrm :call PhpRenameMethod()<CR>
nnoremap <Leader>reu :call PhpExtractUse()<CR>
vnoremap <Leader>reco :call PhpExtractConst()<CR>
nnoremap <Leader>rep :call PhpExtractClassProperty()<CR>
vnoremap <Leader>rem :call PhpExtractMethod()<CR>
nnoremap <Leader>rnp :call PhpCreateProperty()<CR>
nnoremap <Leader>rdu :call PhpDetectUnusedUseStatements()<CR>
vnoremap <Leader>r== :call PhpAlignAssigns()<CR>
nnoremap <Leader>rsg :call PhpCreateSettersAndGetters()<CR>
nnoremap <Leader>rda :call PhpDocAllWithoutSnippets()<CR>
function! PhpDocAllWithoutSnippets()
    let l:tempDir = g:pdv_template_dir
    let g:pdv_template_dir = $HOME."/.vim/pdv_templates"
    let g:vim_php_refactoring_phpdoc = 'pdv#DocumentCurrentLine'

    :call PhpDocAll()
    let g:pdv_template_dir = l:tempDir
endfunction

nmap <leader>bd :Bdelete<cr>
nmap <Leader>bg :call SwitchLightAndDarkTheme()<cr>

function! SwitchLightAndDarkTheme()
    if &background == "dark"
        :colorscheme solarized
        :let &background =  "light"
    else
        :colorscheme grb256
        :let &background =  "dark"
    endif
endfunction

" ====================
" = Custom functions
" ====================

function! UpdateTags()
    let cwd = getcwd()
    let tagfilename = cwd . "/tags"

    let cmd = 'ctags --fields=+aimS  --PHP-kinds=+cf --languages=php -R  --tag-relative=yes --exclude=.svn --exclude=.git --exclude="*/_*cache/*" --exclude="*/_*logs{0,1}/*" -f '.tagfilename
    "let cmd = 'ctags --recurse --languages=PHP --exclude=.svn --exclude=.git --exclude="*/_*cache/*" --exclude="*/_*logs{0,1}/*" --exclude="*/_*data/*" --totals=yes --tag-relative=yes --PHP-kinds=+cf --regex-PHP=/abstract class ([^ ]*)/\1/c/    --regex-PHP=/interface ([^ ]*)/\1/c/ --regex-PHP=/trait ([^ ]*)/\1/c/ --regex-PHP=/(public |static |abstract |protected |private )+ function +([^ \(]*)/\2/f/ -f '.tagfilename
    let resp = system(cmd)
    echo 'done'
endfunction

function! UpdateTagsJs()
    let cwd = getcwd()
    let tagfilename = cwd . "/tags"
    let cmd = 'ctags -R -f '.tagfilename
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
"noremap <silent> <leader>k :call OpenPHPManual(expand('<cword>'))<CR>
let g:php_manual_online_search_shortcut = '<leader>k'


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
"nmap <leader>tu :call SwitchBetweenFiles1('php', 'Bundle/Tests/', 'Bundle/', 'Test')<cr>
nmap <leader>tu :call SwitchBetweenFiles('php', 'tests/', 'library/', 'Test')<cr>
"nmap <leader>tf :call SwitchBetweenFiles('php', 'tests/functional/', 'src/', 'Cept')<cr>
"nmap <leader>ta :call SwitchBetweenFiles('php', 'tests/acceptance/', 'src/', 'Cept')<cr>
"nmap <leader>tsu <c-w>v:call SwitchBetweenFiles1('php', 'Bundle/Tests/', 'Bundle/', 'Test')<cr>
nmap <leader>tsu <c-w>v:call SwitchBetweenFiles('php', 'tests/', 'library/', 'Test')<cr>
"nmap <leader>tsf <c-w>v:call SwitchBetweenFiles('php', 'tests/functional/', 'src/', 'Cept')<cr>
"nmap <leader>tsa <c-w>v:call SwitchBetweenFiles('php', 'tests/acceptance/', 'src/', 'Cept')<cr>


function! PrependTicketNumber()
    normal gg
    let l:branch = system("echo $(git branch | grep '*')")
    let l:ticketNumber = '['.substitute(l:branch, '\* \(.*\)', '\1', '').'] '
    exe "normal I".l:ticketNumber
    exe "normal ggJx"
    :startinsert!
endfunction

" ====================
" = Auto commands
" ====================


" insert ticket number into commit msg
autocmd FileType gitcommit nmap <buffer> <leader>w :call PrependTicketNumber()<cr>
au BufEnter * if &ft ==# 'gitcommit' | :call PrependTicketNumber() | endif

" Enable omni completion.
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"

autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal textwidth=79
autocmd FileType python setlocal expandtab
autocmd FileType python setlocal autoindent
autocmd FileType python setlocal fileformat=unix

let python_highlight_all=1

autocmd FileType php map <buffer> <c-s> <esc>:w<cr>

"nmap <M-f> <esc>:w<cr>:silent !phpcbf --standard=Symfony2 %<cr>:e<cr>
nmap <M-f> <esc>:w<cr>:silent !fmt.phar --psr2 --smart_linebreak_after_curly %<cr>
"nmap <M-s> <esc>ma:w<cr>:!php-cs-fixer -qn --level=symfony --config=sf23 fix % --fixers=align_double_arrow,multiline_spaces_before_semicolon,ordered_use,short_array_syntax<CR>:!phpcbf --standard=Symfony2 %<cr>:e<cr>'a:e<CR>
"
nmap <leader>w :w<cr>
autocmd FileType php nmap <buffer> <leader>w :let g:phpqa_messdetector_autorun = 0<cr>:let g:phpqa_codesniffer_autorun = 0<cr>:w<cr>:let g:phpqa_messdetector_autorun = 1<cr>:let g:phpqa_codesniffer_autorun = 1<cr>

" delete trailing DOS-returns and whitespace
"autocmd FileType php nmap <leader><s-w> :%s/[ \t\r]\+$//e


"au BufRead,BufNewFile *.twig set syntax=jinja
au BufNewFile,BufRead *.html,*.html.twig,*.htm,*.shtml,*.stm,*.phtml set ft=html.php.javascript





" ====================
" = Settings: Performance
" ====================




set nocursorcolumn
set lazyredraw
set scrolljump=5
set scrolloff=5
let g:PHP_default_indenting=0


nnoremap <leader>rei :call ExtractInterface()<cr>
"nnoremap <leader>recl :call ExtractClass()<cr>

function! ExtractInterface()
    let l:file_path = expand('%:p:h')
    let l:baseFile = expand('%')
    let l:name = inputdialog("Name of new interface:")
    exe "normal Gointerface " . name . "\<Cr>{}\<c-o>i\<cr>"
    :g/const/ :normal yyGP
    :g/public \$/ :normal yyGP
    :g/public function \(__construct\)\@!/ :normal yyGP$a;
    exe "normal! G?{\<cr>"
    normal "adGdd
    exe ":e ".l:file_path."/".l:name.".php"
    exe ":w"
    exe "normal iinterfacen\<m-j>\<cr>"
    exe "normal! ?interface\<cr>jdG"
    normal "ap
    exe ":e ".l:baseFile
    exe "normal! gg/{\<cr>k"
    if getline('.') =~ ' implements '
        let l:interfaceImplementation = "A, ".l:name
    else
        let l:interfaceImplementation = "$a implements ".l:name
    endif
    exe "normal! ".l:interfaceImplementation
    exe ":w"
endfunction

function! Replace(bang, replace)
    let search = '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    execute 'Ag '.expand('<cword>')
    execute 'Qargs'
    let replace = escape(a:replace, '/\&~')
    let flag = 'cge'
    execute 'argdo %s/' . search . '/' . replace . '/' . flag
endfunction
command! -nargs=1 -bang Replace :call Replace(<bang>0, <q-args>)
nnoremap <Leader>rip :call Replace(0, input('Replace '.expand('<cword>').' with: ', expand('<cword>')))<CR>

"let g:vdebug_options['port'] = 9005

so ~/.nonpublic-vimprojects

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

hi SpecialKey       guifg=#343434     guibg=NONE     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE


