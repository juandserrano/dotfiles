local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

-- LSP mappings
key_mapper('n', 'gd', ':lua vim.lsp.buf.definition()<CR>')
key_mapper('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>')
key_mapper('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>')
key_mapper('n', 'gw', ':lua vim.lsp.buf.document_symbol()<CR>')
key_mapper('n', 'gW', ':lua vim.lsp.buf.workspace_symbol()<CR>')
key_mapper('n', 'gr', ':lua vim.lsp.buf.references()<CR>')
key_mapper('n', 'gt', ':lua vim.lsp.buf.type_definition()<CR>')
key_mapper('n', 'K', ':lua vim.lsp.buf.hover()<CR>')
key_mapper('n', 'ge', ':lua vim.diagnostic.open_float()<CR>')
key_mapper('n', '<c-k>', ':lua vim.lsp.buf.signature_help()<CR>')
key_mapper('n', '<leader>af', ':lua vim.lsp.buf.code_action()<CR>')
key_mapper('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')

-- Telescope mappings
key_mapper('n', '<leader>ff', ':lua require"telescope.builtin".find_files()<CR>')
key_mapper('n', '<leader>fg', ':lua require"telescope.builtin".live_grep()<CR>')
key_mapper('n', '<leader>fh', ':lua require"telescope.builtin".help_tags()<CR>')
key_mapper('n', '<leader>fb', ':lua require"telescope.builtin".buffers()<CR>')

-- Nvim Tree
key_mapper('n', '<leader>e', ':NvimTreeToggle<CR>')

-- QoL
key_mapper('n', 'n', 'nzz')
key_mapper('n', 'N', 'Nzz')
key_mapper('n', 'Q', '<nop>')
key_mapper('n', 'Y', 'y$')
key_mapper('t', '<esc><esc>', '<c-\\><c-n>')

-- GitGutter
key_mapper('n', '[v', ':GitGutterPreviewHunk<CR>')

-- DAP
key_mapper('n', '<leader>db', ':lua require"dap".toggle_breakpoint()<CR>')
key_mapper('n', '<leader>dc', ':lua require"dap".continue()<CR>')

