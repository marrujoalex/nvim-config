-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
  use('nvim-tree/nvim-web-devicons') -- OPTIONAL: for file icons
  use('lewis6991/gitsigns.nvim') -- OPTIONAL: for git status
  use('romgrk/barbar.nvim')

  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  use {
      'xbase-lab/xbase',
      run = 'make install', -- or "make install && make free_space" (not recommended, longer build time)
      requires = {
          "neovim/nvim-lspconfig",
          "nvim-telescope/telescope.nvim", -- optional
          "nvim-lua/plenary.nvim", -- optional/requirement of telescope.nvim
          -- "stevearc/dressing.nvim", -- optional (in case you don't use telescope but something else)
      },
      config = function()
          require'xbase'.setup({})  -- see default configuration bellow
      end
  }

  use('eandrju/cellular-automaton.nvim')

end)

