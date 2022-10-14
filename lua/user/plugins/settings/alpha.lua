local ok, alpha = pcall(require, 'alpha')

if not ok then return end

local alpha_theme = require('alpha.themes.dashboard')

alpha_theme.section.buttons.val = {
	alpha_theme.button("e", "  New file", "<cmd>ene <CR>"),
	alpha_theme.button("f f", "  Find file", '<cmd>Telescope find_files<CR>'),
	alpha_theme.button("f h", "  Projects", '<cmd>Telescope workspaces<CR>'),
	alpha_theme.button("f g", "  Find word", '<cmd>Telescope live_grep<CR>'),
	alpha_theme.button('q', '  Quit NVIM', ':qa<CR>'),
}

alpha.setup(alpha_theme.opts)
