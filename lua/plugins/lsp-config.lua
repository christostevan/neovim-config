return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        }
        -- config = function()
        --     require("mason-lspconfig").setup({
        --         ensure_installed = {
        --             "lua_ls",
        --             "tsserver"
        --         }
        --     })
        -- end
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            
            local lspconfig = require("lspconfig")

		    local omni_sharp = vim.fn.exepath("omnisharp")

            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.html.setup({
                capabilities = capabilities
            })
            lspconfig.tsserver.setup({
                capabilities = capabilities
            })

            lspconfig.omnisharp.setup({
			    cmd = { omni_sharp, "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },

			    enable_roslyn_analyze = true,
			    organize_imports_on_format = true,
			    enable_import_completion = true
		    })
            
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}