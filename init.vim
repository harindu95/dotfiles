set nocompatible              " be iMproved, required
"  "  Automatic reloading of init.vim
"  autocmd bufwritepost ~/.config/nvim/init.vim source %

"
" --------------------Plugins-------------------------------------------------"

call plug#begin('~/.config/nvim/bundle')

"  ----- Making Vim look good ------------------------------------------
Plug 'itchyny/lightline.vim'
" Plug 'KevinGoodsell/vim-csexact'
" Plug 'flazz/vim-colorschemes'
" Plug 'trusktr/seti.vim'
Plug 'chriskempson/base16-vim'
" Plug 'KabbAmine/yowish.vim'



"
"  ----- Vim as a programmer's text editor -----------------------------
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

" easytags require vim-misc
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'

Plug 'ctrlpvim/ctrlp.vim' "CtrlP fuzzy find
" Plug 'JazzCore/ctrlp-cmatcher' , { 'do': './install.sh' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }  " Fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim' , { 'for' : ['html' ,'css']}   "Emmet
Plug 'honza/vim-snippets'
Plug 'Sirver/ultisnips'
Plug 'skammer/vim-css-color' "CSS-Color
Plug 'Ioannis-Kapoulas/vim-autoprefixer', { 'for' : 'css' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'neomake/neomake'
Plug 'adinapoli/vim-markmultiple'
Plug 'tomtom/tcomment_vim'

Plug 'chiel92/vim-autoformat'
Plug 'KabbAmine/vCoolor.vim'
Plug 'sjl/gundo.vim'
Plug 'easymotion/vim-easymotion'
"
Plug 'tpope/vim-repeat'
"  Plug 'mileszs/ack.vim'

" Auto completion
Plug 'ervandew/supertab'
Plug 'Rip-Rip/clang_complete' , { 'for' : ['c','cpp']}
Plug 'valloric/youcompleteme' ,{ 'for':['rust'] , 'do': './install.py --tern-completer --racer-completer --clang-completer' }
Plug 'davidhalter/jedi-vim' ,{'for':'python'}
Plug 'Shougo/deoplete.nvim'
" Plug 'valloric/youcompleteme' ,{ 'for': ['cpp','rust','python','javascript','c'] , 'do': function('YCMInstall')}
"
" Plug 'AutoComplPop'
" Plug 'lifepillar/vim-mucomplete'
" Generates .ycm_config files for projects
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

"  ----- Working with Git ----------------------------------------------
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"  ----- Other text editing features -----------------------------------
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-abolish'


"  ----- Syntax plugins ------------------------------------------------
Plug 'valloric/MatchTagAlways', { 'for' : 'html' }
" Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' } " CSS3 syntax
Plug 'https://github.com/rust-lang/rust.vim.git', {'for': 'rust'}

"  ---- Extras/Advanced plugins ----------------------------------------
"  Automaticall insert the closing HTML tag
Plug 'HTML-AutoCloseTag' , { 'for': 'HTML' }

" leader guide
Plug 'hecal3/vim-leader-guide'
"  All of your Plugins must be added before the following line
call plug#end()
" source $HOME/.config/nvim/bundle/youcompleteme/autoload/youcompleteme.vim
" ---------------------------------------------------------------------------
"  Vim settings
" ---Python settings ----------------
let g:python_host_prog = '/usr/bin/python2'
"
"  Set `g:python3_host_prog` to point Nvim to a specific Python 3 interpreter: >
let g:python3_host_prog = '/usr/bin/python3'



" ----- Key bindings --------------------
"
"
" move lines up and down
nnoremap <C-down> :m .+1<CR>==
nnoremap <C-up> :m .-2<CR>==
inoremap <C-up> <C-o>:m .-2<CR>
inoremap <C-down> <C-o>:m .+1<CR>
smap <C-down> <C-o><C-down>
smap <C-up> <C-o><C-up>
vnoremap <C-down> :m '>+1<CR>gv=gv
vnoremap <C-up> :m '<-2<CR>gv=gv

" Terminal shortcuts
tnoremap <Esc><Esc>  <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l



tnoremap <A-w> <C-\><C-n>:tab sp<CR>
nnoremap <A-w> :tab sp<CR>
inoremap <A-w> <C-o>:tab sp<CR>


"  Window split switching
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

inoremap <silent> <C-j> <C-o>:wincmd j<CR>
inoremap <silent> <C-k> <C-o>:wincmd k<CR>
inoremap <silent> <C-h> <C-o>:wincmd h<CR>
inoremap <silent> <C-l> <C-o>:wincmd l<CR>

nnoremap <leader>h :split<CR>
nnoremap <leader>v :vsplit<CR>

" Bind nohl - remove previous search
nnoremap <F3> :nohl<CR>
vnoremap <F3> :nohl<CR>
inoremap <F3> <C-o>:nohl<CR>

" Quick exit command
nnoremap <silent> <leader>w :q<CR>
inoremap <silent> <C-w> <C-o>:q<CR>
nnoremap <silent> <C-w> :q<CR>
tnoremap <silent> <C-w> <C-\><C-n>:q<CR>
nnoremap <leader>e :qa<CR>
nnoremap <leader>E :qa!<CR>


" easier moving between tabs
nnoremap <leader>n :tabprevious<CR>
nnoremap <leader>m :tabnext<CR>
"  Go to tab by number
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
" nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<cr>

" map sort function to a key
vnoremap <leader>gs :sort<CR>

" easier formatting of paragraphs
vnoremap Q gq
nnoremap Q gqap

"  map save to ctrl + s
nnoremap <silent> <C-S>          :SaveFile<CR>
nnoremap <silent> <A-s>          :Update<CR>
vnoremap <silent> <C-S>         <C-C>:SaveFile<CR>
inoremap <silent> <C-s> <C-o>:SaveFile<CR>
inoremap <Nul> <C-d>
let g:mark_multiple_trigger = "<C-d>"

" Delete line in insert mode
inoremap <S-Del> <C-o>dd

nnoremap <silent> <leader>l1 :source $HOME/.nvim/layout1.vim<CR>
nnoremap <silent> <leader>l2 :source $HOME/.nvim/layout2.vim<CR>

map open a new document
nnoremap <silent> <C-t>        :tabnew<CR>
vnoremap <silent> <C-t>       <C-c>:tabnew<CR>
inoremap <silent> <C-t>       <C-o>:tabnew<CR>
"

" autocompletion with ctrlspace
inoremap <c-space> <c-n>
inoremap <Nul> <c-n>

nnoremap ; :
nnoremap <silent> <Space>fr :History<cr>
nnoremap <silent> <Space>ff :Files<cr>
nnoremap <silent> <Space>bb :Buffers<cr>
"
"  ---- General settings ---

set backspace=indent,eol,start
set ruler
set relativenumber
set number

" open vsplit on right
set splitright


"  set tw=79 "width of document  (used by gd)
set nowrap
"   set colorcolumn=80
highlight ColorColumn ctermbg=233

set hidden
set showcmd
set incsearch
set hlsearch
set mouse=a
set showmatch
set ignorecase
set smartcase

syntax on
source $VIMRUNTIME/mswin.vim
set history=1000
set undolevels=1000
set title
set visualbell
set noerrorbells
" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile
"  sane text files
set fileformat=unix
set encoding=utf-8
filetype plugin on
filetype indent on

"  sane editing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
"  set autoindent
"  set copyindent
behave mswin
set ttimeout
set ttimeoutlen=0
set wildchar=<Tab>
"  sane auto completion for ex commands
"  set wildmode=longest
set wildmenu
set wildmode=list:longest,full

set clipboard=unnamed
" Rebind <leade> key
let mapleader= ','

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 14
autocmd BufWinEnter,WinEnter term://* startinsert
function FormatFile()
    exec "Autoformat"
    exec "Update"
    "remove  whitespace
    autocmd BufWritePre * :%s/\s\+$//e
endfunction


" enable css auto complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS




command! -nargs=0 -bar SaveFile call FormatFile()
"  " If the current buffer has never been saved, it will have no name,
"  call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified
            \|    if empty(bufname('%'))
                \|        browse confirm write
                \|    else
                    \|        confirm write
                    \|    endif
                    \|endif



" Reopen last session
" Go to last file(s) if invoked without arguments.
autocmd VimLeave * nested if (!isdirectory($HOME . "/.nvim")) |
            \ call mkdir($HOME . "/.nvim") |
            \ endif |
            \ execute "mksession! " . $HOME . "/.nvim/Session.vim"

autocmd VimEnter * nested if argc() == 0 && filereadable($HOME . "/.nvim/Session.vim") |
            \ execute "source " . $HOME . "/.nvim/Session.vim"


"  map cut & paste to what they bloody should be

"  CTRL-X and SHIFT-Del are Cut
"  vnoremap <C-X> "+x
"  CTRL-C and CTRL-Insert are Copy
"  vnoremap <C-C> "+y
"  CTRL-V and SHIFT-Insert are Paste
"  map <C-V>     "+gP
"  cmap <C-V>        <C-R>+


" -------change colors on mode change ---
"  Enable CursorLine
set cursorline

"  Default Colors for CursorLine
"  highlight  CursorLine ctermbg=236     ctermfg=None

highlight  CursorLine ctermfg=None ctermbg=18 guibg=#343d46 guifg=None
"  Change Color when entering Insert Mode
"
autocmd InsertEnter * highlight  CursorLine ctermbg=white ctermfg=black guibg=#000000 guifg=None
"  autocmd InsertEnter * highlight  CursorLine ctermbg=white ctermfg=black guibg=#ffffff guifg=#000000

"  Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine ctermfg=None ctermbg=18 guibg=#343d46 guifg=None gui=None


" Enable code folding
set foldmethod=manual
set foldnestmax=10
"  set nofoldenable
"  set foldlevel=2
"  autocmd BufWinLeave *.vim mkview
"  autocmd BufWinEnter *.vim silent loadview


" Excute current line as a vim command
nnoremap <C-x><C-e> yy:@" <cr>

"  ----- Plugin-Specific Settings --------------------------------------

"  -----Theme settings ------------------
set background=dark
" let g:csexact_term_override="gnome"
"  Uncomment the next line if your terminal is not configured for solarized
"  let g:solarized_termcolors=256
set t_Co=256
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Enable true color -- Note Colors will be guibg and guifg
set t_8f=\[[38;2;%lu;%lu;%lum
set t_8b=\[[48;2;%lu;%lu;%lum
set termguicolors

"  Set the colorscheme
colorscheme base16-ocean
"  colorscheme base16-tomorrow-night"
hi VertSplit ctermbg=NONE guibg=NONE
set fillchars+=vert:│
"  ----- lightline settings -------------------------------------------
"  Always show statusbar
set laststatus=2
"  set ambiwidth=single
let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'fugitive', 'filename' ] ]
            \ },
            \ 'component_function': {
            \   'fugitive': 'LightlineFugitive',
            \   'readonly': 'LightlineReadonly',
            \   'modified': 'LightlineModified',
            \ },
            \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
            \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
            \ }

function! LightlineModified()
    if &filetype == "help"
        return ""
    elseif &modified
        return "+"
    elseif &modifiable
        return ""
    else
        return ""
    endif
endfunction

function! LightlineReadonly()
    if &filetype == "help"
        return ""
    elseif &readonly
        return ""
    else
        return ""
    endif
endfunction

function! LightlineFugitive()
    return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

function! LightlineFilename()
    return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
                \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
                \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
    if exists("*fugitive#head")
        let branch = fugitive#head()
        return branch !=# '' ? "\ue0a0" .branch : ''
    endif
    return ''
endfunction

" " ------NerdTree------------------------------------------------------------
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeWinSize=20
"
" "  ----- jistr/vim-nerdtree-tabs --------------------------------------
" "  Open/close NERDTree Tabs with \t
nnoremap <silent> <leader>t :NERDTreeTabsToggle<CR>
" nnoremap <silent> <leader>t :NERDTreeToggle<CR>
" "  To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup =0
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
"
"  ----- xolox/vim-easytags settings ------------------------------------
"  Where to look for tags files
set tags=./tags;,~/.vimtags
"  Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

"  ----- majutsushi/tagbar settings ----------------------------------------
"  Open/close tagbar with \b
nnoremap <silent> <leader>b :TagbarToggle<CR>
"  Uncomment to open tagbar automatically whenever possible
" autocmd BufEnter * nested :call tagbar#autoopen(0)

"  ----------NeoMake-----------------------------------------------------------
autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_cpp_enabled_makers = ["gcc"]

" -------CSS syntax
autocmd BufWritePre,BufRead *.css highlight VendorPrefix ctermfg=red term=italic | match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/


"  "---------------Ctrl+p settings--------------------------------------------
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
            \ 'file': '\.so$\|\.dat$|\.DS_Store$'
            \ }
let g:ctrlp_clear_cache_on_exit = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*
let g:ctrlp_regexp = 1
set autochdir
let g:ctrlp_working_path_mode = 'ra'
"  if executable('ag')
"  Use Ag over Grep
set grepprg=ag\ --nogroup\ --nocolor

"  Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"  endif
"  let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

"  set working directory to git project root
"  or directory of current file if not git project
function! SetProjectRoot()
    " default to the current file's directory
    lcd %:p:h
    let git_dir = system("git rev-parse --show-toplevel")
    let current_dir = system("pwd")
    " See if the command output starts with 'fatal' (if it does, not in a git repo)
    let is_not_git_dir = matchstr(git_dir, '^fatal:.*')
    let is_home_dir = matchstr(current_dir, '^\home.*')

    " if git project, change local directory to git project root
    if empty(is_not_git_dir)
        lcd `=git_dir`
        let g:ctrlp_cmd = 'CtrlP =git_dir'
    elseif empty(is_home_dir)
        lcd ~
        let g:ctrlp_cmd = 'CtrlP ~'
    else
        let g:ctrlp_cmd = 'CtrlP /'
    endif
endfunction

autocmd BufRead * call SetProjectRoot()
let g:webdevicons_enable_ctrlp = 1
"
"
" ----FZF fuzzy finder ---------
set rtp+=~/.fzf
"  function! s:fzf_statusline()
"      " Override statusline as you like
"      highlight fzf1 ctermfg=161 ctermbg=251
"      highlight fzf2 ctermfg=23 ctermbg=251
"      highlight fzf3 ctermfg=237 ctermbg=251
"      setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
"  endfunction
"
"  autocmd! User FzfStatusLine call <SID>fzf_statusline()

"  This is the default extra key bindings
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'vsplit'}

"  Default fzf layout
"  - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

"  In Neovim, you can set up fzf window using a Vim command
"  let g:fzf_layout = { 'window': 'enew' }

"  Customize fzf colors to match your color scheme
"  let g:fzf_colors =
"              \ { 'fg':      ['fg', 'Normal'],
"              \ 'bg':      ['bg', 'Normal'],
"              \ 'hl':      ['fg', 'Comment'],
"              \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"              \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"              \ 'hl+':     ['fg', 'Statement'],
"              \ 'info':    ['fg', 'PreProc'],
"              \ 'prompt':  ['fg', 'Conditional'],
"              \ 'pointer': ['fg', 'Exception'],
"              \ 'marker':  ['fg', 'Keyword'],
"              \ 'spinner': ['fg', 'Label'],
"              \ 'header':  ['fg', 'Comment'] }
"
"  " Enable per-command history.
"  CTRL-N and CTRL-P will be automatically bound to next-history and
"  previous-history instead of down and up. If you don't like the change,
"  explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

"  noremap <silent> <C-p>        :Files<CR>
"  vnoremap <silent> <C-p>       <C-C>:Files<CR>
"  inoremap <silent> <C-p>       <C-O>:Files<CR>

" inoremap <C-x><C-o> <plug>(fzf-complete-line)


function PrevFiles()
    let     g:fzf_files_options =
                \ '--preview "(highlight -O ansi {} || cat {}) 2> /dev/null | head -'.&lines.'"'
    exec("Files")
    let g:fzf_files_options = ""
endfunction

command! -nargs=0 -bar PrevFiles call PrevFiles()
function! Myfiles()
    let g:fzf_files_options = "--exact"
    exec("Files")
    let g:fzf_files_options = ""
endfunction

command! -nargs=0 -bar MyFiles call Myfiles()

" -----------Emmet settings -------------
let g:user_emmet_install_global = 0

let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-y>'
autocmd FileType html,css inoremap <TAB> <plug>(emmet-expand-abbr)

" -----------Vim-JSX settings -------------------------------
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" ----------undo tree settings ---------------------------------
nnoremap <F5> :GundoToggle<cr>
inoremap <F5> <C-o>:GundoToggle<cr>
let g:gundo_width = 25


" ----Utilsnips---------------------------

let g:UltiSnipsExpandTrigger="<C-j>"



" -------leader guide ---
"
"  Define prefix dictionary
let g:lmap =  {}
call leaderGuide#register_prefix_descriptions(",", "g:lmap")
nnoremap <silent> <leader> :LeaderGuide ','<CR>
vnoremap <silent> <leader> :LeaderGuideVisual ','<CR>

nnoremap <leader>fd :e $MYVIMRC<CR>

nnoremap <leader>l :BLines<CR>
" .....vim -repeat...........
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)



" ... Clang complete settings----------------
" " path to directory where library can be found
let g:clang_library_path='/usr/lib/llvm-3.9/lib'
" or path directly to the library file
" let g:clang_library_path='/usr/lib64/libclang.so.3.8'
"
"--- Autocompletion
" --- supertabs/clangcomplete---------
set conceallevel=2
set concealcursor=vin
let g:clang_snippets=1
let g:clang_conceal_snippets=1
let g:clang_snippets_engine='clang_complete'
" let g:clang_complete_auto =1
" let g:clang_auto_select=1

let g:SuperTabDefaultCompletionType = 'context'
" Complete options (disable preview scratch window, longest removed to aways show menu)
set completeopt=menu,menuone,noinsert

" Limit popup menu height
set pumheight=20

" SuperTab completion fall-back
" let g:SuperTabDefaultCompletionType='<C-x><C-u><c-p'
" let g:jedi#completions_command = "<C-x><c-u><c-p>"
"
" autocmd FileType python let g:SuperTabContextDefaultCompletionType = "<c-SPC>"
" let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>
"

" Use deoplete.
let g:deoplete#enable_at_startup = 1
" autocmd FileType cpp,c setlocal omnifunc=ClangComplete
" autocmd FileType rust,javascript setlocal omnifunc=youcompleteme#Complete
" autocmd FileType python  setlocal omnifunc=jedi#completions
let g:deoplete#auto_complete_delay=300
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.python = 'jedi#completions'
let g:deoplete#omni#functions.rust = 'youcompleteme#Complete'
let g:deoplete#omni#functions.cpp = 'ClangComplete'
let g:deoplete#omni#functions.c = 'ClangComplete'


" ----Youcompleteme-------------------
"  let g:ycm_key_list_select_completion = []
"  let g:ycm_key_list_previous_completion=[]
"  let g:ycm_key_invoke_completion = '<CR>'
" call plug#load('youcompleteme')
let g:ycm_server_python_interpreter = '/usr/bin/python2'
let g:ycm_rust_src_path = '/home/harindu/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_goto_buffer_command = 'vertical-split'
" autocmd! FileType cpp,c,python,rust,javascript
"
function GoTo()
    if (&ft=='c' || &ft=='cpp')
        call g:ClangGotoDeclaration()
    elseif(&ft=='rust')
        exec('YcmCompleter GoTo')
    elseif(&ft=='python')
        call g:jedi#goto()
    endif

endfunction

command! -nargs=0 -bar GoToDeclaration  call GoTo()
nnoremap <leader>jd :GoToDeclaration<CR>
" augroup load_ycm
"     autocmd!
"     autocmd! FileType rust,javscript
"                 \ call plug#load('youcompleteme')     |
"                 \ if exists('g:loaded_youcompleteme') |
"                 \   call youcompleteme#Enable()       |
"                 \ endif                               |
"                 \ autocmd! load_ycm
" augroup END
