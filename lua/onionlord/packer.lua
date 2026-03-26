-- for plugins/packer
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		"folke/tokyonight.nvim",
		as = "tokyonight",
		config = function ()
			local tokyonight = require("tokyonight")
			tokyonight.setup({
				on_colors = function(colors)
					colors.fg_gutter = "#898ea5"
				end
			})
			tokyonight.load()
		end
	}

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("theprimeagen/harpoon")
	use({ 'prichrd/netrw.nvim', requires = { { 'echasnovski/mini.nvim', version = false }, } })
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("saadparwaiz1/cmp_luasnip")
	use("L3MON4D3/LuaSnip")
	use 'm4xshen/autoclose.nvim'

	use {
		'mfussenegger/nvim-dap',
		requires = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
			"julianolf/nvim-dap-lldb"
		}
	}

	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

	use({
		"olimorris/codecompanion.nvim",
		tag = "v19.0.0",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
	})

	use("github/copilot.vim")
end)
