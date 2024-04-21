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

require('mini.basics').setup()
require('mini.comment').setup()
require('mini.completion').setup()
require('mini.files').setup()
require('mini.tabline').setup()
require('mini.pick').setup()
require('mini.splitjoin').setup()
require('mini.visits').setup()
require('which-key').setup()
require('mini.notify').setup()
require('mini.extra').setup()
require('mini.statusline').setup()

vim.cmd('colorscheme gruvbox')
vim.g.mapleader = ' '
vim.keymap.set('n', '<Leader>c', ':bdelete<CR>', { desc='Close the current buffer' })
vim.keymap.set('n', '<Leader>e', ':lua if not MiniFiles.close() then MiniFiles.open() end<CR>', { desc='Toggle the file explorer' })
vim.keymap.set('n', '<Leader>fb', ':Pick buffers<CR>', { desc='Find buffers'})
vim.keymap.set('n', '<Leader>fc', ':Pick commands<CR>', { desc='Find commands'})
vim.keymap.set('n', '<Leader>fc', ':Pick grep <c-r><c-w><CR>', { desc='Find word under the cursor'})
vim.keymap.set('n', '<Leader>fe', ':Pick explorer<CR>', { desc='Find files (explorer)'})
vim.keymap.set('n', '<Leader>ff', ':Pick files<cr>', { desc='Find files' })
vim.keymap.set('n', '<Leader>fg', ':Pick git_files<CR>', { desc='Find git files'})
vim.keymap.set('n', '<Leader>fh', ':Pick history<CR>', { desc='Find history'})
vim.keymap.set('n', '<Leader>fl', ':Pick lines<CR>', { desc='Find lines'})		
vim.keymap.set('n', '<Leader>fo', ':Pick visit_paths<CR>', { desc='Find visited paths'})
vim.keymap.set('n', '<Leader>fs', ':Pick lsp_symbols<CR>', { desc='Find LSP symbols'})
vim.keymap.set('n', '<Leader>fw', ':Pick grep_live<CR>', { desc='Find word'})
vim.keymap.set('n', '<Leader>gb', ':Pick git_branches<CR>', { desc='Git branches'})
vim.keymap.set('n', '<Leader>gc', ':Pick git_commits<CR>', { desc='Git commits'})
vim.keymap.set('n', '<Leader>gg', ':terminal lazygit<CR>', { desc='Open lazygit' })
vim.keymap.set('n', '<Leader>gh', ':Pick git_hunks<CR>', { desc='Git hunks'})
vim.keymap.set('n', '<Leader>gt', ':terminal tig<CR>', { desc='Open tig' })
vim.keymap.set('n', '<Leader>o', ':lua MiniFiles.open(vim.fn.readdir(%))<CR>', { desc='Open the file explorer' })
vim.keymap.set('n', '<Leader>pu', ':lua require("mini.deps").update()<CR>', { desc='Update plugins' })
vim.keymap.set('n', '<Leader>px', ':lua require("mini.deps").clean()<CR>', { desc='Clean plugins' })
vim.keymap.set('n', '<Leader>q', ':q<CR>', { desc='Quit' })
vim.keymap.set('n', '<Leader>ue', ':edit $MYVIMRC<CR>', { desc='Open the user configuration file' })
vim.keymap.set('n', '<Leader>uo', ':source $MYVIMRC<CR>', { desc='Source the user configuration file' })
vim.keymap.set('n', '<Leader>v', 'gcc', { desc='Toggle comment' })
vim.keymap.set('n', '<Leader>w', ':write<CR>', { desc='Write the current buffer (save)' })
vim.keymap.set('n', '[b', ':bprevCR>', { desc='Previous buffer' })
vim.keymap.set('n', ']b', ':bnext<CR>', { desc='Next buffer' })
vim.opt.relativenumber = true
