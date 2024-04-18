call plug#begin()
  Plug 'MunifTanjim/nui.nvim', { 'on': 'Neotree' }
  Plug 'airblade/vim-gitgutter'
  Plug 'dense-analysis/ale', { 'for': ['php', 'python'] }
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'morhetz/gruvbox'
  Plug 'nvim-lua/plenary.nvim', {'on': 'Neotree'}
  Plug 'nvim-neo-tree/neo-tree.nvim', { 'on': 'Neotree' }
  Plug 'tpope/vim-fugitive', { 'on': 'Git' }
  Plug 'folke/which-key.nvim'
  Plug 'echasnovski/mini.nvim'
  Plug 'max397574/better-escape.nvim'
call plug#end()

lua require("better_escape").setup()
lua require("mini.basics").setup()
lua require("mini.comment").setup()
lua require("mini.completion").setup()
lua require("mini.cursorword").setup()
lua require("mini.splitjoin").setup()
lua require("mini.starter").setup()
lua require("mini.tabline").setup()
lua require("mini.trailspace").setup()
lua require("which-key").setup()

colorscheme gruvbox
let g:ale_fixers = {'graphql': ['prettier'], 'html': ['tidy'], 'javascript': ['prettier'], 'php': ['phpcbf']}
let mapleader = " "
nmap <leader>/ gcc
nmap <leader>O :only<cr>
nmap <leader>Q :quitall<cr>
nmap <leader>W :wa<cr>
nmap <leader>c :bdelete<cr>
nmap <leader>e :Neotree focus toggle<cr>
nmap <leader>fC :Commands<cr>
nmap <leader>fO :copen<cr>
nmap <leader>fb :Buffers<cr>
nmap <leader>fc :grep <c-r><c-w><cr>:copen<cr>
nmap <leader>ff :Files<cr>
nmap <leader>fg :GitFiles<cr>
nmap <leader>gg :Git<cr>
nmap <leader>la :wLECodeAction<cr>
nmap <leader>lf :ALEFix<cr>
nmap <leader>lh :ALEHover<cr>
nmap <leader>lr :ALERename<cr>
nmap <leader>o :Neotree focus reveal toggle<cr>
nmap <leader>pc :PlugClean<cr>
nmap <leader>pi :PlugInstall --sync<cr>
nmap <leader>ps :PlugStatus<cr>
nmap <leader>q :quit<cr>
nmap <leader>c :bunload<cr>
nmap <leader>ue :edit $MYVIMRC<cr>
nmap <leader>w :w<cr>
nmap [b :bprev<cr>
nmap ]b :bnext<cr>
nmap gI :ALEGoToImplementation<cr>
nmap gY :ALEGoToTypeDefinition<cr>
nmap gy :ALEGoToDefinition<cr>
set clipboard+=unnamedplus grepprg=ag mouse=a number relativenumber

autocmd BufWritePost $MYVIMRC source $MYVIMRC
autocmd FileType graphql setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType json setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType php setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType python setlocal expandtab shiftwidth=2 softtabstop=2
