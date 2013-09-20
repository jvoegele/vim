set nocompatible

" ===== Vundle setup
filetype off    " required for Vundle

set rtp+=~/.vim/vundle/
call vundle#rc()

Bundle 'xmledit'
Bundle 'bufexplorer.zip'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'mileszs/ack.vim'
Bundle 'rking/ag.vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle 'garbas/vim-snipmate'
"Bundle 'vim-scripts/YankRing.vim'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-rails'
Bundle 'unimpaired.vim'
Bundle 'slimv.vim'
Bundle 'taq/vim-rspec'
Bundle 'tpope/vim-cucumber'
Bundle 'rson/vim-conque'
Bundle 'Css-Pretty'
Bundle 'HTML-AutoCloseTag'
Bundle 'scala.vim'
Bundle 'VimClojure'
Bundle 'tslime.vim'
Bundle 'scratch'
"Bundle 'UltiSnips'
Bundle 'textobj-user'
Bundle 'textobj-rubyblock'
Bundle 'camelcasemotion'
Bundle 'unimpaired.vim'
Bundle 'commentary.vim'
Bundle 'abolish.vim'
Bundle 'SQLUtilities'
"Bundle 'Align'
Bundle 'argtextobj.vim'
Bundle 'html5.vim'

filetype plugin indent on
" ===== End Vundle setup

syntax on
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
"nnoremap / /\v
"vnoremap / /\v
" Clear highlighted search results.
nnoremap <leader><space> :noh<cr>
" Navigate brackets with <tab> instead of %
" nnoremap <tab> %
" vnoremap <tab> %
nnoremap <leader>s :Ag 

" Long lines and wrapping
"set textwidth=79
"set colorcolumn=80
set formatoptions=tcqrn1 " See :help fo-table for details

" Make j and k work by screen line instead of file line.
"nnoremap j gj
"nnoremap k gk

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

" Convenient access to BufExplorer
nnoremap <leader>b :BufExplorer<cr>


nnoremap <leader>n :NERDTreeToggle<cr>

let loaded_ruby_ftplugin = 1

" Make parens and braces work like TextMate
"inoremap {<cr> {<cr>}<c-o>O<tab>
"inoremap [<cr> [<cr>]<c-o>O<tab>
"inoremap (<cr> (<cr>)<c-o>O<tab>

autocmd Filetype c,cpp set et tabstop=4 shiftwidth=4 softtabstop=4

if has('gui_running')
  colorscheme wombat
  set guifont=Inconsolata:h14
end

