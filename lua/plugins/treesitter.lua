return { 
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
	event = "VeryLazy",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {
                "dart",
                "c_sharp",
                "lua",
                "typescript",
                "javascript",
                "c"
            },
            auto_install = true,
            hightlight = { 
                enable = true,
				additional_vim_regex_highlighting = false,  
            },
            indent = { enable = true },
        })
    end
}