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
set shiftwidth=4
set expandtab
set encoding=utf-8
set completeopt=menuone
set t_Co=256
set hlsearch
set tabstop=4
colorscheme hybrid
"colorscheme jellybeans
"let g:jellybeans_use_lowcolor_black = 0
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
  exec "imap " . k . " " . k . "<C-N><C-P>"
endfor

imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"
