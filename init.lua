local path_package = vim.fn.stdpath('data') .. '/site'

local mini_path = path_package .. '/pack/deps/start/mini.nvim'
if not vim.loop.fs_stat(mini_path) then
  vim.cmd('echo "Installing `mini.nvim`" | redraw')
  vim.fn.system({'git', 'clone', '--filter=blob:none', 'https://github.com/echasnovski/mini.nvim', mini_path})
  vim.cmd('packadd mini.nvim | helptags ALL')
end

require('mini.deps').setup({path = {package = path_package}})
local add = MiniDeps.add

add('folke/which-key.nvim')
add('github/copilot.vim')
add('max397574/better-escape.nvim')
add('morhetz/gruvbox')
add('neovim/nvim-lspconfig')
add('williamboman/mason-lspconfig.nvim')
add('williamboman/mason.nvim')

require("mason").setup()
require("mason-lspconfig").setup()
require('better_escape').setup()
require('mini.basics').setup()
require('mini.comment').setup()
require('mini.completion').setup()
require('mini.extra').setup()
require('mini.files').setup()
require('mini.notify').setup()
require('mini.pick').setup()
require('mini.splitjoin').setup()
require('mini.statusline').setup()
require('mini.tabline').setup()
require('mini.visits').setup()
require('which-key').setup()
require("lspconfig").lua_ls.setup {}
require('mason-lspconfig').setup { ensure_installed={ "lua_ls", "phpactor" }}

vim.cmd('colorscheme gruvbox')
vim.g.mapleader = ' '
vim.keymap.set('n', '<Leader>c', ':bdelete<CR>', { desc='Close the current buffer' })
vim.keymap.set('n', '<Leader>e', function(...) if not MiniFiles.close() then MiniFiles.open() end end, { desc='Toggle the file explorer' })
vim.keymap.set('n', '<Leader>fb', ':Pick buffers<CR>', { desc='Find buffers'})
vim.keymap.set('n', '<Leader>fC', ':Pick commands<CR>', { desc='Find commands'})
vim.keymap.set('n', '<Leader>fc', ':Pick grep <c-r><c-w><CR>', { desc='Find word under the cursor'})
vim.keymap.set('n', '<Leader>fe', ':Pick explorer<CR>', { desc='Find files (explorer)'})
vim.keymap.set('n', '<Leader>ff', ':Pick files<CR>', { desc='Find files' })
vim.keymap.set('n', '<Leader>fg', ':Pick git_files<CR>', { desc='Find git files'})
vim.keymap.set('n', '<Leader>fh', ':Pick history<CR>', { desc='Find history'})
vim.keymap.set('n', '<Leader>fH', ':Pick help<CR>', { desc='Find help'})
vim.keymap.set('n', '<Leader>fl', ':Pick buf_lines<CR>', { desc='Find lines'})
vim.keymap.set('n', '<Leader>fo', ':Pick visit_paths<CR>', { desc='Find visited paths'})
vim.keymap.set('n', '<Leader>fs', ":Pick lsp scope='document_symbol'<CR>", { desc='Find LSP symbols in the current file'})
vim.keymap.set('n', '<Leader>fw', ':Pick grep_live<CR>', { desc='Find word'})
vim.keymap.set('n', '<Leader>gb', ':Pick git_branches<CR>', { desc='Git branches'})
vim.keymap.set('n', '<Leader>gc', ':Pick git_commits<CR>', { desc='Git commits'})
vim.keymap.set('n', '<Leader>gg', ':terminal lazygit<CR>', { desc='Open lazygit' })
vim.keymap.set('n', '<Leader>gh', ':Pick git_hunks<CR>', { desc='Git hunks'})
vim.keymap.set('n', '<Leader>gt', ':terminal tig<CR>', { desc='Open tig' })
vim.keymap.set('n', '<Leader>o', MiniFiles.open, { desc='Open the file explorer' })
vim.keymap.set('n', '<Leader>pM', ':MasonUpdate<CR>', { desc='Update Mason plugins' })
vim.keymap.set('n', '<Leader>pm', ':Mason<CR>', { desc='Manage Mason plugins' })
vim.keymap.set('n', '<Leader>pu', require("mini.deps").update, { desc='Update plugins' })
vim.keymap.set('n', '<Leader>px', require("mini.deps").clean, { desc='Clean plugins' })
vim.keymap.set('n', '<Leader>q', ':q<CR>', { desc='Quit' })
vim.keymap.set('n', '<Leader>ue', ':edit $MYVIMRC<CR>', { desc='Open the user configuration file' })
vim.keymap.set('n', '<Leader>uo', ':source $MYVIMRC<CR>', { desc='Source the user configuration file' })
vim.keymap.set('n', '<Leader>v', 'gcc', { desc='Toggle comment' })
vim.keymap.set('n', '<Leader>w', ':write<CR>', { desc='Write the current buffer (save)' })
vim.keymap.set('n', '[b', ':bprevious<CR>', { desc='Previous buffer' })
vim.keymap.set('n', ']b', ':bnext<CR>', { desc='Next buffer' })
vim.opt.relativenumber = true
