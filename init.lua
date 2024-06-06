vim.g.floaterm_height = 0.9
vim.g.floaterm_width = 0.9
vim.o.clipboard = "unnamedplus"
vim.o.relativenumber = true

local path_package = vim.fn.stdpath("data") .. "/site"
local mini_path = path_package .. "/pack/deps/start/mini.nvim"

if not vim.loop.fs_stat(mini_path) then
    vim.cmd('echo "Installing `mini.nvim`" | redraw')
    vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/echasnovski/mini.nvim", mini_path })
    vim.cmd("packadd mini.nvim | helptags ALL")
end

require("mini.deps").add("MunifTanjim/nui.nvim")
require("mini.deps").add("folke/which-key.nvim")
require("mini.deps").add("gruvbox-community/gruvbox")
require("mini.deps").add("hrsh7th/cmp-nvim-lsp")
require("mini.deps").add("hrsh7th/nvim-cmp")
require("mini.deps").add("max397574/better-escape.nvim")
require("mini.deps").add("neovim/nvim-lspconfig")
require("mini.deps").add("nvim-lua/plenary.nvim")
require("mini.deps").add("nvim-telescope/telescope.nvim")
require("mini.deps").add("nvim-tree/nvim-web-devicons")
require("mini.deps").add("nvim-treesitter/nvim-treesitter")
require("mini.deps").add("nvimtools/none-ls-extras.nvim")
require("mini.deps").add("nvimtools/none-ls.nvim")
require("mini.deps").add("voldikss/vim-floaterm")
require("mini.deps").add("wakatime/vim-wakatime")
require("mini.deps").add("williamboman/mason-lspconfig.nvim")
require("mini.deps").add("williamboman/mason.nvim")
require("mini.deps").add("zbirenbaum/copilot-cmp")
require("mini.deps").add("zbirenbaum/copilot.lua")
require("mini.deps").setup({ path = { package = path_package } })

require("better_escape").setup()
require("copilot").setup({ suggestion = { enabled = false }, panel = { enabled = false } })
require("copilot_cmp").setup()
require("lspconfig").eslint.setup({})
require("lspconfig").lua_ls.setup({})
require("lspconfig").phpactor.setup({})
require("mason").setup()
require("mason-lspconfig").setup({ ensure_installed = { "lua_ls", "eslint", "phpactor" } })
require("mini.ai").setup()
require("mini.basics").setup()
require("mini.bufremove").setup()
require("mini.colors").setup()
require("mini.comment").setup()
require("mini.diff").setup()
require("mini.extra").setup()
require("mini.files").setup({mappings = { go_in_plus = "<CR>", synchronize = "<escape>" }})
require("mini.git").setup()
require("mini.jump").setup()
require("mini.notify").setup()
require("mini.operators").setup()
require("mini.pairs").setup()
require("mini.pick").setup()
require("mini.splitjoin").setup()
require("mini.statusline").setup()
require("mini.surround").setup()
require("mini.tabline").setup()
require("mini.trailspace").setup()
require("mini.visits").setup()
require("nvim-treesitter.configs").setup({ ensure_installed = { "lua", "php" }, highlight = { enable = true } })
require("which-key").setup()

require("cmp").setup({
    sources = require("cmp").config.sources({ { name = "copilot" }, { name = "nvim_lsp" } }),
    mapping = require("cmp").mapping.preset.insert({ ["<CR>"] = require("cmp").mapping.confirm({ select = true }) }),
})

require("null-ls").setup({
    sources = {
        require("none-ls.diagnostics.eslint"),
        require("null-ls").builtins.completion.spell,
        require("null-ls").builtins.diagnostics.phpcs,
        require("null-ls").builtins.formatting.phpcbf,
        require("null-ls").builtins.formatting.stylua,
    },
})

require("nvim-treesitter.configs").setup({
    ensure_installed = { "lua", "php", "typescript" },
    highlight = { enable = true },
    ident = { enable = true },
    incremental_selection = { enable = true },
})

vim.keymap.set("n", "<Leader>bH", require("mini.bufremove").unshow_in_window, { desc = "Hide buffer from window" })
vim.keymap.set("n", "<Leader>bb", ":Pick buffers<CR>", { desc = "Show buffers" })
vim.keymap.set("n", "<Leader>bd", require("mini.bufremove").delete, { desc = "Delete buffer" })
vim.keymap.set("n", "<Leader>bh", require("mini.bufremove").unshow, { desc = "Hide buffer" })
vim.keymap.set("n", "<Leader>bo", ":only<CR>", { desc = "Keep only the current buffer" })
vim.keymap.set("n", "<Leader>bw", require("mini.bufremove").wipeout, { desc = "Wipeout buffer" })
vim.keymap.set("n", "<Leader>c", require("mini.bufremove").delete, { desc = "Close the current buffer" })
vim.keymap.set("n", "<Leader>e", ":lua MiniFiles.open()<CR>", { desc = "Open file explorer" })
vim.keymap.set("n", "<Leader>fC", ":Telescope commands<CR>", { desc = "Find commands" })
vim.keymap.set("n", "<Leader>fH", ":Telescope help_tags<CR>", { desc = "Find help" })
vim.keymap.set("n", "<Leader>fc", ":Telescope grep_string<CR>", { desc = "Find word under the cursor" })
vim.keymap.set("n", "<Leader>fe", ":Pick explorer<CR>", { desc = "Find files (explorer)" })
vim.keymap.set("n", "<Leader>ff", ":Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<Leader>fg", ":Telescope git_files<CR>", { desc = "Find git files" })
vim.keymap.set("n", "<Leader>fh", ":Telescope command_history<CR>", { desc = "Find history" })
vim.keymap.set("n", "<Leader>fo", ":Telescope oldfiles<CR>", { desc = "Find visited paths" })
vim.keymap.set("n", "<Leader>fw", ":Telescope live_grep<CR>", { desc = "Find word" })
vim.keymap.set("n", "<Leader>gA", ":Git commit --amend<CR>", { desc = "Git commit amend" })
vim.keymap.set("n", "<Leader>gC", ":Telescope git_bcommits<CR>", { desc = "Git commits of current buffer" })
vim.keymap.set("n", "<Leader>gD", ":FloatermNew git diff<CR>", { desc = "Git diff" })
vim.keymap.set("n", "<Leader>gP", ":Git push<CR>", { desc = "Git push" })
vim.keymap.set("n", "<Leader>ga", ":FloatermNew git add -p .<CR>", { desc = "Git add" })
vim.keymap.set("n", "<Leader>gb", ":Telescope git_branches<CR>", { desc = "Git branch" })
vim.keymap.set("n", "<Leader>gc", ":Git commit<CR>", { desc = "Git commit" })
vim.keymap.set("n", "<Leader>gd", ":FloatermNew git diff %<CR>", { desc = "Git diff" })
vim.keymap.set("n", "<Leader>gg", ":FloatermNew lazygit<CR>", { desc = "Open lazygit" })
vim.keymap.set("n", "<Leader>gh", require("mini.diff").toggle_overlay, { desc = "Preview git hunk" })
vim.keymap.set("n", "<Leader>gp", ":Git pull<CR>", { desc = "Git pull" })
vim.keymap.set("n", "<Leader>gs", ":Pick git_files scope='modified'<CR>", { desc = "Git status" })
vim.keymap.set("n", "<Leader>gt", ":FloatermNew tig<CR>", { desc = "Open tig" })
vim.keymap.set("n", "<Leader>lD", ":Pick diagnostic<CR>", { desc = "Document diagnostics" })
vim.keymap.set("n", "<Leader>lR", vim.lsp.buf.references, { desc = "Show references" })
vim.keymap.set("n", "<Leader>ld", vim.diagnostic.open_float, { desc = "Line diagnostics" })
vim.keymap.set("n", "<Leader>ld", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
vim.keymap.set("n", "<Leader>lf", vim.lsp.buf.format, { desc = "Format code" })
vim.keymap.set("n", "<Leader>lk", vim.lsp.buf.signature_help, { desc = "Show signature help" })
vim.keymap.set("n", "<Leader>lr", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "<Leader>ls", vim.lsp.buf.document_symbol, { desc = "Show symbols" })
vim.keymap.set("n", "<Leader>o", ":lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>", { desc = "Focus file explorer on buffer path" })
vim.keymap.set("n", "<Leader>pM", ":MasonUpdate<CR>", { desc = "Update Mason plugins" })
vim.keymap.set("n", "<Leader>pm", ":Mason<CR>", { desc = "Manage Mason plugins" })
vim.keymap.set("n", "<Leader>pu", require("mini.deps").update, { desc = "Update plugins" })
vim.keymap.set("n", "<Leader>px", require("mini.deps").clean, { desc = "Clean plugins" })
vim.keymap.set("n", "<Leader>q", ":quit<CR>", { desc = "Quit" })
vim.keymap.set("n", "<Leader>ss", ":Telescope colorscheme<CR>", { desc = "Select colorscheme" })
vim.keymap.set("n", "<Leader>sw", ":lua MiniColors.get_colorscheme():write({name='nuvim'})<CR>", { desc = "Write colorscheme" })
vim.keymap.set("n", "<Leader>ue", ":edit $MYVIMRC<CR>", { desc = "Open the user configuration file" })
vim.keymap.set("n", "<Leader>uo", ":source $MYVIMRC<CR>", { desc = "Source the user configuration file" })
vim.keymap.set("n", "<Leader>w", ":write<CR>", { desc = "Write the current buffer (save)" })
vim.keymap.set("n", "<Leader>z", ":FloatermToggle<CR>", { desc = "Open terminal" })
vim.keymap.set("n", "<c-q>", ":q!<CR>", { desc = "Force quit" })
vim.keymap.set("n", "<c-s>", "<Cmd>silent! update! | redraw<CR>", { desc = "Force save" })
vim.keymap.set("n", "<leader>\\", ":split<CR>", { desc = "Split horizontally" })
vim.keymap.set("n", "<leader>|", ":vsp<CR>", { desc = "Split vertically" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover information" })
vim.keymap.set("n", "[b", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
vim.keymap.set("n", "[h", ":lua MiniDiff.goto_hunk('prev')<CR>", { desc = "Previous hunk" })
vim.keymap.set("n", "]b", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
vim.keymap.set("n", "]h", ":lua MiniDiff.goto_hunk('next')<CR>", { desc = "Next hunk" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to type declaration" })
vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "gy", vim.lsp.buf.definition, { desc = "Go to type definition" })
vim.keymap.set({ "n", "v" }, "<Leader>la", vim.lsp.buf.code_action, { desc = "Code actions" })

vim.cmd("autocmd FileType php setlocal commentstring=//\\ %s expandtab shiftwidth=4 tabstop=4")
vim.cmd.colorscheme("nuvim")
