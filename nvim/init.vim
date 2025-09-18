call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'nvim-lualine/lualine.nvim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'StanAngeloff/php.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-commentary'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()

syntax enable
set background=dark
colorscheme gruvbox

set number
" set relativenumber
set cursorline
set showmatch
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set clipboard=unnamedplus
set exrc
set secure
filetype plugin indent on

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-f> :Rg<CR>

inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <Enter> pumvisible() ? coc#_select_confirm(): "\<Enter>"
inoremap <silent><expr> <C-Space> coc#refresh()

nmap <C-p> :Telescope find_files<CR>
nmap <C-f> :Telescope live_grep<CR>

let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-tsserver',
  \ 'coc-phpls',
  \ 'coc-prettier',
  \ 'coc-eslint'
  \ ]

