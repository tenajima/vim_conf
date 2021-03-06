"===============================================================================================
"deinの設定
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/dein')
  call dein#begin('~/.vim/dein')
  call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')
  "プラグインリストを収めたTOMLファイル
  "予めTOMLファイルを用意しておく
  let s:toml_dir  = $HOME . '/.vim/dein/toml'
  let s:toml      = s:toml_dir . '/dein.toml'
  let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'
  "TOMLをキャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
if dein#check_install()
   call dein#install()
endif
"================================================================================================
"https://qiita.com/mfujimori/items/9fd41bcd8d1ce9170301 を参考にしてあります.
" setting
" クリップボード有効化
set clipboard+=unnamed
"カーソルの番号表示
set number ruler
"文字コードをutf-8に設定
set fenc=utf-8
"バックアップファイルを作らない
set nobackup
"スワップファイルを作らない
set noswapfile
"編集中のファイルが変更されたら自動で読み直す
set autoread
"バッファが編集中でもその他のファイルを開けるように
set hidden
"入力中のコマンドをステータスに表示する
set showcmd

"見た目系
"行番号を表示
set number
"現在の行を強調表示
set cursorline
"行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
"インデントはスマートインデント
set smartindent
"ビープ音を可視化
set visualbell
"括弧入力時の対応する括弧を表示
set showmatch
"ステータスラインを常に表示
set laststatus=2
"コマンドの補完
set wildmode=list:longest
"折り返し時に表示行単位での移動をできるようにする
nnoremap j gj
nnoremap k gk

"Tab系
"更かし文字を可視化
set list listchars=tab:\▸\-
"Tab文字を半角スペースにする
set expandtab
"行頭以外のTab文字の表示幅(スペースいくつ分)
set tabstop=4
"行頭でのTab文字の表示幅
set shiftwidth=4

"検索系
"検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
"検索文字列に文字列が含まれている場合は区別して検索する
set smartcase
"検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
"検索時に最後まで行ったら最初に戻る
set wrapscan
"検索語をハイライト表示
set hlsearch
"ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set backspace=indent,eol,start
"===============================================================================================
"マイコマンド
inoremap <C-n> <Esc>o
inoremap <C-a> <Esc>A
imap <C-l> <Right>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-h> <Left>
inoremap jj <Esc>
noremap <C-r> :QuickRun<CR>
