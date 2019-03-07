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

"
" NERD_tree config
"
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
map <F3> :NERDTreeToggle<CR>

" Syntax for multiple tag files are
" set tags=/my/dir1/tags, /my/dir2/tags
set tags=./tags;,./.tags;

" TagList Plugin Configuration
"let Tlist_Ctags_Cmd='ctags'
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 1
map <F7> :TlistToggle<CR>

" Viewport Controls
" ie moving between split panes
map <silent>,h <C-w>h
map <silent>,j <C-w>j
map <silent>,k <C-w>k
map <silent>,l <C-w>l

