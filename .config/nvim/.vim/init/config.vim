syntax on
colorscheme onedark

" 補完表示時のEnterで改行をしない
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"

set completeopt=menuone,noinsert
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"

"行番号を表示(切り替え)
set number
"タブ文字の代わりにスペースを使う(切り替え)
set expandtab
"プログラミング言語に合わせて適切にインデントを自動挿入(切り替え)
set smartindent
"各コマンドやsmartindentで挿入する空白の量(数値)
set shiftwidth=2
"Tabキーで挿入するスペースの数(数値)
set softtabstop=2
"カレントディレクトリを自動で移動
set autochdir
"バッファ内で扱う文字コード(文字列)
set encoding=utf-8
"書き込む文字コード(文字列) : この場合encodingと同じなので省略可
set fileencoding=utf-8
"読み込む文字コード(文字列のリスト) : この場合UTF-8を試し、だめならShift_JIS
set fileencodings=utf-8,cp932
"Vimの無名レジスタとシステムのクリップボードを連携(文字列のリスト) : ダメならxclipをインストールで使えるかも
set clipboard+=unnamed,unnamedplus
"help日本語化
set helplang=ja

" 自動でカッコ等を閉じる
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

