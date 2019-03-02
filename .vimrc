" colorscheme badwolf
syntax enable
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

"
" UI config
"
set number
set ruler
set cursorline
set wildmenu            " visual autocomplate for command menu
set lazyredraw          " redraw only when need to
set showmatch           " highlight matching [{()}]

"
" searching
"
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR>    " turn of search highlight

"
" folding
"
set foldenable
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " maximal number of folds
set foldmethod=indent

"
" leader shortcuts
"
let mapleader=","       " default leader is \
inoremap jk <esc>       " jk is escape

"
" python specific stuff
"
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
  \ [%l/%L\ (%p%%)
filetype on
filetype indent on      " load filetype-specific indent files
filetype plugin indent on
au filetype py set autoindent
au filetype py set smartindent
au filetype py set textwidth=79   " PEP-8 friendly

"
" pathogen setup
"
call pathogen#infect()
call pathogen#helptags()


