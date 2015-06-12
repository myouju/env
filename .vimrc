"" bundleのディレクトリ指定
"set runtimepath+=~/.vim/bundle/neobundle.vim/
"" neobundleを読み込む
"call neobundle#begin(expand('~/.vim/bundle/'))
"" neobundle を管理
"NeoBundleFetch 'Shougo/neobundle.vim'
"
"" **** 導入するプラグイン ****
"NeoBundle 'Flake8-vim'
"NeoBundle 'davidhalter/jedi-vim'
"NeoBundle 'hynek/vim-python-pep8-indent'
"NeoBundle 'Townk/vim-autoclose'
"NeoBundle 'scrooloose/syntastic'
"
"" neobundle を閉じる
"call neobundle#end()
"
"" インストールするか自動でチェック
"NeoBundleCheck
"
""保存時に自動でチェック
"let g:PyFlakeOnWrite = 1
"let g:PyFlakeCheckers = 'pep8,mccabe,pyflakes'
"let g:PyFlakeDefaultComplexity=10
"
"let g:syntastic_python_checkers = ['pyflakes', 'pep8']


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

