syntax on
filetype plugin on

set encoding=utf-8
set hidden
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set backspace=indent,eol,start
set relativenumber
set wildmenu
set wildmode=list:longest
set scrolloff=3
"set cursorline
set ruler
set laststatus=2
set list listchars=tab:»\ ,trail:·  " Highlights tabs and trailing spaces
"set undofile    " Allow undo even after closing a file.
set ttyfast

" Search settings
set hlsearch
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
" Use normal regular expressions.
nnoremap / /\v
vnoremap / /\v
" Clear highlighted search results.
nnoremap <leader><space> :noh<cr>
" Navigate brackets with <tab> instead of %
" nnoremap <tab> %
" vnoremap <tab> %
nnoremap <leader>s :Ack 

" Long lines and wrapping
set textwidth=79
"set colorcolumn=80
set formatoptions=tcqrn1 " See :help fo-table for details

" Make j and k work by screen line instead of file line.
nnoremap j gj
nnoremap k gk

" Strip all trailing whitespace.
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Split window handling
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>w <C-w>v<C-w>l
" Close buffer without closing window.
nmap <C-w>d <Plug>Kwbd

nnoremap <leader>n :NERDTreeToggle<cr>


