local path_package = vim.fn.stdpath("data") .. "/site"

local mini_path = path_package .. "/pack/deps/start/mini.nvim"
if not vim.loop.fs_stat(mini_path) then
    vim.cmd('echo "Installing `mini.nvim`" | redraw')
    vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/echasnovski/mini.nvim", mini_path })
    vim.cmd("packadd mini.nvim | helptags ALL")
end

require("mini.deps").setup({ path = { package = path_package } })
local add = require("mini.deps").add

add("NeogitOrg/neogit")
add("folke/which-key.nvim")
add("github/copilot.vim")
add("lewis6991/gitsigns.nvim")
add("max397574/better-escape.nvim")
add("neovim/nvim-lspconfig")
add("nvim-lua/plenary.nvim")
add("nvimtools/none-ls-extras.nvim")
add("nvimtools/none-ls.nvim")
add("sainnhe/sonokai")
add("williamboman/mason-lspconfig.nvim")
add("williamboman/mason.nvim")

require("better_escape").setup()
require("gitsigns").setup()
require("lspconfig").eslint.setup({})
require("lspconfig").lua_ls.setup({})
require("lspconfig").phpactor.setup({})
require("mason").setup()
require("mason-lspconfig").setup({ ensure_installed = { "lua_ls", "eslint", "phpactor" } })
require("mini.ai").setup()
require("mini.animate").setup()
require("mini.basics").setup()
require("mini.comment").setup()
require("mini.completion").setup()
require("mini.extra").setup()
require("mini.files").setup({ mappings = { synchronize = "<escape>", go_in_plus = "<CR>" } })
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
require("neogit").setup()
require("which-key").setup()

require("null-ls").setup({
    sources = {
        require("none-ls.diagnostics.eslint"),
        require("null-ls").builtins.completion.spell,
        require("null-ls").builtins.diagnostics.phpcs,
        require("null-ls").builtins.formatting.phpcbf,
        require("null-ls").builtins.formatting.stylua,
    },
})

local minifiles_toggle = function(...)
    if not require("mini.files").close() then
        require("mini.files").open(...)
    end
end

local minifiles_toggle_cwd = function()
    minifiles_toggle(vim.api.nvim_buf_get_name(0))
end

local git_blame = function()
    require("gitsigns").blame_line({ full = true })
end

vim.cmd("autocmd FileType * setlocal nofoldenable")
vim.cmd("autocmd FileType php setlocal commentstring=//\\ %s expandtab shiftwidth=4 tabstop=4")
vim.cmd("autocmd TermOpen * setlocal norelativenumber nonumber")
vim.cmd("colorscheme sonokai")
vim.cmd("set clipboard=unnamedplus")
vim.g.mapleader = " "
vim.keymap.set("n", "<Leader>bh", ":only<CR>", { desc = "Hide other buffers" })
vim.keymap.set("n", "<Leader>c", ":bdelete<CR>", { desc = "Close the current buffer" })
vim.keymap.set("n", "<Leader>e", minifiles_toggle, { desc = "Toggle the file explorer" })
vim.keymap.set("n", "<Leader>fC", ":Pick commands<CR>", { desc = "Find commands" })
vim.keymap.set("n", "<Leader>fH", ":Pick help<CR>", { desc = "Find help" })
vim.keymap.set("n", "<Leader>fb", ":Pick buffers<CR>", { desc = "Find buffers" })
vim.keymap.set("n", "<Leader>fc", ":Pick grep pattern='<c-r><c-w>'<CR>", { desc = "Find word under the cursor" })
vim.keymap.set("n", "<Leader>fe", ":Pick explorer<CR>", { desc = "Find files (explorer)" })
vim.keymap.set("n", "<Leader>ff", ":Pick files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<Leader>fg", ":Pick git_files<CR>", { desc = "Find git files" })
vim.keymap.set("n", "<Leader>fh", ":Pick history<CR>", { desc = "Find history" })
vim.keymap.set("n", "<Leader>fl", ":Pick buf_lines<CR>", { desc = "Find lines" })
vim.keymap.set("n", "<Leader>fo", ":Pick visit_paths<CR>", { desc = "Find visited paths" })
vim.keymap.set("n", "<Leader>fs", ":Pick lsp scope='document_symbol'<CR>", { desc = "Find LSP symbols" })
vim.keymap.set("n", "<Leader>fw", ":Pick grep_live<CR>", { desc = "Find word" })
vim.keymap.set("n", "<Leader>gB", git_blame, { desc = "Git blame" })
vim.keymap.set("n", "<Leader>gb", ":Neogit branch<CR>", { desc = "Git branch" })
vim.keymap.set("n", "<Leader>gc", ":Neogit commit<CR>", { desc = "Git commit" })
vim.keymap.set("n", "<Leader>gg", ":terminal lazygit<CR>", { desc = "Open lazygit" })
vim.keymap.set("n", "<Leader>gh", ":Pick git_hunks<CR>", { desc = "Git hunks" })
vim.keymap.set("n", "<Leader>gp", require("gitsigns").preview_hunk, { desc = "Preview git hunk" })
vim.keymap.set("n", "<Leader>gs", ":Neogit<CR>", { desc = "Git status" })
vim.keymap.set("n", "<Leader>gt", ":terminal tig<CR>", { desc = "Open tig" })
vim.keymap.set("n", "<Leader>lD", ":Pick diagnostic<CR>", { desc = "Document diagnostics" })
vim.keymap.set("n", "<Leader>lR", vim.lsp.buf.references, { desc = "Show references" })
vim.keymap.set("n", "<Leader>ld", vim.diagnostic.open_float, { desc = "Line diagnostics" })
vim.keymap.set("n", "<Leader>ld", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
vim.keymap.set("n", "<Leader>lf", vim.lsp.buf.format, { desc = "Format code" })
vim.keymap.set("n", "<Leader>lk", vim.lsp.buf.signature_help, { desc = "Show signature help" })
vim.keymap.set("n", "<Leader>lr", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "<Leader>ls", vim.lsp.buf.document_symbol, { desc = "Show symbols" })
vim.keymap.set("n", "<Leader>o", minifiles_toggle_cwd, { desc = "Open the file explorer" })
vim.keymap.set("n", "<Leader>pM", ":MasonUpdate<CR>", { desc = "Update Mason plugins" })
vim.keymap.set("n", "<Leader>pm", ":Mason<CR>", { desc = "Manage Mason plugins" })
vim.keymap.set("n", "<Leader>pu", require("mini.deps").update, { desc = "Update plugins" })
vim.keymap.set("n", "<Leader>px", require("mini.deps").clean, { desc = "Clean plugins" })
vim.keymap.set("n", "<Leader>q", ":quit<CR>", { desc = "Quit" })
vim.keymap.set("n", "<Leader>ue", ":edit $MYVIMRC<CR>", { desc = "Open the user configuration file" })
vim.keymap.set("n", "<Leader>uo", ":source $MYVIMRC<CR>", { desc = "Source the user configuration file" })
vim.keymap.set("n", "<Leader>v", "gcc", { desc = "Toggle comment" })
vim.keymap.set("n", "<Leader>w", ":write<CR>", { desc = "Write the current buffer (save)" })
vim.keymap.set("n", "<Leader>z", ":terminal<CR>", { desc = "Open terminal" })
vim.keymap.set("n", "<c-q>", ":q!<CR>", { desc = "Force quit" })
vim.keymap.set("n", "<c-s>", "<Cmd>silent! update! | redraw<CR>", { desc = "Force save" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover information" })
vim.keymap.set("n", "[b", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
vim.keymap.set("n", "[h", require("gitsigns").prev_hunk, { desc = "Previous hunk" })
vim.keymap.set("n", "]b", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
vim.keymap.set("n", "]h", require("gitsigns").next_hunk, { desc = "Next hunk" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to type declaration" })
vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "gy", vim.lsp.buf.definition, { desc = "Go to type definition" })
vim.keymap.set({ "n", "v" }, "<Leader>la", vim.lsp.buf.code_action, { desc = "Code actions" })
vim.o.hidden = true
vim.opt.relativenumber = true
