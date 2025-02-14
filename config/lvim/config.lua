-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.builtin.nvimtree.setup.view.side = "right"

lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  v = { "<cmd>2ToggleTerm size=30 direction=vertical<cr>", "Split vertical" },
  h = { "<cmd>2ToggleTerm size=30 direction=horizontal<cr>", "Split horizontal" },
}

lvim.builtin.which_key.mappings.b.k = { "<cmd>BufferKill<cr>", "Kill Buffer" }
lvim.builtin.which_key.mappings["c"] = {
  name = "+Compile",
  r = { nil, "Go Run" },
  c = { "<cmd>!go build .<cr>", "Go Build" },
}

local compile_commands = {}

local function set_compile_command()
  local filetype = vim.bo.filetype
  local compile_command = compile_commands[filetype]

  if compile_command then
    vim.keymap.set("n", "<leader>cr", compile_command, { noremap = true, silent = true })
  else
    -- vim.keymap.del("n", "<leader>ck")
  end
end

compile_commands.go = "<cmd>!go run .<cr>"

vim.api.nvim_create_autocmd({ "BufRead", "FileType" }, {
  callback = function()
    set_compile_command()
  end,
})

lvim.plugins = {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  }
}
