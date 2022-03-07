" colorscheme badwolf
colorscheme eclipse
" desert was old
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

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 80)
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
" jk is escape
inoremap jk <esc>
"
" UltiSnips maps
"
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
 let g:UltiSnipsSnippetsDir = "~/.vim/ultisnips"
let g:UltiSnipsSnippetDirectories=["~/.vim/ultisnips"]

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

" jedi-vim - autocompletion
au filetype python setlocal splitbelow
au filetype python setlocal pumheight=5
au filetype python setlocal completeopt-=preview

"
" 
" ale - code linter
" 
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8'], 'fortran': ['gcc']}
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

" quick toggle to paste without auto-indent
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

