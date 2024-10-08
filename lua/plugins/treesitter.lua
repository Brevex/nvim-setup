return 
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function()
        require('nvim-treesitter.configs').setup {
            
            ensure_installed = { 
                "c",
		"cpp",
		"cmake",
		"css",
		"dockerfile",
		"go",
		"html",
		"java",
		"javascript",
		"kotlin",
                "lua",
		"python",
		"rust",
		"typescript",
		"vue",
                "vim", 
                "vimdoc",
		"vhdl",
                "query", 
                "markdown", 
                "markdown_inline" 
            },

            sync_install = false,

            auto_install = true,

            highlight = {

                enable = true,  

                additional_vim_regex_highlighting = false,
            },
	}
    end
}

