set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'
"Plugin 'ctrpvim/ctrl.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-commentary'
Plugin 'vim-vdebug/vdebug'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'DirDiff'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'jaxbot/semantic-highlight.vim'
Plugin 'Valloric/YouCompleteMe'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/hou/.vim/plugins/git-branch-info.vim'
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
" Put your non-Plugin stuff after this lineset backspace=indent,eol,start

set backup
set history=50
set ruler
set background=dark
set showcmd
set incsearch
syntax on
set hlsearch

source $VIMRUNTIME/macros/matchit.vim
autocmd BufEnter *.m compiler mlint

set laststatus=2

set expandtab
set shiftwidth=2
set softtabstop=2

if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
  " ...
endif

set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.

set fileformats=unix,dos
set fileformat=unix
set encoding=utf-8

"set guifont=DejaVu:Sans:Mono:for:Powerline:h12:cDEFAULT
"set guifont=Liberation\ Mono\ for\ Powerline\ 10 

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_theme = 'powerlineish'
let g:airline_powerline_fonts = 1

let asmsyntax='ia64'
let filetype_inc='ia64'

" Matlab Syntax
augroup filetypedetect
  au! BufRead,BufNewFile *.m setfiletype matlab
augroup END 

" Mark column 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Ignore whitespace in vimdiff
"if &diff
"  set diffopt+=iwhite
"endif

" Toggle through files
"nnoremap <C-Tab> :bn<CR>
"nnoremap <C-S-Tab> :bp<CR>
nnoremap <F8> :bn<CR>
nnoremap <F7> :bp<CR>

"Line number
set number

"vim-cpp-enhanced-highlight configuration
let g:cpp_member_variable_highlight = 1
let g:cpp_class_scope_highlight = 1

"Recognize .tikz files as .tex files
syntax on
filetype on
au BufNewFile,BufRead *.tikz set filetype=tex

"Set color
set t_Co=256

"YouCompleteMe configuration
let g:ycm_global_ycm_extra_conf = '${HOME}/.vim/.ycm_extra_conf.py'
