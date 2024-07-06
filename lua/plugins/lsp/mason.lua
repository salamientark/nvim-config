return {
	"williamboman/mason.nvim",
	-- Configure dependencies
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig"
	},
 	config = function()
 		-- import mason
 		local mason = require("mason")
 
 		-- import mason-lspconfig
 		local mason_lspconfig = require("mason-lspconfig")
 
 		-- enable mason and configure icons
 		mason.setup({
 			ui = {
 				icons = {
 					package_installed = "✓",
 					package_pending = "➜",
 					package_uninstalled = "✗",
 				},
 			},
 		})
		-- mason server setup
		mason_lspconfig.setup({
			-- list of server for mason to install
			ensure_installed = {
				"lua_ls",
				"clangd",
			},
			-- auto install configured server (with lspconfig)
			automatic_installation = true,
		})
 	end,
}
