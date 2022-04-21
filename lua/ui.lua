local saga = require('lspsaga')
local lualine = require('lualine')
local nvim_tree = require('nvim-tree')
local bufferline = require('bufferline')
local alpha = require('alpha')
local alpha_theme = require('alpha.themes.dashboard')
local gitsigns = require('gitsigns')

saga.setup {
	code_action_prompt = {
		enable = false,
		sign = false
	}
}

lualine.setup({
	options = {
		theme = 'gruvbox_dark'
	},
	sections = {
		lualine_c = {
			{
				'filename',
				file_status = true,
				path = 1
			}
		}
	}
})

nvim_tree.setup({
	update_cwd = true,
	git = {
		ignore = false
	}
})

vim.notify = require("notify")

bufferline.setup {
	options = {
		mode = "tabs",
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level)
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count
		end
	}
}

alpha_theme.section.buttons.val = {
	alpha_theme.button("e", "  New file", "<cmd>ene <CR>"),
	alpha_theme.button("f f", "  Find file", '<cmd>Telescope find_files<CR>'),
	alpha_theme.button("f h", "  Recently opened files"),
	alpha_theme.button("f r", "  Frecency/MRU"),
	alpha_theme.button("f g", "  Find word", '<cmd>Telescope live_grep<CR>'),
	alpha_theme.button("f m", "  Jump to bookmarks"),
	alpha_theme.button("s l", "  Open last session"),
	alpha_theme.button('q', '  Quit NVIM', ':qa<CR>'),
}

alpha.setup(alpha_theme.opts)

gitsigns.setup {
	current_line_blame = true,
}
