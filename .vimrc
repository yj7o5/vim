set encoding=UTF-8

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
nmap nf :NERDTreeFind<CR>
nmap nt :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Format document
nnoremap fd gg=G<CR>
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
let g:NERDTreeQuitOnOpen = 0
" Remove extra noise on UI
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeIgnore=['__pycache__', 'node_modules', '\~$']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Code Completion (CoC 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_disable_startup_warning = 1
let g:coc_global_extensions=['coc-omnisharp', 'coc-python']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin(expand('~/.vim/plugged'))
Plug 'arcticicestudio/nord-vim'
" Plug 'ryanoasis/vim-devicons'

Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install() }}
call plug#end()
