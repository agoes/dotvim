" Common configuration
" ===========================================================================
set encoding=UTF-8
set smartindent autoindent noexpandtab tabstop=4 shiftwidth=4
set laststatus=2
set t_Co=256                                                                
set noswapfile
set termguicolors
let ayucolor="mirage"
colorscheme ayu
set background=dark
syntax enable
set number
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2
" ===========================================================================

" Keybindings
" ===========================================================================
" Map the leader key to SPACE
let mapleader="\<SPACE>"

" quick move between pane
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" quick vsplit
nmap <Leader>l :vsplit<CR>

" quick split
nmap <Leader>j :split<CR>

" quick close buffer
nmap <Leader>x :close<CR>

" open nerdtree using ctrl+b
nmap <C-b> :NERDTreeToggle<cr>

" quick escape by entering jj in insert mode
ino jj <esc>
cno jj <c-c>

" Jump to file
nnoremap <Leader>o :FZF<CR>

" Jump to tag in all files / buffers
nnoremap <Leader>t :Tags<CR>

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Toggle maximize pane
nnoremap <Leader>w :MaximizerToggle<CR>

" autopairs
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O
vnoremap (( "sc(<C-r>s)<Esc>
vnoremap "" "sc"<C-r>s"<Esc>
vnoremap '' "sc'<C-r>s'<Esc>
vnoremap `` "sc`<C-r>s`<Esc>
" ===========================================================================

" vim-javascript
" ===========================================================================
let g:javascript_plugin_jsdoc = 1
" ===========================================================================

" vim-fzf
set rtp+=~/.fzf

" Airline theme
let g:airline_theme="murmur"

" gvim
" ===========================================================================
if has("gui_running")
    set guioptions-=m  "remove menu bar
    set guioptions-=T "remove toolbar
    set guioptions-=r "remove right-hand scroll bar
    set guioptions-=L "remove left-hand scroll bar. Fix for TagBar.
	set guifont=Meslo\ LG\ L\ DZ\ for\ Powerline\ 10.5
    set linespace=2
    set ambiwidth=double
    set guitablabel=%t
endif
" ===========================================================================
