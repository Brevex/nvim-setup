return
{
	'stevearc/conform.nvim',
	
	event = {"BufReadPre", "BufNewFile"},

	config = function()
		
		local conform = require("conform")

		conform.setup({
			
			formaters_by_ft = {
			
				javascript = {"prettier"},
				typescript = {"prettier"},
				javascriptreact = {"prettier"},
				typescriptreact = {"prettier"},
				html = {"prettier"},
				css = {"prettier"},
				lua = {"stylua"},
				python = {"isort", "black"},
				rust = {"rustfmt"},
				c = {"clang-format"},
				cpp = {"clang-format"},
				cmake = {"cmake_format"},
				go = {"gofmt"},
				java = {"google-java-format"},
				kotlin = {"ktfmt"},
				vhdl = {"vsg"},
				sql = {"sqlfluff"},
			},
			format_on_save = {
				
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})
	end,
}
