" Vundle Setup {{{
"=============================="
set nocompatible                "Use Vim settings, rather than Vi settings
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
let path='~/.vim/bundle'
call vundle#begin(path)
" }}}
" Plugins {{{
"=============================="
Plugin 'gmarik/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree.git'
Plugin 'ervandew/supertab'
Plugin 'posva/vim-vue'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'nvie/vim-flake8'

call vundle#end()
filetype plugin indent on
" }}}
" Editor Things {{{
"=============================="
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set history=50                  " keep 50 lines of command line history
set showcmd                     " display incomplete commands
set wildmenu                    " visual autcomplete in command menu
set autoindent                  " start new line at the same indentation level
syntax enable                   " syntax highlighting
set cmdheight=1                 " The commandbar height
" }}}
" Tabs or spaces? {{{
"=============================="
set expandtab                   " use spaces instead of tabs
set tabstop=4                   " insert 4 spaces whenever the tab key is pressed
set softtabstop=4               " insert 4 spaces for when editing
set shiftwidth=4                " set indentation to 4 spaces
" }}}
" File Encoding {{{
"=============================="
set enc=utf-8                   " UTF-8 encoding
set fenc=utf-8                  " UTF-8 encoding
set fencs=ucs-bom,utf8,prc
" }}}
" Visual Guides {{{
"=============================="
set ruler                       " Show the cursor position all the time
set cursorline                  " Display visuals 
set colorcolumn=80              " Vertical line at 80 characters
set nu                          " show line numbers
" }}}
" Search Settings {{{
"=============================="
set incsearch                   " do incremental searching
set hlsearch                    " highlight search terms
set ic                          " Ignore Case during searches
set showmatch                   " Show matching bracets when text indicator is over them
" }}}
" Code Folding {{{
"=============================="
set foldenable                  " do incremental searching
set foldlevelstart=10           " do incremental searching
set foldnestmax=10              " do incremental searching
set modelines=1
" }}}
" Backend Things {{{
"=============================="
set nobackup                    " do not keep backup files, it's 70's style cluttering
set noswapfile                  " do not write annoying intermediate swap files,
set laststatus=2                " Solves: statusline does not appear until I create a split
set ttimeoutlen=50              " Solves: there is a pause when leaving insert mode
set splitbelow                  " Horizontal splits open below current file
set splitright                  " Vertical splits open to the right of the current file
set lazyredraw                  " Don't redraw unless you really need to.
" }}}
" Keybindings {{{
"=============================="
let mapleader=','
nnoremap <leader><space> :nohlsearch<cr>
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>pi :PluginInstall<cr>
nnoremap <leader>ne :NERDTree<cr>
nnoremap <leader>po :source %<cr>
nnoremap <leader>m :syntax sync fromstart<cr>
nnoremap <leader>j :%!python -m json.tool<cr>
nnoremap <leader><space> za
nnoremap <leader>s :mksession<CR>
nnoremap j gj
nnoremap k gk
autocmd FileType python map <buffer> <leader>f :call Flake8()<CR>
" }}}
" Theme Things {{{
"=============================="
"set t_Co=256     
set guifont=Ubuntu_Mono_derivative_Powerlin:h12:cANSI
let g:airline_powerline_fonts = 1
colorscheme molokai
set encoding=utf-8
" }}}
" Misc. {{{
"=============================="
set clipboard=unnamed           "System Clipboard
"Make vim look more terminal in GVim 
set go-=m go-=T go-=l go-=L go-=r go-=R go-=b go-=F
set columns=110
cd c:/data
" }}}
" vim:foldmethod=marker:foldlevel=0
