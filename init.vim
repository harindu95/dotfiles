set nocompatible              " be iMproved, required
" "  Automatic reloading of init.vim
" autocmd bufwritepost ~/.config/nvim/init.vim source %
"
"--------------------Plugins-------------------------------------------------"

call plug#begin('~/.config/nvim/bundle')

" ----- Making Vim look good ------------------------------------------
Plug 'itchyny/lightline.vim'
Plug 'KevinGoodsell/vim-csexact'
Plug 'flazz/vim-colorschemes'
Plug 'trusktr/seti.vim'
Plug 'chriskempson/base16-vim'
" Plug 'KabbAmine/yowish.vim'



"
" ----- Vim as a programmer's text editor -----------------------------
Plug 'scrooloose/nerdtree'
" Plug 'git://github.com/tpope/vim-vinegar.git'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim' "CtrlP fuzzy find
Plug 'JazzCore/ctrlp-cmatcher' , { 'do': './install.sh' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }  " Fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'    "Emmet
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
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
Plug 'valloric/youcompleteme'
Plug 'chiel92/vim-autoformat'
Plug 'KabbAmine/vCoolor.vim'
" Plug 'mbbill/undotree'
Plug 'sjl/gundo.vim'
" Plug 'Shougo/deoplete.nvim'
Plug 'easymotion/vim-easymotion'
" Plug 'ervandew/supertab'
" Plug 'neitanod/vim-clevertb'
" Plug 'jceb/emmet.snippets'
Plug 'lyuts/vim-rtags'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-repeat'
Plug 'hecal3/vim-leader-guide'

" ----- Working with Git ----------------------------------------------
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" ----- Other text editing features -----------------------------------
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-abolish'

" ----- man pages, tmux------------------------------------------------
Plug 'jez/vim-superman'
Plug 'christoomey/vim-tmux-navigator'

" ----- Syntax plugins ------------------------------------------------
Plug 'valloric/MatchTagAlways', { 'for' : 'html' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' } "CSS3 syntax
" Plug 'Shutnik/jshint2.vim' , { 'for': 'javascript' }   "JSHint
Plug 'https://github.com/rust-lang/rust.vim.git'
"---- Extras/Advanced plugins ----------------------------------------
" Automaticall insert the closing HTML tag
Plug 'HTML-AutoCloseTag' , { 'for': 'HTML' }
" Make tmux look like vim-airline (read README for extra instructions)
Plug 'edkolev/tmuxline.vim'
" Highlight and strip trailing whitespace
"Plugin 'ntpeters/vim-better-whitespace'
" Easily surround chunks of text
"Plugin 'tpope/vim-surround'
" Align CSV files at commas, align Markdown tables, and more
"Plugin 'godlygeek/tabular'
" All the other syntax plugins I use
"Plugin 'ekalinin/Dockerfile.vim'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'tpope/vim-liquid'
"Plugin 'cakebaker/scss-syntax.vim'
" Plug 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call plug#end()

"---------------------------------------------------------------------------
" Vim settings
"---Python settings ----------------
let g:python_host_prog = '/usr/bin/python2'
"
" Set `g:python3_host_prog` to point Nvim to a specific Python 3 interpreter: >
let g:python3_host_prog = '/usr/bin/python3'

" ---- General settings ---

set backspace=indent,eol,start
set ruler
set relativenumber
set number

"open vsplit on right
set splitright


" set tw=79 "width of document  (used by gd)
set nowrap
"  set colorcolumn=80
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
"Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile
" sane text files
set fileformat=unix
set encoding=utf-8

" sane editing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
" set autoindent
" set copyindent
behave mswin
set ttimeout
set ttimeoutlen=0
" sane auto completion for ex commands
" set wildmode=longest

set clipboard=unnamed
"Rebind <leade> key
let mapleader= ','

set guifont=Source\ Code\ Pro\ for\ Powerline
"Terminal shortcuts
tnoremap <Esc><Esc>  <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l


nnoremap <leader>h :split<CR>
nnoremap <leader>v :vsplit<CR>

"Bind nohl - remove previous search
nnoremap <F3> :nohl<CR>
vnoremap <F3> :nohl<CR>
inoremap <F3> <C-o>:nohl<CR>

"Quick exit command
nnoremap <silent> <leader>w :q<CR>
inoremap <silent> <C-w> <C-o>:q!<CR>
nnoremap <silent> <C-w> :q!<CR>
nnoremap <leader>e :qa<CR>
nnoremap <leader>E :qa!<CR>


"easier moving between tabs
nnoremap <leader>n :tabprevious<CR>
nnoremap <leader>m :tabnext<CR>
" Go to tab by number
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<cr>

"map sort function to a key
vnoremap <leader>gs :sort<CR>




"easier formatting of paragraphs
vnoremap Q gq
nnoremap Q gqap

function FormatFile()
    exec "Autoformat"
    exec "Update"
    "remove  whitespace
    autocmd BufWritePre * :%s/\s\+$//e
endfunction


"enable css auto complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"move lines up and down
nnoremap <C-down> :m .+1<CR>==
nnoremap <C-up> :m .-2<CR>==
inoremap <C-up> <C-o>:m .-2<CR>
inoremap <C-down> <C-o>:m .+1<CR>

"Delete line in insert mode
inoremap <S-Del> <C-o>dd

command! -nargs=0 -bar SaveFile call FormatFile()
" " If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified
            \|    if empty(bufname('%'))
                \|        browse confirm write
                \|    else
                    \|        confirm write
                    \|    endif
                    \|endif


" map save to ctrl + s
nnoremap <silent> <C-S>          :SaveFile<CR>
vnoremap <silent> <C-S>         <C-C>:SaveFile<CR>
inoremap <silent> <C-s> <C-o>:SaveFile<CR>
inoremap <Nul> <C-d>
let g:mark_multiple_trigger = "<C-d>"

" map cut & paste to what they bloody should be

" CTRL-X and SHIFT-Del are Cut
" vnoremap <C-X> "+x
" CTRL-C and CTRL-Insert are Copy
" vnoremap <C-C> "+y
" CTRL-V and SHIFT-Insert are Paste
" map <C-V>     "+gP
" cmap <C-V>        <C-R>+


"map open a new document
nnoremap <silent> <C-t>        :tabnew<CR>
vnoremap <silent> <C-t>       <C-c>:tabnew<CR>
inoremap <silent> <C-t>       <C-o>:tabnew<CR>



"autocompletion with ctrlspace
inoremap <c-space> <c-n>
inoremap <Nul> <c-n>

nnoremap ; :

"-------change colors on mode change ---
" Enable CursorLine
set cursorline

" Default Colors for CursorLine
" highlight  CursorLine ctermbg=236     ctermfg=None

highlight  CursorLine ctermfg=None ctermbg=18 guibg=#343d46 guifg=None
" Change Color when entering Insert Mode
"
autocmd InsertEnter * highlight  CursorLine ctermbg=white ctermfg=black guibg=#000000 guifg=None
" autocmd InsertEnter * highlight  CursorLine ctermbg=white ctermfg=black guibg=#ffffff guifg=#000000

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine ctermfg=None ctermbg=18 guibg=#343d46 guifg=None gui=None


"Enable code folding
set foldmethod=manual
set foldnestmax=10
" set nofoldenable
" set foldlevel=2
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview


"Excute current line as a vim command
nnoremap <C-x><C-e> yy:@" <cr>

" ----- Plugin-Specific Settings --------------------------------------

" -----Theme settings ------------------
set background=dark
let g:csexact_term_override="gnome"
" Uncomment the next line if your terminal is not configured for solarized
" let g:solarized_termcolors=256
set t_Co=256
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"Enable true color -- Note Colors will be guibg and guifg
set t_8f=\[[38;2;%lu;%lu;%lum
set t_8b=\[[48;2;%lu;%lu;%lum
set termguicolors

" Set the colorscheme
colorscheme base16-ocean
" colorscheme base16-tomorrow-night
"
" ----- lightline settings -------------------------------------------
" Always show statusbar
set laststatus=2
let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ 'component': {
            \   'readonly': '%{&readonly?"":""}',
            \ },
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '', 'right': '' }
            \ }




"------NerdTree------------------------------------------------------------
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeWinSize=20

" ----- jistr/vim-nerdtree-tabs --------------------------------------
" Open/close NERDTree Tabs with \t
nnoremap <silent> <leader>t :NERDTreeTabsToggle<CR>

" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup =0
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" ----- xolox/vim-easytags settings ------------------------------------
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings ----------------------------------------
" Open/close tagbar with \b
nnoremap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)

" ----------NeoMake-----------------------------------------------------------
autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_cpp_enabled_makers = ["gcc"]

"-------CSS syntax
autocmd BufWritePre,BufRead *.css highlight VendorPrefix ctermfg=red term=italic | match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/


" "---------------Ctrl+p settings--------------------------------------------
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
" let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

" set working directory to git project root
" or directory of current file if not git project
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

"
"
"----FZF fuzzy finder ---------
set rtp+=~/.fzf
" function! s:fzf_statusline()
"     " Override statusline as you like
"     highlight fzf1 ctermfg=161 ctermbg=251
"     highlight fzf2 ctermfg=23 ctermbg=251
"     highlight fzf3 ctermfg=237 ctermbg=251
"     setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
" endfunction
"
" autocmd! User FzfStatusLine call <SID>fzf_statusline()

" This is the default extra key bindings
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'vsplit'}

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
" let g:fzf_layout = { 'window': 'enew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" noremap <silent> <C-p>        :Files<CR>
" vnoremap <silent> <C-p>       <C-C>:Files<CR>
" inoremap <silent> <C-p>       <C-O>:Files<CR>

nnoremap <silent> <Space>fr :History<cr>
nnoremap <silent> <Space>ff :Files<cr>
nnoremap <silent> <Space>bb :Buffers<cr>

inoremap <C-x><C-o> <plug>(fzf-complete-line)


nnoremap <silent> <S-tab> :Commands<cr>

"-----------Emmet settings -------------
let g:user_emmet_install_global = 0

let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-y>'
autocmd FileType html,css inoremap <TAB> <plug>(emmet-expand-abbr)

"-----------Vim-JSX settings -------------------------------
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

"----------undo tree settings ---------------------------------
nnoremap <F5> :GundoToggle<cr>
inoremap <F5> <C-o>:GundoToggle<cr>
let g:gundo_width = 25


"----Utilsnips---------------------------

let g:UltiSnipsExpandTrigger="<C-j>"


"----Youcompleteme-------------------
" let g:ycm_key_list_select_completion = []
" let g:ycm_key_list_previous_completion=[]
" let g:ycm_key_invoke_completion = '<CR>'
"
let g:ycm_rust_src_path = '/home/harindu/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_goto_buffer_command = 'vertical-split'
nnoremap <leader>jd :YcmCompleter GoTo<CR>
"

"-------leader guide ---

" Define prefix dictionary
let g:lmap =  {}
call leaderGuide#register_prefix_descriptions(",", "g:lmap")
nnoremap <silent> <leader> :LeaderGuide ','<CR>
vnoremap <silent> <leader> :LeaderGuideVisual ','<CR>

nnoremap <Plug>(open-vimrc) :e $MYVIMRC<CR>
nmap <leader>fd <Plug>(open-vimrc)

".....vim -repeat...........
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
