call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'

Plug 'scrooloose/nerdcommenter'

Plug 'townk/vim-autoclose'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'terryma/vim-multiple-cursors'

Plug 'altercation/vim-colors-solarized'
Plug 'itchyny/lightline.vim'

Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'stephenway/postcss.vim'

call plug#end()

" basic options

set background=dark

set number
set noshowmode
set clipboard=unnamed

set expandtab
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2

set mouse=a
set scrolloff=3
set hidden
set backspace=indent,eol,start

set ignorecase
set smartcase

" syntax highlighting

syntax on
colorscheme solarized

" more options...

let mapleader = ','

let g:lightline = {
  \ 'colorscheme': 'solarized_dark',
  \ }

let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_custom_ignore = 'node_modules\|DS_STORE\|git'

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentWholeLinesInVMode = 1

let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-e>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" fixes to syntax highlighting etc...

highlight LineNr ctermfg=black ctermbg=NONE
highlight VertSplit ctermfg=black ctermbg=black
highlight link xmlEndTag xmlTag
highlight Error ctermbg=red ctermfg=white

" highlight lines over 80 characters long as error

match Error /\%81v.\+/

" trim trailing spaces

autocmd BufWritePre * %s/\s\+$//e
