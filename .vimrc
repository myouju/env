call plug#begin()
Plug 'fatih/vim-go'
Plug 'SirVer/ultisnips'
Plug 'kamykn/spelunker.vim'
Plug 'tomlion/vim-solidity'
call plug#end()
let g:go_fmt_command = "goimports"
let g:go_fmt_options = "-w"
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet']
let mapleader = "\<Space>"
au FileType go nmap <leader>s <Plug>(go-def-split)
au FileType go nmap <leader>v <Plug>(go-def-vertical)

nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap < <><LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
imap <c-h> <Left>
imap <c-j> <Down>
imap <c-k> <Up>
imap <c-l> <Right>
imap <c-e> <ESC>lwi
imap <c-b> <ESC>lbi
imap <c-d> <BS>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>
syntax on
set number
set autoindent
set shiftwidth=2
set expandtab
set encoding=utf-8
set completeopt=menuone
set t_Co=256
set hlsearch
set tabstop=4
set nospell
colorscheme hybrid
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
  exec "imap " . k . " " . k . "<C-N><C-P>"
endfor

imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"

autocmd BufRead,BufNewFile *.q set syntax=sql

" バックアップファイル
"" 有効化
set backup
"" 出力先
set backupdir=~/.vim/backup
" スワップファイル
"" 有効化
set swapfile
"" 出力先
set directory=~/.vim/swap
" UNDOファイル
"" 有効化
set undofile
"" 出力先
set undodir=~/.vim/undo
