" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

set number		"Show line numbers
syntax on		"Syntax highlighting
set spell spelllang=es,en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
inoremap <C-a> <c-g>u<Esc>[szg`]a<c-g>u

" Plugins instalados con Vim Plug
call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'	
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sainnhe/sonokai'
Plug 'scrooloose/nerdtree'
Plug 'raimondi/delimitmate'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'flazz/vim-colorschemes'
Plug 'sirver/ultisnips'
call plug#end()


"Esta sección ajusta el tamaño de la ventana de QuickFix al texto que contiene
au FileType qf call AdjustWindowHeight(2, 10)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction
"

" Apertura automática de NERDTree al abrir
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


"coc.nvim
source ~/.vim/coc.config


"UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


let g:tex_flavor = 'latex'
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1


" Esquema de color
syntax enable
set background=dark
colorscheme eldar
