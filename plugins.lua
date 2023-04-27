local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
		'nvim-treesitter/nvim-treesitter',
		'janko-m/vim-test',
		'junegunn/gv.vim',
		'morhetz/gruvbox',
		'scrooloose/nerdtree',
		'tpope/vim-commentary',
		'tpope/vim-fugitive',

		-- Telescope
		{
			'nvim-telescope/telescope.nvim', tag = '0.1.1',
			dependencies = {
				'nvim-lua/plenary.nvim',
				'BurntSushi/ripgrep'
			}
		},

		-- Lang Support
		'vim-ruby/vim-ruby' ,
		'tpope/vim-endwise', --also ruby
		'tbastos/vim-lua',
		'plasticboy/vim-markdown',

		-- LSP
		'neovim/nvim-lspconfig',
		'hrsh7th/nvim-cmp', -- Autocompletion plugin
		'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp


		'dcampos/nvim-snippy',
		'dcampos/cmp-snippy', -- snippets engine
		'honza/vim-snippets', -- snippets collection
	})

