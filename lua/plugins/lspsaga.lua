return function()
	return require('lspsaga').setup {
		code_action_prompt = {
			enable = false,
			sign = false
		}
	}
end
