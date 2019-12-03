" Common configuration
" ===========================================================================
set encoding=UTF-8
set smartindent autoindent expandtab tabstop=4 shiftwidth=4
set laststatus=2
set t_Co=256                                                                
set noswapfile
set background=dark
colorscheme gruvbox
let g:gruvbox_termcolors=16
syntax enable
set number
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2
" ===========================================================================

" Fix scrolling lags
" ===========================================================================
set regexpengine=1
set noshowcmd
set synmaxcol=200
" ===========================================================================

" Keybindings
" ===========================================================================
" Map the leader key to SPACE
let mapleader="\<SPACE>"

" quick move between pane
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l

" quick vsplit
nmap <leader>l :vsplit<cr>

" quick split
nmap <leader>j :split<cr>

" quick close buffer
nmap <leader>x :close<cr>

" open nerdtree using ctrl+b
nmap <c-b> :NERDTreeToggle<cr>

" quick escape by entering jj in insert mode
ino jj <esc>
cno jj <c-c>

" Jump to file
nnoremap <leader>o :FZF<cr>

" Jump to tag in all files / buffers
nnoremap <leader>t :Tags<cr>

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
nnoremap <leader>w :MaximizerToggle<cr>

" autopairs
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<cr> {<cr>}<esc>O
vnoremap (( "sc(<c-r>s)<esc>
vnoremap "" "sc"<c-r>s"<esc>
vnoremap '' "sc'<c-r>s'<esc>
vnoremap `` "sc`<c-r>s`<esc>

" Ack.vim
nmap <leader>f :Ack 
nmap <leader>fc :Ack <cword><cr>
vnoremap <leader>fw y:Ack <c-r>=fnameescape(@")<cr><cr>
" ===========================================================================

" vim-javascript
" ===========================================================================
let g:javascript_plugin_jsdoc = 1
" ===========================================================================

" vim-fzf
set rtp+=~/.fzf

" Airline theme
let g:airline_theme="murmur"

" Use ag for ack.vim 
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Ale
let g:ale_fixers = {'javascript': ['eslint']}

" gvim / macvim
" ===========================================================================
if has("gui_running")
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
	set guifont=Meslo\ LG\ L\ DZ\ for\ Powerline\ 10.5
    set linespace=2
    set ambiwidth=double
    set guitablabel=%t
    set guicursor+=a:blinkon0
endif
" ===========================================================================
