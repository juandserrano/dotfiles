vim.cmd [[
  augroup AuYank
    autocmd!
    autocmd TextYankPost *
      \ lua vim.highlight.on_yank{higroup="IncSearch", timeout=200, on_visual=true}
  augroup end
]]

vim.cmd [[
  au BufWritePost *.go !gofmt -w %
]]
