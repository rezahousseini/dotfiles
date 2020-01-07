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

" Tagbar
Plug 'majutsushi/tagbar'

" Meson plugin
Plug 'igankevich/mesonic'

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

" Afterglow color scheme config
colorscheme afterglow
let g:afterglow_inherit_background=1
let g:afterglow_italic_comments=1

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
set listchars=eol:¶
set list
