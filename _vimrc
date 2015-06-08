set nocompatible                "Use Vim settings, rather than Vi settings

"Vundle Setup
"=============================="
filetype off
set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin(path)

"Plugins
"=============================="
Plugin 'gmarik/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree.git'
Plugin 'ervandew/supertab'

call vundle#end()
filetype plugin indent on

"Editor Things 
"=============================="
set backspace=indent,eol,start  "allow backspacing over everything in insert mode
set history=50                  "keep 50 lines of command line history
set ruler                       "show the cursor position all the time
set showcmd                     "display incomplete commands
set incsearch                   "do incremental searching
set nu                          "show line numbers
set expandtab                   "use spaces instead of tabs
set tabstop=4                   "insert 4 spaces whenever the tab key is pressed
set shiftwidth=4                "set indentation to 4 spaces
set hlsearch                    "highlight search terms
set ic                          "Ignore Case during searches
set autoindent                  "start new line at the same indentation level
syntax enable                   "syntax highlighting
set cmdheight=1                 "The commandbar height
set showmatch                   "Show matching bracets when text indicator is over them
set enc=utf-8                   "UTF-8 encoding
set fileencoding=utf-8          "UTF-8 encoding
set fileencodings=ucs-bom,utf8,prc
set wildmenu

"Backend Things
"=============================="
set nobackup                    " do not keep backup files, it's 70's style cluttering
set noswapfile                  " do not write annoying intermediate swap files,
set laststatus=2                " Solves: statusline does not appear until I create a split
set ttimeoutlen=50              "Solves: there is a pause when leaving insert mode
set splitbelow                  " Horizontal splits open below current file
set splitright                  " Vertical splits open to the right of the current file

"Keybindings
"=============================="
let mapleader=','
nnoremap <leader><space> :nohlsearch<cr>
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>pi :PluginInstall<cr>
nnoremap <leader>ne :NERDTree<cr>


"Theme Things
"=============================="
"set t_Co=256     
set guifont=Ubuntu_Mono_derivative_Powerlin:h12:cANSI
let g:airline_powerline_fonts = 1
colorscheme molokai
set encoding=utf-8

"Misc.
"=============================="
set clipboard=unnamed           "System Clipboard
"Make vim look more terminal in GVim 
set go-=m go-=T go-=l go-=L go-=r go-=R go-=b go-=F
set columns=110
