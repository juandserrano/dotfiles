vim.g.mapleader = ' '

vim.o.errorbells = false
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.bo.smartindent = true
vim.o.relativenumber = true
vim.o.nu = true
vim.o.hlsearch = false
vim.o.wrap = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.bo.swapfile = false
vim.o.backup = false
vim.o.undodir=vim.fn.stdpath('config') .. '/undodir'
vim.o.undofile = true
vim.o.incsearch = true
vim.o.ruler = true
vim.o.scrolloff = 8
vim.o.encoding = 'utf8'
vim.o.colorcolumn = 80
vim.o.cursorline = true
--vim.o.spell
--vim.o.spelllang=en
vim.o.list = true

vim.cmd('colorscheme sonokai')

-- Plugin setups
require('nvim-tree').setup{
}

require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}

require('lualine').setup {
 options = {
   icons_enabled = true,
   theme = 'auto',
   component_separators = { left = '', right = ''},
   section_separators = { left = '', right = ''},
   disabled_filetypes = {},
   always_divide_middle = true,
 },
 sections = {
   lualine_a = {'mode'},
   lualine_b = {'branch', 'diff', 'diagnostics'},
   lualine_c = {'filename'},
   lualine_x = {'filetype'},
   lualine_y = {'progress'},
   lualine_z = {'location'}
 },
 inactive_sections = {
   lualine_a = {},
   lualine_b = {},
   lualine_c = {'filename'},
   lualine_x = {'encoding', 'fileformat', 'location'},
   lualine_y = {},
   lualine_z = {}
 },
 tabline = {},
 extensions = {}
}

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'luasnip' },
    { name = 'buffer', keyword_length = 5 },
  },
  experimental = {
    native_menu = false,
    ghost_text = true,
  }
}

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "lua", "go", "bash", "typescript", "css"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript", "css" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "c", "rust", "javascript", "css" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
