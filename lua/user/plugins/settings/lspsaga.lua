local ok, lspsaga = pcall(require, 'lspsaga')

if not ok then return end

lspsaga.setup {
	code_action_prompt = {
		enable = false,
		sign = false
	}
}
