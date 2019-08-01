call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'townk/vim-autoclose'

call plug#end()

" basic options

set number

set background=dark
set clipboard=unnamed

" fix issue with file watchers such as 'webpack' etc. not picking up changes
" to the files being processed

set backupcopy=yes

" syntax highlighting

syntax on
colorscheme solarized

" plugin options

let mapleader = ','

let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = 'node_modules\|DS_STORE\|git'

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentWholeLinesInVMode = 1

" fixes to syntax highlighting etc...

highlight LineNr    ctermfg=black ctermbg=NONE
highlight VertSplit ctermfg=black ctermbg=black
highlight Error     ctermbg=red   ctermfg=white

" highlight lines over 100 characters long as error

match Error /\%101v.\+/

" trim trailing spaces

autocmd BufWritePre * %s/\s\+$//e

" airline configuration

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = 'Ξ'
let g:airline_symbols.branch = '⎇'

