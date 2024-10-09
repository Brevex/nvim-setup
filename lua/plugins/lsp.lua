return {
	"williamboman/mason.nvim",

	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},

	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"clangd",
				"cssls",
				"html",
				"jdtls",
				"eslint",
				"ts_ls",
				"rust_analyzer",
				"pyright",
				"vhdl_ls",
				"jsonls",
				"lemminx",
				"cmake",
				"gopls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"black",
				"rustfmt",
				"clang-format",
				"google-java-format",
				"gofumpt",
				"ktfmt",
				"sqlfluff",
				"verible",
			},
		})
	end,
}
