local ok, alpha = pcall(require, 'alpha')

if not ok then return end

local alpha_theme = require('alpha.themes.dashboard')

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
