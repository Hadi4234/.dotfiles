return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'projekt0n/github-nvim-theme'

  use 'rose-pine/neovim'
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
  use {'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
  use {'windwp/nvim-ts-autotag'}
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-autopairs'}
  use {'folke/which-key.nvim'}
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}}
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use {'hrsh7th/cmp-nvim-lua',
       config=function ()
       require'cmp'.setup {
       sources = {
            { name = 'nvim_lua' }
                 },
            }
        end
      } 
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use { 'L3MON4D3/LuaSnip' }
  use { 'saadparwaiz1/cmp_luasnip' }

  use 'onsails/lspkind-nvim'
  use 'norcalli/nvim-colorizer.lua'
  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'},
    config = function()
      require('gitsigns').setup {current_line_blame = true}
    end
  }
  use {
  'ray-x/lsp_signature.nvim',
  config= function ()
   require "lsp_signature".setup()
   end
}
  use 'glepnir/dashboard-nvim'
  use "lukas-reineke/indent-blankline.nvim"
  use 'lukas-reineke/format.nvim'
  use "akinsho/toggleterm.nvim"
  use "terrortylor/nvim-comment"
  use "rafamadriz/friendly-snippets"
  use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
} 

end)
