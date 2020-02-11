call plug#begin()

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Linting
Plug 'neomake/neomake'
Plug 'w0rp/ale'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Comments
Plug 'tpope/vim-commentary'

" Search
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

" Airline theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Color scheme
Plug 'danilo-augusto/vim-afterglow'
Plug 'endel/vim-github-colorscheme'
Plug 'altercation/vim-colors-solarized'

" Tagbar
Plug 'majutsushi/tagbar'

" Meson plugin
Plug 'igankevich/mesonic'

" Line indent
"Plug 'Yggdroot/indentLine'

" Tex plugins
Plug 'lervag/vimtex'
Plug 'Konfekt/FastFold'
"Plug 'matze/vim-tex-fold'

" Easy motion
Plug 'easymotion/vim-easymotion'

" YouCompleteMe
Plug 'ycm-core/YouCompleteMe'

call plug#end()

"Completion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set ofu=syntaxcomplete#Complete
set completeopt=noinsert,menuone,noselect

"General
syntax on
set nu
filetype plugin indent on
set nocp
set ruler
set wildmenu
set mouse-=a
set t_Co=256
set showcmd

"Code folding
set foldmethod=manual

"Tabs and spacing
set autoindent
set cindent
set tabstop=2
set expandtab
set shiftwidth=2
set smarttab

"Search
set hlsearch
set incsearch
set ignorecase
set smartcase
set diffopt +=iwhite

"System clipboard support
set clipboard+=unnamedplus

" Neomake config
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 1s; no delay when writing).
call neomake#configure#automake('nrwi', 500)

" Airline theme
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_theme = 'powerlineish'
let g:airline_powerline_fonts = 1

" Toggle through files with F7 and F8 keys
nnoremap <F8> :bn<CR>
nnoremap <F7> :bp<CR>

" Move backups to separate directory
set backup
set backupdir=~/.vim/backup//,.

" Move swap files to separate directory
set directory=~/.vim/swap//,.

" Color scheme config
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" Toggle tagbar
nmap <F4> :TagbarToggle<CR>

" Toggle NERDTree
nmap <F3> :NERDTreeToggle<CR>

" Change vimdiff colorscheme
if &diff
  colorscheme github
  "colorscheme molokai
  "colorscheme evening
endif

"Show line endings
set listchars=eol:¶,tab:>·,trail:~,extends:>,precedes:<,space:␣

" Toggle listchars
nmap <F5> :set list!<CR>

" Use primary clipboard
set clipboard=unnamed

" Set tex flavor
let g:tex_flavor = "latex"

" Easy motion use leader key only once
map <Leader> <Plug>(easymotion-prefix)

" YCM options
let g:ycm_clangd_args = ['--compile-commands-dir=./build']

" ALE options
let g:ale_cpp_clang_options = '-Wall -O2 -std=c++1z'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++1z'
let g:ale_sign_error = '✗'
let g:ale_sign_info = 'i'
let g:ale_sign_warning = '⚡'
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
let g:ale_linters = {'c': ['clang'], 'cpp': ['clangd']}
let g:airline#extensions#ale#enabled = 1
let b:ale_fixers = {'cpp': ['clang-format']}
