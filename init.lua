local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug ('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

-- COLOR SCHEME 
Plug ('nordtheme/vim')				-- Nord
Plug ('gilgigilgil/anderson.vim')	-- Anderson 

vim.call('plug#end')

require "config.options"
require "config.treesitter"
