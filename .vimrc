set encoding=UTF-8

" Index using spaces instead of tabs
set expandtab

" The number of spaces to use for each indent
set shiftwidth=2

" Auto indent on next line using previous lines indent
set autoindent 

" The number of spaces to use for a <Tab> using editing operations
set softtabstop=2

" Disable document word wrap
set nowrap

" Up and down wrapped lines
map j gj
map k gk

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle file drawer in/out
map nf :NERDTreeFind<CR>
nmap nt :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Document
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap fd gg=G<CR>

" Files Syntax Highlight
syntax on

" Highlight search matches
set hlsearch

" Clear search with shift+enter
nnoremap <S-x> :noh<CR>

" Search in files
noremap <silent> <Leader>f :Rg<CR>

" Mappings for moving lines and preserving indentation
" http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Hybrid Line relative numbers 
set number relativenumber

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Dont open when only single file selected
let g:NERDTreeQuitOnOpen = 0
" Remove extra noise on UI
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeIgnore=['__pycache__', 'node_modules', '\~$']
let g:NERDTreeShowLineNumbers=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Code Completion (CoC 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

let g:coc_disable_startup_warning = 1
" let g:coc_global_extensions=['coc-omnisharp', 'coc-python']

" Use tab for trigger completion with characters ahead and 
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Enable auto-complete for rust
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1
let g:ale_linters = {'rust': ['analyzer']}

" KEY SHORTCUTS
" Rename symbol
" Usage: use `\rn` to show rename popup
nmap <Leader>rn <Plug>(coc-rename)

" GoTo code navigation
" Usage:
"   `gd` - nav to symbol definition
"   `gy` - nav to type definition
"   `gi` - nav to implementation
"   `gr` - show type references
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Show documentation 
" Usage: use `K` to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedKeys('K', 'in')
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin(expand('~/.vim/plugged'))
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} 
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'junegunn/goyo.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color Schemes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme default

" Needed to enable Go specific commands
" filetype plugin on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" References Guide
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Tmux:
" :resize-pane [-U|-D|-L|-R] [Number|Percentage] - ex: :resize-pane -R 20%
" <CR> + b + , - Rename current window
" <CR> + b + $ - Rename current session
"
" ZenMode:
" :Goyo - toggle goyo 
" :Goyo - turn on or resize goyo
" :Goyo - Turn goyo off
"
" Cursor Movement:
" H - top of window
" M - middle of window
" L - bottom of window
"
" Search:
" :Rg [Pattern] - To search in files or <Leader>f
      
