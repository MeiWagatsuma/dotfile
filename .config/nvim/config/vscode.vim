let mapleader = "\<Space>"
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab
set number

nnoremap x "_x
nnoremap s "_s
nmap j gj
nmap k gk
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>z :noh<CR>
" ("aaaa")
nnoremap <Leader>l $
nnoremap <Leader>h ^
nnoremap <Leader>m %

imap jj <ESC>

vmap <Leader>l &
vmap <Leader>h ^
vmap <Leader>m %
vnoremap > >>v
vnoremap < <<v
vmap <Leader>j <ESC>


call plug#begin()
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	if exists('g:vscode') " VSCode extension
			
	else " ordinary neovim
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
			let g:airline#extensions#tabline#enabled = 1 " タブラインを表示
			let g:airline_powerline_fonts = 1            " Powerline Fontsを利用
		Plug 'jiangmiao/auto-pairs'

						
endif
call plug#end()






















