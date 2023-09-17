"comment
set nocompatible              " be iMproved, required
set timeoutlen=1000	      " Set timeout length to 1500 ms
filetype off                  " required
set incsearch
set hlsearch
set ignorecase
set wildmenu
set encoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
call vundle#end()            " required

filetype plugin indent on    " required

function! ToggleLineNumber()
 	set nonumber!
endfunction

let mapleader = " "
nnoremap <C-p> :Files<Cr>
nnoremap <C-w> :w<Cr>
nnoremap <C-x> :x<Cr>
nnoremap <C-q>q :q<Cr>
nnoremap <C-q> :bp<cr>:bd #<cr>
nnoremap <C-g> :
nnoremap <C-t> :NERDTreeToggle<Cr>
nnoremap <leader>n :call ToggleLineNumber()<Cr>
nnoremap <leader>h :noh<Cr>
nnoremap <leader>i :PluginInstall<Cr>
nnoremap <leader>c :set ignorecase!<Cr>
nnoremap <leader>p :set nopaste!<CR>

" Automatically close NERDTree when you open a file
let NERDTreeQuitOnOpen=1

" Alternative leader and shortcut
" map <leader>n :set number<CR>
"let mapleader="-"
"map <leader>n :set nonumber<CR>

" Airline
"set t_Co=256
"To allow status bar to be seen even before splitting
"set laststatus=2
"let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1 " Enable the list of buffers

"let g:airline#extensions#tabline#formatter = 'default'  " f/p/file-name.js
"let g:airline#extensions#tabline#formatter = 'jsformatter' " path-to/f
"let g:airline#extensions#tabline#formatter = 'unique_tail' " file-name.js
let g:airline#extensions#tabline#formatter = 'unique_tail_improved' " f/p/file-name.js
let g:airline_theme='dark'
let g:airline#extensions#branch#enabled=1


" Note: You must define the dictionary first before setting values.
" Also, it's a good idea to check whether it exists as to avoid
" accidentally overwriting its contents.


if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

  " unicode symbols
"  let g:airline_left_sep = '»'
"  let g:airline_left_sep = '▶'
"  let g:airline_right_sep = '«'
"  let g:airline_right_sep = '◀'
"  let g:airline_symbols.colnr = ' ㏇:'
"  let g:airline_symbols.colnr = ' ℅:'
"  let g:airline_symbols.crypt = '🔒'
"  let g:airline_symbols.linenr = '☰'
"  let g:airline_symbols.linenr = ' ␊:'
"  let g:airline_symbols.linenr = ' ␤:'
"  let g:airline_symbols.linenr = '¶'
"  let g:airline_symbols.maxlinenr = ''
"  let g:airline_symbols.maxlinenr = '㏑'
"  let g:airline_symbols.branch = '⎇'
"  let g:airline_symbols.paste = 'ρ'
"  let g:airline_symbols.paste = 'Þ'
"  let g:airline_symbols.paste = '∥'
"  let g:airline_symbols.spell = 'Ꞩ'
"  let g:airline_symbols.notexists = 'Ɇ'
"  let g:airline_symbols.notexists = '∄'
"  let g:airline_symbols.whitespace = 'Ξ'

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
 let g:airline_symbols.colnr = ':'
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ' :'
"  let g:airline_symbols.maxlinenr = '☰ '
  let g:airline_symbols.dirty='⚡'

" If you only see boxes here it may be because your system doesn't have
" the correct fonts. Try it in vim first and if that fails see the help
" pages for vim-airline :help airline-troubleshooting
"
nnoremap <C-Left> :bp<Cr>
nnoremap <C-Right> :bn<Cr>
