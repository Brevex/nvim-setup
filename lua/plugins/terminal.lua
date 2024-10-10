return {
	"akinsho/toggleterm.nvim",
	version = "*",

	opts = {
		direction = "float",

		size = function()
			return {
				width = math.floor(vim.o.columns * 0.8),
				height = math.floor(vim.o.lines * 0.8),
			}
		end,

		float_opts = {
			border = "single",
			winblend = 3,

			highlights = {
				border = "Normal",
				background = "Normal",
			},
		},

		open_mapping = [[<c-t>]],
		start_in_insert = true,
		persist_size = true,
	},

	config = function(_, opts)
		require("toggleterm").setup(opts)
	end,
}
