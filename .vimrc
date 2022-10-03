"Set encoding
set encoding=utf-8
scriptencoding utf-8

"Change Vim root
nnoremap <C-r> :cd %:p:h<CR>:pwd<CR>

"Show white spaces
set list
set listchars=eol:^,tab:\|\ ,trail:\ ,space:·,extends:>,precedes:<

"Identation
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2

"Cmd History
set history=5000

"Line Nbr
set number

"Cursor line
"set cursorline

"Activate mouse
set mouse=a

"Share download between Vim and GUI
set clipboard=unnamedplus

"Fold with identation
set foldmethod=syntax
set foldlevel=99
nnoremap <space> za

"Handle Vim
nnoremap q :q!<cr>


"Move lines
nnoremap <M-Up> :m-2<CR>
nnoremap <M-Down> :m+<CR>
vnoremap <M-Up> :m '<-2<CR>gv=gv
vnoremap <M-Down> :m '>+1<CR>gv=gv


" Update a buffer's contents on focus if it changed outside of Vim.
au FocusGained,BufEnter * :checktime

"Syntax color
syntax on

"Alias on Vim
command! -nargs=+ Sub call Sub(<f-args>)
function! Sub( ... )
		execute printf('%%substitute/\<%s\>/%s/g', a:1, a:2)
endfunction

