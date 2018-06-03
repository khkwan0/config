set cindent
set expandtab
set tabstop=2
set shiftwidth=2
set number
set ttimeoutlen=10
colorscheme zellner
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

map <silent> <C-n> :NERDTreeFocus<CR>

autocmd BufWritePost,BufEnter *.js Neomake

let g:neomake_warning_sign = {
  \ 'text': 'W',
  \ 'texthl': 'WarningMsg',
  \ }
let g:neomake_error_sign = {
  \ 'text': 'E',
  \ 'texthl': 'ErrorMsg',
  \ }
let g:neomake_open_list = 2

call plug#begin('~/.local/share/nvim/plugged')

"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'

call plug#end()

let g:airline_powerline_fonts = 1

if ! has('gui_running')
	set ttimeoutlen=50
	augroup FastEscape
		autocmd!
		au InsertEnter * set timeoutlen=0
		au InsertLeave * set timeoutlen=50
  augroup END
endif
set nois

set noeb vb t_vb=
