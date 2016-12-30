" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if &compatible
    set nocompatible
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'

Plug 'vim-scripts/tabbar'

Plug 'henrik/vim-indexed-search'
Plug 'scrooloose/nerdtree' , { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'majutsushi/tagbar'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'rking/ag.vim'
Plug 'Chun-Yang/vim-action-ag'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'Townk/vim-autoclose'

Plug 'amiorin/vim-project'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-unimpaired'
Plug 'YankRing.vim'
Plug 'L9'
Plug 'mru.vim'
Plug 'moll/vim-bbye'
Plug 'Lokaltog/vim-easymotion'
Plug 'matchit.zip'
Plug 'junegunn/vim-easy-align'
Plug 'godlygeek/tabular'

Plug 'nelstrom/vim-qargs'

Plug 'altercation/vim-colors-solarized'

Plug 'phux/vim-phpqa'
Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'shawncplus/phpcomplete.vim'
Plug 'Shougo/neocomplete.vim'

Plug 'tobyS/pdv' | Plug 'tobyS/vmustache'
Plug 'nishigori/vim-php-dictionary'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'joonty/vdebug'

Plug 'StanAngeloff/php.vim'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'alvan/vim-php-manual'


Plug 'evidens/vim-twig'

" Plug 'editorconfig/editorconfig-vim'
Plug 'suan/vim-instant-markdown'
Plug 'phux/scratch.vim'
Plug 'vitalk/vim-simple-todo'

Plug 'fatih/vim-go'

Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tmux-plugins/vim-tmux'

call plug#end()


" ====================
" = Settings: General
" ====================


set nu " show line numbers
set hidden
" no backups
set nobackup
set nowritebackup
set noswapfile

" write on focus loss
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

" Set the command window height to 1 lines
set cmdheight=1

" This makes more sense than the default of 1
set winminheight=1

" no welcome screen
set shortmess+=filmnrxoOtT

" highlight current line
set cul

" indentation
set nojoinspaces
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab

set formatoptions+=tcqlr

" highlight chars
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. 

" move over lines with following keys
set whichwrap+=<,>,[,],h,l

" ------
" - Search settings
" ------

" Highlight searches
set hlsearch

" " Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" undo
set undofile                " Save undo's after file closes
set undodir=~/.undovim " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000

" Better command-line completion
set wildmenu
" set wildignore+=*.pyc,*.zip,*.gz,*.bz,*.tar,*.jpg,*.png,*.gif,*.avi,*.wmv,*.ogg,*.mp3,*.mov
set wildmode=list:longest,full

" Limit popup menu height
set pumheight=15

" ignore whitespaces when vimdiff'ing
set diffopt=iwhite


set completeopt=longest,menuone


" ====================
" = Settings: Gui
" ====================





if has("gui_running")
    set guifont=Hack\ Regular\ 11

    " set background=light
    set background=dark
    colorscheme solarized

    set guicursor=a:block-Cursor
    ""cursors dont blink!
    set guicursor+=n-v:blinkon0
else
    set background=dark
    " let g:solarized_termcolors=256
    colorscheme solarized
endif





" ====================
" = Settings: Plugins
" ====================

let g:vim_json_syntax_conceal = 0
let g:project_use_nerdtree = 1
let g:project_enable_welcome = 1
set rtp+=~/.vim/bundle/vim-project/
call project#rc("~/code")

let g:PHP_removeCRwhenUnix = 1
let g:PHP_vintage_case_default_indent = 1

let g:pdv_template_dir = $HOME."/.vim/pdv_templates_snip"

" let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'}
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<c-h>'

let g:vim_debug_disable_mappings = 1

let NERDTreeShowBookmarks = 0
let NERDTreeQuitOnOpen=1

let g:ctrlp_use_caching = 1
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s --ignore=./tests -l --nocolor -g ""'
else
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
    let g:ctrlp_prompt_mappings = {
        \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:50'
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:phpcomplete_complete_for_unknown_classes = 0
let g:phpcomplete_relax_static_constraint=0
let g:phpcomplete_search_tags_for_variables = 0
let g:phpcomplete_parse_docblock_comments = 0
let g:phpcomplete_enhance_jump_to_definition = 1

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#max_list = 15
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

noremap <leader>m :NeoCompleteToggle<cr>

" vdebug
highlight DbgBreakptLine ctermbg=none ctermfg=none

let g:vdebug_options = {}
let g:vdebug_options["port"] = 9000
let g:vdebug_keymap = {
\    "run" : "<F5>",
\    "run_to_cursor" : "<F9>",
\    "step_over" : "<F2>",
\    "step_into" : "<F3>",
\    "step_out" : "<F4>",
\    "close" : "<F6>",
\    "detach" : "<F7>",
\    "set_breakpoint" : "<F10>",
\    "get_context" : "<F11>",
\    "eval_under_cursor" : "<F12>",
\    "eval_visual" : "<F8>",
\}

" ====================
" = Mappings
" ====================




" ------
" - Mappings: General
" ------

let mapleader = "\<Space>"

" Edit the vimrc file
nmap <silent> <leader><f5> :e $MYVIMRC<CR>

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
" vmap <c-k> [egv
" vmap <c-j> ]egv

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

nnoremap <silent> <leader>K :exe "resize " . (winheight(0) * 5/4)<CR>
nnoremap <silent> <leader>J :exe "resize " . (winheight(0) * 4/5)<CR>
nnoremap <silent> <leader>H :exe "vertical resize -15"<CR>
nnoremap <silent> <leader>L :exe "vertical resize +15"<CR>

nnoremap c<C-j> :bel sp<cr>
nnoremap c<C-k> :abo sp<cr>
nnoremap c<C-h> :lefta vsp<cr>
nnoremap c<C-l> :rightb vsp<cr>
nnoremap g<C-j> <C-w>j<C-w>_
nnoremap g<C-k> <C-w>k<C-w>_
nnoremap g<C-h> <C-w>h<C-w>_
nnoremap g<C-l> <C-w>l<C-w>_
nnoremap d<C-j> <C-w>j<C-w>c
nnoremap d<C-k> <C-w>k<C-w>c
nnoremap d<C-h> <C-w>h<C-w>c
nnoremap d<C-l> <C-w>l<C-w>c

noremap <silent> <leader>tn :ptn<cr>
noremap <silent> <leader>tp :ptp<cr>
noremap <silent> <leader>tc :pc<cr>


" tag bindings
nmap <leader>o <c-w>g}

" delete word after cursor in insert mode
inoremap <c-s-l> <c-o>dw

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Allow using the repeat operator with a visual selection (!)
" http://stackoverflow.com/a/8064607/127816
vnoremap . :normal .<CR>

" unmark search matches
nmap <silent> ,/ :nohlsearch<CR>

" Refactor names easily (hit <leader>[ or <leader>] with cursor on the word you'd like to rename

nnoremap <Leader>[ :%s/<c-r><c-w>/<c-r><c-w>/g<left><left>
nnoremap <Leader>] :%SubstituteCase/\c<c-R><c-w>/<c-r><c-w>/g<left><left>

" reformat html -> each tag on own row
nmap <leader><F3> :%s/<[^>]*>/\r&\r/g<cr>gg=G:g/^$/d<cr><leader>/

nnoremap <Tab> :bnext<CR>:redraw<cr>
nnoremap <S-Tab> :bprevious<CR>:redraw<cr>

nnoremap <c-tab> :b#<cr>

" ------
" - Mappings: Plugins
" ------


vmap <Enter> <Plug>(EasyAlign)

nmap <leader>tt :TbToggle<cr>

"namespace plugin
let g:php_namespace_sort_after_insert = 1
noremap <Leader>u :call PhpInsertUse()<CR>
noremap <Leader>e :call PhpExpandClass()<CR>

nmap <leader>z :Scratch<cr>

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
nnoremap <leader>a :Ag!<space>

let g:ag_prg="ag --vimgrep --smart-case --ignore=composer.phar"
let g:ag_mapping_message=0
let g:ag_highlight=1
let g:vim_action_ag_escape_chars = '#%.^$*+?()[{\\|'

nnoremap <leader>A :exec "Ag! -f ".expand("<cword>")<cr>

command! -nargs=1 Silent execute ':silent !'.<q-args> | execute ':redraw!'

map <leader><enter> :Mru<cr>

nnoremap <silent> <Leader>y :YRShow<CR>

let g:scratch_top = 1
let g:scratch_persistence_file = '.scratch.vim'
"au FileType scratch setl ts=2 sw=2 fo+=n2a

let g:simple_todo_map_keys = 0
nmap ,i <Plug>(simple-todo-new)
imap ,i <Plug>(simple-todo-new)
nmap ,I <Plug>(simple-todo-new-start-of-line)
imap ,I <Plug>(simple-todo-new-start-of-line)
nmap ,o <Plug>(simple-todo-below)
imap ,o <Plug>(simple-todo-below)
nmap ,O <Plug>(simple-todo-above)
imap ,O <Plug>(simple-todo-above)
nmap ,x <Plug>(simple-todo-mark-as-done)
imap ,x <Plug>(simple-todo-mark-as-done)
nmap ,X <Plug>(simple-todo-mark-as-undone)
imap ,X <Plug>(simple-todo-mark-as-undone)
nmap ,s <Plug>(simple-todo-new-list-item)
imap ,s <Plug>(simple-todo-new-list-item)

nnoremap <leader>h :call pdv#DocumentWithSnip()<CR>


let g:sqlutil_load_default_maps = 0
vnoremap <silent><leader>s <Plug>SQLU_Formatter<CR>

let g:ultisnips_php_scalar_types = 1
let g:UltiSnipsSnippetsDir = '~/.vim/plugged/vim-snippets/UltiSnips/'
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"


let g:vim_php_refactoring_default_property_visibility = 'private'
let g:vim_php_refactoring_default_method_visibility = 'private'
let g:vim_php_refactoring_auto_validate_visibility = 1
let g:vim_php_refactoring_phpdoc = "pdv#DocumentCurrentLine"

let g:vim_php_refactoring_use_default_mapping = 0
nnoremap <Leader>rlv :call PhpRenameLocalVariable()<CR>
nnoremap <Leader>rcv :call PhpRenameClassVariable()<CR>
nnoremap <Leader>rrm :call PhpRenameMethod()<CR>
nnoremap <Leader>reu :call PhpExtractUse()<CR>
vnoremap <Leader>rec :call PhpExtractConst()<CR>
nnoremap <Leader>rep :call PhpExtractClassProperty()<CR>
vnoremap <Leader>rem :call PhpExtractMethod()<CR>
nnoremap <Leader>rnp :call PhpCreateProperty()<CR>
nnoremap <Leader>rdu :call PhpDetectUnusedUseStatements()<CR>
vnoremap <Leader>r== :call PhpAlignAssigns()<CR>
nnoremap <Leader>rsg :call PhpCreateSettersAndGetters()<CR>

nnoremap <leader>c :Commentary<cr>
vnoremap <leader>c :Commentary<cr>

nmap <leader>bd :Bdelete<cr>
nmap <Leader>bg :call SwitchLightAndDarkTheme()<cr>

function! SwitchLightAndDarkTheme()
    if &background == "dark"
        :colorscheme solarized
        :let &background =  "light"
    else
        :colorscheme solarized
        :let &background = "dark"
    endif
endfunction

" ====================
" = Custom functions
" ====================
nmap <silent> <leader>jd :CtrlPTag<cr><c-\>w
function! GetCtagsCommand()
    let cwd = getcwd()
    let tagfilename = cwd . "/.git/tags"

    let cmd = 'ctags --PHP-kinds=+cf-v --languages=php -R --tag-relative=yes --exclude=.svn --exclude=composer.phar --exclude=.git --exclude="*/_*cache/*" --exclude="*/_*logs{0,1}/* --regex-PHP=/abstract class ([^ ]*)/\1/c/    --regex-PHP=/interface ([^ ]*)/\1/c/ --regex-PHP=/trait ([^ ]*)/\1/c/ --regex-PHP=/(public |static |abstract |protected |private )+ function +([^ \(]*)/\2/f/ " -f '.tagfilename
endfunction

function! UpdateTagsPHP()
    let cwd = getcwd()
    let tagfilename = cwd . "/.git/tags"

    " let cmd = 'ctags --PHP-kinds=+cf-v --languages=php -R --tag-relative=yes --exclude=.svn --exclude=composer.phar --exclude=.git --exclude="*/_*cache/*" --exclude="*/_*logs{0,1}/* --regex-PHP=/abstract class ([^ ]*)/\1/c/    --regex-PHP=/interface ([^ ]*)/\1/c/ --regex-PHP=/trait ([^ ]*)/\1/c/ --regex-PHP=/(public |static |abstract |protected |private )+ function +([^ \(]*)/\2/f/ " -f '.tagfilename
    let cmd = 'ctags -R --fields=+aimlS --languages=php,-javascript,-sql --PHP-kinds=+cf-v -f '.tagfilename
    let resp = system(cmd)
    echo 'done'
endfunction

function! IterateOverArguments()
    let l:currentLine = getline('.')
    let l:foundArguments = []
    let l:curLineNr = line('.')
    while l:currentLine !~ '{'
        let l:currentArgument = split(l:currentLine, ' ')
        let l:foundArguments = l:foundArguments + [{'argument_name': ,
        'argument_type': }]
        let l:curLineNr = l:curLineNr + 1
        let l:currentLine = getline(l:curLineNr)
    endwhile
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

au BufReadPost * call RestorePosition()

func! RestorePosition()
    if exists("g:restore_position_ignore") && match(expand("%"), g:restore_position_ignore) > -1
        return
    endif

    if line("'\"") > 1 && line("'\"") <= line("$")
        exe "normal! g`\""
    endif
endfunc

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

nmap <leader>ta :call SymfonySwitchToAlternateFile()<cr>
nmap <leader>tsa <c-w>v:call SymfonySwitchToAlternateFile()<cr>
function! SymfonySwitchToAlternateFile()
  let l:f = expand('%')
  let l:preceedingDirsToKeep = 2
  let l:is_test = expand('%:t') =~ "Test\."
  if l:is_test
    " remove phpunit_testroot
    let l:f = substitute(l:f, 'Tests/','','')
    " remove 'Test.' from filename
    let l:f = substitute(l:f,'Test\.','.','')
  else
      let l:pathParts = split(expand('%:r'), '/')
    let l:startingPath = l:pathParts[0:l:preceedingDirsToKeep]
    let l:endPath = l:pathParts[(l:preceedingDirsToKeep+1):]
    let l:combinedPath = l:startingPath + ['Tests'] + l:endPath
    let l:f = join(l:combinedPath, '/') . 'Test.php'
    if !filereadable(l:f)
        let l:new_dir = substitute(l:f, '/\w\+\.php', '', '')
        exe ":!mkdir -p ".l:new_dir
    endif
  endif
  " is there window with complent file open?
  let win = bufwinnr(l:f)
  if l:win > 0
    execute l:win . "wincmd w"
  else
    execute ":e " . l:f
  endif

endfunction


" set by vim-project
" nmap <leader>tu :call SwitchBetweenFiles1('php', 'Bundle/Tests/', 'Bundle/', 'Test')<cr>
" nmap <leader>tsu <c-w>v:call SwitchBetweenFiles1('php', 'Bundle/Tests/', 'Bundle/', 'Test')<cr>
" nmap <leader>tu :call SwitchBetweenFiles('php', 'tests/', 'library/', 'Test')<cr>
" nmap <leader>tsu <c-w>v:call SwitchBetweenFiles('php', 'tests/', 'library/', 'Test')<cr>


function! PrependTicketNumber()
    normal gg
    let l:branch = system("echo $(git branch | grep '*')")
    let l:ticketNumber = '['.substitute(l:branch, '\* \(.*\)', '\1', '').'] '
    exe "normal I".l:ticketNumber
    exe "normal gg"
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

nmap <leader>w :w<cr>
autocmd FileType php nmap <buffer> <leader>w :let g:phpqa_messdetector_autorun = 0<cr>:let g:phpqa_codesniffer_autorun = 0<cr>:w<cr>:let g:phpqa_messdetector_autorun = 1<cr>:let g:phpqa_codesniffer_autorun = 1<cr>

au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' &

au BufNewFile,BufRead *.html,*.html.twig,*.htm,*.shtml,*.stm set ft=html.javascript
au BufNewFile,BufRead *.phtml set ft=php.html





" ====================
" = Settings: Performance
" ====================




set nocursorcolumn
set nolazyredraw
set scrolljump=5
"syntax sync minlines=256
" set synmaxcol=200
let g:PHP_default_indenting=0


nnoremap <leader>rei :call ExtractInterface()<cr>

function! ExtractInterface()
    let l:file_path = expand('%:p:h')
    let l:baseFile = expand('%')
    let l:name = inputdialog("Name of new interface:")
    exe "normal Gointerface " . name . "\<Cr>{}\<c-o>i\<cr>"
    :g/const/ :normal yyGP
    ":g/public \$/ :normal yyGP
    :g/public function \(__construct\)\@!/ :normal yyGP$a;
    exe "normal! G?{\<cr>"
    normal "adGdd
    exe ":e ".l:file_path."/".l:name.".php"
    exe ":w"
    exe "normal i<?php\<cr>\<cr>interface ".l:name
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

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

nmap <Leader>ga :Tabularize /\|<cr>
vmap <Leader>ga :Tabularize /\|<cr>

au FileType cucumber setl sw=2 sts=2 et
au FileType yaml setl sw=2 sts=2 et
au FileType ruby setl sw=2 sts=2 et

augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
augroup END

hi SpecialKey       guifg=#343434     guibg=NONE     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE



let g:go_bin_path = expand("~/.gvm/gos/go1.7.3/bin")
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gc <Plug>(go-coverage)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>gs <Plug>(go-implements)
au FileType go nmap <Leader>ge <Plug>(go-rename)

" Quickly time out on keycodes, but never time out on mappings

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ], ['ctrlpmark'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \   'filename': 'LightlineFilename',
      \   'fileformat': 'LightlineFileformat',
      \   'filetype': 'LightlineFiletype',
      \   'fileencoding': 'LightlineFileencoding',
      \   'mode': 'LightlineMode',
      \   'ctrlpmark': 'CtrlPMark',
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
      \ }

function! LightlineModified()
  return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! LightlineFilename()
  let fname = expand('%')
  return fname == 'ControlP' && has_key(g:lightline, 'ctrlp_item') ? g:lightline.ctrlp_item :
        \ fname == '__Tagbar__' ? g:lightline.fname :
        \ fname =~ '__Gundo\|NERD_tree' ? '' :
        \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
        \ &ft == 'unite' ? unite#get_status_string() :
        \ &ft == 'vimshell' ? vimshell#get_status_string() :
        \ ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ ('' != fname ? fname : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
  try
    if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
      let mark = ''  " edit here for cool mark
      let branch = fugitive#head()
      return branch !=# '' ? mark.branch : ''
    endif
  catch
  endtry
  return ''
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == 'ControlP' ? 'CtrlP' :
        \ fname == '__Gundo__' ? 'Gundo' :
        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~ 'NERD_tree' ? 'NERDTree' :
        \ &ft == 'unite' ? 'Unite' :
        \ &ft == 'vimfiler' ? 'VimFiler' :
        \ &ft == 'vimshell' ? 'VimShell' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! CtrlPMark()
  if expand('%:t') =~ 'ControlP' && has_key(g:lightline, 'ctrlp_item')
    call lightline#link('iR'[g:lightline.ctrlp_regex])
    return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
          \ , g:lightline.ctrlp_next], 0)
  else
    return ''
  endif
endfunction

let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
  \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
  return lightline#statusline(0)
endfunction

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

so ~/dotfiles/vimprojects
nmap <leader><F2> :e ~/dotfiles/vimprojects<cr>

