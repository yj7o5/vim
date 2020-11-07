" Index using spaces instead of tabs
set expandtab

" The number of spaces to use for each indent
set shiftwidth=4

" Auto indent on next line using previous lines indent
set autoindent 

" The number of spaces to use for a <Tab> using editing operations
set softtabstop=4

" Up and down wrapped lines
map j gj
map k gk

" Hybrid Line relative numbers 
set number relativenumber

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings for moving lines and preserving indentation
" http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle file drawer in/out
nmap ,n :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Files Syntax Highlight
syntax on

" Highlight search matches
set hlsearch

" Clear search with shift+enter
nnoremap <S-x> :noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Dont open when only single file selected
let NERDTreeQuitOnOpen = 0
" Remove extra noise on UI
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Code Completion (CoC 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_disable_startup_warning = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin(expand('~/.vim/plugged'))
Plug 'arcticicestudio/nord-vim'
call plug#end()


" Color theme
colorscheme nord 
