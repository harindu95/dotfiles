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
" Plug 'trusktr/seti.vim'
" Plug 'chriskempson/base16-vim'
" Plug 'KabbAmine/yowish.vim'
"
" ----- Vim as a programmer's text editor -----------------------------
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim' "CtrlP fuzzy find
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
Plug 'mbbill/undotree'
" Plug 'Shougo/deoplete.nvim'
Plug 'easymotion/vim-easymotion'
" Plug 'ervandew/supertab'
Plug 'neitanod/vim-clevertab'
Plug 'jceb/emmet.snippets'

" ----- Working with Git ----------------------------------------------
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" ----- Other text editing features -----------------------------------
Plug 'Raimondi/delimitMate'

" ----- man pages, tmux------------------------------------------------
Plug 'jez/vim-superman'
Plug 'christoomey/vim-tmux-navigator'

" ----- Syntax plugins ------------------------------------------------
Plug 'valloric/MatchTagAlways', { 'for' : 'html' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' } "CSS3 syntax
" Plug 'Shutnik/jshint2.vim' , { 'for': 'javascript' }   "JSHint

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



" ---- General settings ---

set backspace=indent,eol,start
set ruler
set relativenumber
set number
set tabstop=4
set expandtab
set shiftwidth=4
" set tw=79 "width of document  (used by gd)
set nowrap
set colorcolumn=80
highlight ColorColumn ctermbg=233

set hidden
set showcmd
set incsearch
set hlsearch
set mouse=a
syntax on
source $VIMRUNTIME/mswin.vim

"Rebind <leade> key
let mapleader= ','

"Bind nohl - remove previous search
noremap <F3> :nohl<CR>
vnoremap <F3> :nohl<CR>
inoremap <F3> :nohl<CR>

"Quick exit command
noremap <leader>w :q<CR> "Quit tab
inoremap <leader>w <ESC>:q<CR> "Quit tab"
inoremap <C-w> <ESC>:q!<CR>
noremap <C-w> :q!<CR>
noremap <leader>e :qa<CR> "Quit all windows"
noremap <leader>E :qa!<CR> "Quit without saving"


"easier moving between tabs
map <leader>n <esc>:tabprevious<CR>
map <leader>m <esc>:tabnext<CR>
" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"map sort function to a key
vnoremap <leader>gs :sort<CR>


"remove  whitespace
autocmd BufWritePre * :%s/\s\+$//e

"easier formatting of paragraphs
vmap Q gq
nmap Q gqap

"Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

"Add autoformat shortcut
autocmd BufWritePre * :Autoformat<CR>

"enable css auto complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" map save to ctrl + s
" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified
            \|    if empty(bufname('%'))
                \|        browse confirm write
                \|    else
                    \|        confirm write
                    \|    endif
                    \|endif

noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <C-s> <Esc>:Update<CR>
let g:mark_multiple_trigger = "<F6>"

" map cut & paste to what they bloody should be
" set clipboard=unnamed
" CTRL-X and SHIFT-Del are Cut
" vnoremap <C-X> "+x
" CTRL-C and CTRL-Insert are Copy
" vnoremap <C-C> "+y
" CTRL-V and SHIFT-Insert are Paste
" map <C-V>     "+gP
" cmap <C-V>        <C-R>+


"map open a new document
noremap <silent> <C-t>        :tabnew<CR>
vnoremap <silent> <C-t>       <C-C>:tabnew<CR>
inoremap <silent> <C-t>       <C-O>:tabnew<CR>

" sane text files
set fileformat=unix
set encoding=utf-8

" sane editing
set tabstop=4
set shiftwidth=4
set softtabstop=4

" convert all typed tabs to spaces
set expandtab

"autocompletion with ctrlspace
inoremap <c-space> <c-n>
inoremap <Nul> <c-n>


" ----- Plugin-Specific Settings --------------------------------------

" ----- altercation/vim-colors-solarized settings ------------------
set background=dark
let g:csexact_term_override="gnome"
" Uncomment the next line if your terminal is not configured for solarized
" let g:solarized_termcolors=256
set t_Co=256
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" Set the colorscheme
colorscheme codeschool
" ----- lightline settings -------------------------------------------
" Always show statusbar
set laststatus=2

let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ 'component': {
            \   'readonly': '%{&readonly?"":""}',
            \ },
            \ 'separator': { 'left': '|', 'right': '|' },
            \ 'subseparator': { 'left': '|', 'right': '|' }
            \ }


" ----- jistr/vim-nerdtree-tabs --------------------------------------
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 1

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
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)


"------NerdTree------------------------------------------------------------
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" ----------NeoMake-----------------------------------------------------------
autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']

"-------CSS syntax
autocmd BufWritePre,BufRead *.css highlight VendorPrefix ctermfg=red term=italic | match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/


"---------------Ctrl+p settings--------------------------------------------
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
            \ 'file': '\.so$\|\.dat$|\.DS_Store$'
            \ }
let g:ctrlp_clear_cache_on_exit = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*

"-----------Emmet settings --------------
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript EmmetInstall
let g:user_emmet_leader_key='<C-y>'
imap <expr> <C-j> emmet#expandAbbrIntelligent("\<Tab>")


"-----------Vim-JSX settings -------------------------------
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

"----------undo tree settings ---------------------------------
nnoremap <F5> :UndotreeToggle<cr>
inoremap <F5> :UndotreeToggle<cr>



"----Utilsnips---------------------------

let g:UltiSnipsExpandTrigger="<tab>"



"----Youcompleteme-------------------
let g:ycm_key_list_select_completion = []
let g:ycm_key_list_previous_completion=[]
