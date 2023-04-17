set encoding=utf-8
set paste

set binary
set noendofline

set number
set relativenumber

set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

set backspace=2

set ignorecase

syntax enable
syntax on
set hlsearch


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'liuchengxu/space-vim-theme'
"Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'The-NERD-tree'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'vim-scripts/khaki.vim'
"Plugin 'tomasr/molokai'
"The space-vim-theme is beautiful
"Plugin 'rakr/vim-one'
"Plugin 'ayu-theme/ayu-vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"GUI Setting
set t_Co=256
set background=light
colorscheme space_vim_theme

set laststatus=2
set cmdheight=1
set noshowmode
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar

map <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=25

let g:lightline = {
            \ 'colorscheme': 'ayu_light',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'readonly', 'filename', 'modified', 'charvaluehex' ] ],
            \   'right': [ [ 'mylineinfo' ],
            \              [ 'percent' ],
            \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
            \ },
            \ 'component': {
            \   'charvaluehex': '0x%B',
            \   'mylineinfo':'%l:%L'
            \ },
            \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Doxygen Setting
let g:DoxygenToolkit_authorName="chniu, niuchao@eastmoney.com"
"let g:doxygen_enhanced_color=1
let g:DoxygenToolkit_versionString="3.2"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
