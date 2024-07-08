local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug ('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})	-- nvim-treesitter

-- COLOR SCHEME 
Plug ('nordtheme/vim')				-- Nord
Plug ('gilgigilgil/anderson.vim')	-- Anderson 
Plug ('sts10/vim-pink-moon')		-- Pink-moon

-- CODE COMPLETION 
-- Plug ('neovim/nvim-lspconfig')
-- Plug ('hrsh7th/cmp-nvim-lsp')
-- Plug ('hrsh7th/cmp-buffer')
-- Plug ('hrsh7th/cmp-path')
-- Plug ('hrsh7th/cmp-cmdline')
-- Plug ('hrsh7th/nvim-cmp')

-- SNIPPETS
-- Plug ('L3MON4D3/LuaSnip', {'tag': 'v2.\*', 'do': 'make install_jsregexp'}) -- Replace <CurrentMajor> by the latest released major (first number of latest release)

vim.call('plug#end')

-- LOAD USER CONFIGURATION
require "config.options"
require "config.colorscheme"
require "config.keymaps"

-- LOAD PLUGINS
require "plugin.treesitter"
