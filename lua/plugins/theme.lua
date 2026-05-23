vim.pack.add { 'https://github.com/folke/tokyonight.nvim' }
---@diagnostic disable-next-line: missing-fields

require('tokyonight').setup {
	styles = {
		comments = { italic = false }, -- Disable italics in comments
	},
}

-- Using vim.pack
vim.pack.add({
        "https://github.com/navarasu/onedark.nvim",
        })
require('onedark').setup {
    style = 'cool'
}
require('onedark').load()



vim.cmd.colorscheme 'tokyonight-night'
