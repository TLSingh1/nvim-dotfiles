local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.startup({function()
	use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'

  -- completions
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"

  -- Github Copilot
  use { "github/copilot.vim" }

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  -- LSP
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"
  use "jose-elias-alvarez/null-ls.nvim"
  use('MunifTanjim/prettier.nvim')

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "p00f/nvim-ts-rainbow"

  -- Autopairs & Autotags
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"

  -- Surround
  use {"kylechui/nvim-surround", tag = "*"}

  -- Winbar
  use { 'fgheng/winbar.nvim' }

  -- Comments
  use "numToStr/Comment.nvim"
  use "terrortylor/nvim-comment"
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- telescope
  use "nvim-lua/plenary.nvim"
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-media-files.nvim"
  use "ahmedkhalf/project.nvim"

  -- Nvim-Tree
  use "kyazdani42/nvim-tree.lua"
  use "kyazdani42/nvim-web-devicons"

  -- Smart Splits
  use ({ 'mrjones2014/smart-splits.nvim', run = './kitty/install-kittens.bash' })

  -- Bufferline
  use {"akinsho/bufferline.nvim", tag = "v3.*"}

  -- ToggleTerm
  use {"akinsho/toggleterm.nvim", tag = 'v2.2.1'}

  -- SymbolsOutline
  use "simrat39/symbols-outline.nvim"

  -- Alpha
  use 'goolord/alpha-nvim'

  -- Staline
  use 'tamton-aquib/staline.nvim'

  -- Impatient
  use 'lewis6991/impatient.nvim'

  -- Indentline
  use "lukas-reineke/indent-blankline.nvim"

  -- Colorizer
  use 'norcalli/nvim-colorizer.lua'

  -- images in nvim
  use {'edluffy/hologram.nvim'}

  -- discord presence
  use 'andweeb/presence.nvim'

  -- folds
  use {'anuvyklack/pretty-fold.nvim',
    requires = 'anuvyklack/keymap-amend.nvim'
  }

end,
config = {
	display = {
		open_fn = function()
			return require('packer.util').float({ border = 'single' })
		end
	}
}})
