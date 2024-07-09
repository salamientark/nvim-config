local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug ('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})	-- nvim-treesitter

Plug ("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins

-- COLOR SCHEME 
Plug ('nordtheme/vim')				-- Nord
Plug ('gilgigilgil/anderson.vim')	-- Anderson 
Plug ('sts10/vim-pink-moon')		-- Pink-moon

-- CODE COMPLETION 
Plug ('hrsh7th/nvim-cmp')			-- The completion Plugin
Plug ('hrsh7th/cmp-buffer')			-- buffer completion
Plug ('hrsh7th/cmp-path')			-- path completion
Plug ('hrsh7th/cmp-cmdline')		-- cmd_line completion
Plug ('saadparwaiz1/cmp_luasnip')	-- luasnip completion
Plug ('hrsh7th/cmp-nvim-lsp')		-- lsp completion

-- LSP
Plug ('neovim/nvim-lspconfig')		-- enable LSP
Plug ('williamboman/mason-lspconfig.nvim')
Plug ('williamboman/mason.nvim')	-- LSP installer
Plug ('jose-elias-alvarez/null-ls.nvim') -- LSP diagnostics and code actions
-- Plug ('neovim/nvim-lspconfig')

-- SNIPPET ENGINE
Plug ('L3MON4D3/LuaSnip', {['tag'] = 'v2.*', ['do'] = 'make install_jsregexp'})
Plug ('rafamadriz/friendly-snippets')	-- Add tons of snippets

vim.call('plug#end')

-- LOAD USER CONFIGURATION
require "config.options"
require "config.colorscheme"
require "config.keymaps"

-- LOAD PLUGINS
require "plugin.treesitter"
require "plugin.cmp"

-- LOAD LSP
require "plugin.lsp"
