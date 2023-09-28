call plug#begin()
  Plug 'airblade/vim-gitgutter'
  Plug 'dense-analysis/ale'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'morhetz/gruvbox'
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme gruvbox
let g:ale_completion_enabled = 1
let g:ale_fixers = {'graphql': ['prettier'], 'javascript': ['prettier'], 'php': ['phpcbf']}
let mapleader = " "
nmap - :NERDTreeFind<cr>
nmap <leader>/ :grep <c-r><c-w><cr>:copen<cr>
nmap <leader>k :copen<cr>
nmap <leader>a :ALECodeAction<cr>
nmap <leader>b :Buffers<cr>
nmap <leader>c :Commands<cr>
nmap <leader>d :ALEGoToDefinition<cr>
nmap <leader>g :GitFiles<cr>
nmap <leader>h :ALEHover<cr>
nmap <leader>i :ALEGoToImplementation<cr>
nmap <leader>l :ALEFix<cr>
nmap <leader>n :NERDTreeFocus<cr>
nmap <leader>o :only<cr>
nmap <leader>r :ALERename<cr>
nmap <leader>s :Git<cr>
nmap <leader>y :ALEGoToTypeDefinition<cr>
set clipboard+=unnamedplus grepprg=ag mouse=a number 
