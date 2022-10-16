call plug#begin()
Plug 'janko-m/vim-test'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Lang Support
Plug 'vim-ruby/vim-ruby' 
Plug 'tpope/vim-endwise' "also ruby
Plug 'tbastos/vim-lua'
Plug 'plasticboy/vim-markdown'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp' " Autocompletion plugin
Plug 'hrsh7th/cmp-nvim-lsp' " LSP source for nvim-cmp


Plug 'dcampos/nvim-snippy'
Plug 'dcampos/cmp-snippy' " snippets engine
Plug 'honza/vim-snippets' " snippets collection

call plug#end()

