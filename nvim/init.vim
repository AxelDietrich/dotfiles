syntax on
set nu ru et
set ts=2 sts=2 sw=2
set cursorline
set hlsearch
set number
set relativenumber
inoremap jk <ESC>
set noswapfile 
set hlsearch
set ignorecase
set incsearch
set hidden
set mouse=a
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set inccommand=split
set t_Co=256
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" True color if available
let term_program=$TERM_PROGRAM

" Check for conflicts with Apple Terminal app
if term_program !=? 'Apple_Terminal'
    set termguicolors
else
    if $TERM !=? 'xterm-256color'
        set termguicolors
    endif
endif

call plug#begin()
  " Plug 'hrsh7th/cmp-nvim-lsp'
  " Plug 'hrsh7th/cmp-buffer'
  " Plug 'hrsh7th/cmp-path'
  " Plug 'hrsh7th/cmp-cmdline'
  " Plug 'hrsh7th/nvim-cmp'

	Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  Plug 'arzg/vim-colors-xcode'

	Plug 'jiangmiao/auto-pairs'

"	Plug 'junegunn/fzf.vim'
"	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

  Plug 'numToStr/Comment.nvim'

	Plug 'neovim/nvim-lspconfig'	

  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim' 

   Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
   Plug 'nvim-treesitter/nvim-treesitter-textobjects'

"  Plug 'ray-x/go.nvim'
  Plug 'tpope/vim-fugitive'
  Plug 'theprimeagen/vim-be-good'

  "Plug 'airblade/vim-gitgutter'

call plug#end()

set termguicolors
colorscheme xcodedark

" autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()

lua require("axdietrich")
lua require('Comment').setup()

nnoremap ff <cmd>Telescope find_files<cr>
nnoremap fi <cmd>Telescope live_grep<cr>
nnoremap fb <cmd>Telescope buffers<cr>
" vim.lsp.set_log_level("debug")
