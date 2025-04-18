-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use{
	"folke/tokyonight.nvim",
	name = "tokyonight",
	config = function()
		vim.cmd("colorscheme tokyonight")
	end
}
  use ('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})
  use ('mbbill/undotree')
  use ('theprimeagen/harpoon')
  use ('tpope/vim-fugitive')

  use ('neovim/nvim-lspconfig')
  use ('hrsh7th/cmp-nvim-lsp')
  use ('hrsh7th/nvim-cmp')
  use ('williamboman/mason.nvim')
  use ('williamboman/mason-lspconfig.nvim')

end)

