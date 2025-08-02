-- vim.cmd("set expandtab")
-- vim.cmd("set tabstop=2")
-- vim.cmd("set softtabstop=2")
-- vim.cmd("set shiftwidth=2")
-- vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

require ("vim-options")
require("lazy").setup("plugins")


-- vim.filetype.add({
-- 	extension = {
-- 		cs = "csharp",
-- 		dart = "dart",
-- 	}
-- })

-- vim.wo.number = true
-- vim.wo.relativenumber = false

-- local cmp = require'cmp'

-- cmp.setup({
-- 	snippet = {
-- 		expand = function(args)
-- 			require('luasnip').lsp_expand(args.body)
-- 		end,
-- 	},
-- 	mapping = cmp.mapping.preset.insert({
-- 		['<C-b>'] = cmp.mapping.scroll_docs(-4),
-- 		['<C-f>'] = cmp.mapping.scroll_docs(4),
-- 		['<C-Space>'] = cmp.mapping.complete(),
-- 		['<C-e>'] = cmp.mapping.abort(),
-- 		['<CR>'] = cmp.mapping.confirm({ select = true }),
-- 	}),
-- 	sources = cmp.config.sources({
-- 		{ name = 'nvim_lsp' },
-- 		{ name = 'luasnip' },
-- 	}, {
-- 		{ name = 'buffer' },
-- 	})
-- })
