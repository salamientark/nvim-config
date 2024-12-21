local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug ("42Paris/42header") -- 42header

Plug ("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
Plug ('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})	-- nvim-treesitter
Plug ("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
Plug ('numToStr/Comment.nvim') -- Fast comment
Plug ('akinsho/bufferline.nvim', { ['tag'] = '*' }) -- Bufferline
Plug ("folke/which-key.nvim") -- Which-key
Plug ('kevinhwang91/promise-async') -- nvim UFO dependencies
Plug ('kevinhwang91/nvim-ufo') -- nvim UFO

-- COPILOT
Plug ('github/copilot.vim') -- copilot
-- Plug ('zbirenbaum/copilot.lua') -- Copilot lua
Plug ('CopilotC-Nvim/CopilotChat.nvim', { ['branch']= 'canary' }) -- Copilot chat

-- COLOR SCHEME 
Plug ('nordtheme/vim')				-- Nord
Plug ('gilgigilgil/anderson.vim')	-- Anderson 
Plug ('sts10/vim-pink-moon')		-- Pink-moon
Plug ("scottmckendry/cyberdream.nvim") -- CyberDream colortheme
Plug ('EdenEast/nightfox.nvim') -- Nightfox
Plug ('rktjmp/lush.nvim') -- ???
Plug ('uloco/bluloco.nvim') -- bluloco theme
Plug ("alexmozaidze/palenight.nvim") -- Palenight
Plug ('navarasu/onedark.nvim') -- OneDark

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

-- SNIPPET ENGINE
Plug ('L3MON4D3/LuaSnip', {['tag'] = 'v2.*', ['do'] = 'make install_jsregexp'})
Plug ('rafamadriz/friendly-snippets')	-- Add tons of snippets

-- Telescope
Plug ('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })	-- Telescope

-- Nvim-tree
Plug ('nvim-tree/nvim-web-devicons') -- optional
Plug ('nvim-tree/nvim-tree.lua')	-- Nvim-tree explorer

-- Languiage Specific plugin
Plug ('MeanderingProgrammer/render-markdown.nvim') -- Markdown visualizer

vim.call('plug#end')

-- LOAD USER CONFIGURATION
require "config.options"
require "config.colorscheme"
require "config.keymaps"

-- LOAD COLORSCHEME
require "plugin.onedark"

-- LOAD PLUGINS
require "plugin.treesitter"
require "plugin.cmp"
require "plugin.telescope"
require "plugin.nvim-tree"
require "plugin.autopairs"
require "plugin.comment"
require "plugin.bufferline"
require "plugin.42Header"
require "plugin.copilot"
require "plugin.ufo"

-- LOAD LSP
require "plugin.lsp"

-- LOAD LANGUAGE SPECIFIC PLUGIN
require "plugin.render-markdown"
