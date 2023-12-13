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
		{
			"folke/neodev.nvim",
			opts = {},
			config = function() 
				require("neodev").setup({
						library = { plugins = { "neotest" }, types = true },
					})
			end
		},

    { "folke/neodev.nvim", opts = {} },


    "janko-m/vim-test",

   --{
   --  "nvim-neotest/neotest",
   --  -- lazy = true,
   --  dependencies = {
   --    "nvim-lua/plenary.nvim",
   --    "nvim-treesitter/nvim-treesitter",
   --    "antoinemadec/FixCursorHold.nvim",
   --    -- "olimorris/neotest-rspec",
   --    "nvim-neotest/neotest-vim-test",
   --    "janko-m/vim-test",
   --  },
   --  config = function()
   --    require("neotest").setup({
   --        adapters = {
   --          --require("neotest-plenary"),
   --          -- require("neotest-rspec"),
   --          require("neotest-vim-test")({ ignore_filetypes = {} }),
   --        },
   --      })
   --  end
   --},

		'junegunn/gv.vim',
		'morhetz/gruvbox',

		'scrooloose/nerdtree',
		-- {
		-- 	'nvim-tree/nvim-tree.lua',
		-- dependencies = {
		-- 	'nvim-tree/nvim-web-devicons'
		-- },
		-- 	cmd = "NvimTreeFindFile"
		-- },

		'tpope/vim-commentary',

		-- buffers
		'jlanzarotta/bufexplorer',

		-- Git
    {
      'tpope/vim-fugitive',
      dependencies = {
        'tpope/vim-rhubarb',
      },
    },
		--'Morozzzko/git_browse.nvim',

		-- Telescope
		{
			'nvim-telescope/telescope.nvim', tag = '0.1.4',
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
		--'tpope/vim-markdown',
		'udalov/kotlin-vim',
		'jparise/vim-graphql',

		-- LSP
		'neovim/nvim-lspconfig',
		--'hrsh7th/nvim-cmp', -- Autocompletion plugin
		--'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
		--'hrsh7th/cmp-buffer', 


		'dcampos/nvim-snippy',
		--'dcampos/cmp-snippy', -- snippets engine
		'honza/vim-snippets', -- snippets collection

		'junegunn/goyo.vim', -- zenmode

    {
      "sontungexpt/url-open",
      event = "VeryLazy",
      cmd = "URLOpenUnderCursor",
      open_app = "safari",
      config = function()
        local status_ok, url_open = pcall(require, "url-open")
        if not status_ok then
          return
        end
        url_open.setup({
            highlight_url = {
              cursor_move = {
                enabled = false,
              }
            }

          })
      end,
    },

		--'mrxk/vim-jira', -- jira text highlight
    -- 'n0v1c3/vira', 

	})



