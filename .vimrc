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

" Python compatibility. Prevents error with ultisnips and matchtagalways.
if has('python3')
endif

set nocompatible
set number		"Show line numbers
syntax on		"Syntax highlighting
set spell spelllang=es,en_us
set so=4
set linebreak
set expandtab
set tabstop=4
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
inoremap <C-a> <c-g>u<Esc>[szg`]a<c-g>u
set hls
"Make double-<Esc> clear search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>
" Leader twice + t opens a terminal on the right.
noremap <Leader>\t :botright vertical terminal<CR>
" Easy split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Newline without exiting normal mode
nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>


" imap <silent> <Up> <C-o>gk
" imap <silent> <Down> <C-o>gj

let g:polyglot_disabled = ['markdown']
" Plugins instalados con Vim Plug
call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'	
  let g:tex_flavor='latex'
  let g:vimtex_view_method='zathura'
  let g:vimtex_quickfix_mode=1
  let g:vimtex_view_forward_search_on_start=0
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sainnhe/sonokai'
Plug 'scrooloose/nerdtree'
Plug 'raimondi/delimitmate'
Plug 'sirver/ultisnips'
Plug 'sheerun/vim-polyglot'
Plug 'dylanaraps/wal'
Plug 'KeitaNakamura/tex-conceal.vim'
  set conceallevel=2
  let g:tex_conceal='abdmg'
  hi Conceal ctermbg=NONE
  hi Conceal ctermfg=NONE
Plug 'joom/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'valloric/matchtagalways'
Plug 'ap/vim-css-color'
call plug#end()


" Autocomplete per language
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags


" Esta sección ajusta el tamaño de la ventana de QuickFix al texto que contiene
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
colorscheme wal

" Remove conceal highlighting (must go after set background=dark).
highlight clear Conceal


" Hacer que no se agregue sangria a ciertos tags en html
let g:html_indent_autotags = "html,body"

" Commands
command! SortCSSBraceContents :g#\({\n\)\@<=#.,/}/sort
