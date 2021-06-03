" This file will hold Neovim configuration.

" Set the Leader key to be the space bar
let mapleader="\<Space>"
let maplocalleader="\<tab>"

" All the plugins
" Call PlugInstall to install new plugins
" Call UpdateRemotePlugins to update the plugins
call plug#begin()

" Programming
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'lervag/vimtex'

" Theme/Aesthetic
Plug 'danilo-augusto/vim-afterglow'
Plug 'rakr/vim-two-firewatch'
Plug 'sts10/vim-pink-moon'
Plug 'wadackel/vim-dogrun'
Plug 'Badacadabra/vim-archery'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Github
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

call plug#end()

" Basic Set ups
filetype plugin indent on
syntax on
set noerrorbells
set number relativenumber
set incsearch
set nohlsearch
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set nobackup
set noswapfile
set nowrap
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
let g:rainbow_active = 1
set textwidth=80

" Color/Theme customizations
" skyrim -> afterglow ; zenburn
" gow -> pink-moon ; angr
" hzd -> vim-two-firewatch ; twofirewatch
" sw  -> dogrun ; violet
" world -> archery ; archery
let g:two_firewatch_italics=1
let g:airline_powerline_fonts = 1
colorscheme pink-moon
let g:airline_theme = 'angr'

" Enables autocompletion:
set wildmode=longest,list,full

" Disables automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Automatically deletes all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Nerdtree Configuration
nmap <C-t> :NERDTreeToggle<cr>

" Latex Configuration
let g:tex_flavor = 'latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtex_view_forward_search_on_start=0
autocmd FileType latex,tex setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Vim Window manipulation keybinds
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>c :wincmd c<CR>
nnoremap <leader>v :wincmd v<CR>
