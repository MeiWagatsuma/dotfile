runtime! ./config/*.vim

set background=dark
set termguicolors
colorscheme deep-space
" init.vimを保存したら自動反映
autocmd BufWritePost  ~/.config/nvim/config/*.vim  so ~/.config/nvim/init.vim
