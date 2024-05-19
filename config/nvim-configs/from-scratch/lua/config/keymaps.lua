-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
vim.keymap.set("n", "<leader>fd", builtin.diagnostics, {})

-- Neotree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {})

-- LSP
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
-- vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
vim.keymap.set({ "n"}, "<space>cr", vim.lsp.buf.rename, {})

-- None-LS
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {})

-- QoL
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.keymap.set({ "n", "v" }, "n", "nzzzv", { silent = true })
vim.keymap.set({ "n", "v" }, "N", "Nzzzv", { silent = true })
vim.keymap.set({ "n", "v" }, "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set({ "n", "v" }, "<C-u>", "<C-u>zz", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>qq", ":q<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<C-s>", ":w<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y", { silent = true })
vim.keymap.set({ "v" }, "K", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set({ "v" }, "J", ":m '<-2<CR>gv=gv", { silent = true })
