call plug#begin()

" ファイラー
Plug 'lambdalisue/fern.vim'
  Plug 'yuki-yano/fern-preview.vim'
  Plug 'lambdalisue/fern-git-status.vim'
  Plug 'lambdalisue/fern-hijack.vim'
Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'obaland/vfiler.vim'

" Plug 'Shougo/ddc.vim'
"  Plug 'vim-denops/denops.vim'
	" sources
"    Plug 'Shougo/ddc-around'
"    Plug 'Shougo/ddc-nvim-lsp'
"      Plug 'neovim/nvim-lspconfig'
"        Plug 'williamboman/nvim-lsp-installer'
  " filters
 "   Plug 'Shougo/ddc-matcher_head'
  "  Plug 'Shougo/ddc-sorter_rank' 

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()
