syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set relativenumber
set nu
set nohlsearch
set nowrap
set ignorecase
set smartcase
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set incsearch
set scrolloff=8
set encoding=utf8
let g:airline_powerline_fonts = 1
set colorcolumn=80
set spell
set spelllang=es,en
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('/Users/juan/.local/share/nvim/site/plugged')
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'epilande/vim-react-snippets'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'mattn/emmet-vim'
let g:coc_global_extensions = ['coc-tsserver',
\'coc-python',
\ 'coc-pydocstring',
\ 'coc-json',
\ 'coc-html-css-support',
\ 'coc-css',
\ 'coc-sql',
\ 'coc-yaml']
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', {
\ 'do': 'yarn install',
\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'lervag/vimtex'
Plug 'morhetz/gruvbox'
call plug#end()

if (has("termguicolors"))
set termguicolors
endif
syntax enable

colorscheme gruvbox
let g:airline_theme='base16_gruvbox_dark_hard'
let maplocalleader = "\\"
let mapleader = " "
" Find files using Telescope command-line sugar.
nnoremap <leader>f :Files<CR>
nnoremap <localleader>tt :!tectonic %<CR>

let g:vimtex_compiler_method = 'tectonic'
let g:prettier#autoformat_config_present = 1
let g:prettier#config#config_precedence = 'prefer-file'
