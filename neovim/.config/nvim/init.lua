
require('plugins')
require('keybindings')
require('options')
require('nvim-tree-config')
require('lualine-config')
require('bufferline-config')
require('treesitter-config')
require('autopairs-config')
require('whichkey-config')
require('telescope-config')
require('colorizer-config')
require('dashboard-config')
require('blankline-config')
require('format-config')
require('toggleterm-config')
require('comment-config')
require('lsp')
vim.cmd('colorscheme github_dark ')
require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      triggers = {"<leader>"}
    }

require('telescope').setup{ 
  defaults = { 
  file_ignore_patterns = {"node_modules","pkg",".config"} 
  }
} 
-- following options are the default
-- e ach of these are documented in `:help nvim-tree.OPTION_NAME`
require'nvim-tree'.setup = {
      disable_netrw = true,
      hijack_netrw = true,
      open_on_setup = false,
      ignore_ft_on_setup = {
        "startify",
        "dashboard",
        "alpha",
      },
      update_to_buf_dir = {
        enable = true,
        auto_open = true,
      },
      auto_close = true,
      open_on_tab = false,
      hijack_cursor = false,
      update_cwd = false,
      diagnostics = {
        enable = true,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {},
      },
      system_open = {
        cmd = nil,
        args = {},
      },
      git = {
        enable = true,
        ignore = true,
        timeout = 200,
      },
      view = {
        width = 30,
        height = 30,
        side = "left",
        auto_resize = true,
        number = false,
        relativenumber = false,
        mappings = {
          custom_only = false,
          list = {},
        },
      },
      filters = {
        dotfiles = false,
        custom = { ".git", "node_modules", ".cache" },
      },
  }

require("luasnip/loaders/from_vscode").load({ paths = { "~/.local/share/nvim/site/pack/packer/start/friendly-snippets/snippets" }}) 



