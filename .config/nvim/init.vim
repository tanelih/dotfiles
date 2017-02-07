call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sleuth'
Plug 'scrooloose/nerdcommenter'
Plug 'townk/vim-autoclose'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'altercation/vim-colors-solarized'
Plug 'othree/yajs.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/es.next.syntax.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" basic options

set number
set noshowmode
set background=dark

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

set clipboard=unnamedplus

" fix issue with file watchers such as 'webpack' etc. not picking up changes
" to the files being processed
set backupcopy=yes

" syntax highlighting

syntax on
colorscheme solarized

" more options...

let mapleader = ','

let g:ctrlp_working_path_mode = 0
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

" airline configuration

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = 'Ξ'
let g:airline_symbols.branch = '⎇'

au BufRead,BufNewFile Vagrantfile set filetype=ruby
