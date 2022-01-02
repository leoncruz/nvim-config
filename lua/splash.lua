local api = vim.api

local columns = api.nvim_get_option('columns')
local rows = api.nvim_get_option('lines')

local function get_git_files()
	local path = '.git/'

	if vim.fn.isdirectory(path) == 1 then
		local git_status_files = vim.fn.systemlist('git status -s')
		if next(git_status_files) == nil then
			return false
		else
			return git_status_files
		end
	else
		return false
	end
end

local function centralize_text()
	local center_width = math.floor(columns / 3)
	local center_height = math.floor(rows / 3)

	return center_width, center_height
end

local function header()
	for i = 1, rows, 1 do
		vim.fn.append('$', '')
	end

	api.nvim_exec(
		[[
			setlocal virtualedit=all
		]],
		true
	)
end

local function change_view(buffer, width, height, content)
	local offset = height

	for index, line in pairs(content) do
		api.nvim_win_set_cursor(0, { offset, width })
		vim.fn.execute("normal! a" .. line)

		offset = offset + 1
	end

	api.nvim_win_set_cursor(0, { height, width })
end

local function open_file()
	cursor_pos = api.nvim_win_get_cursor(0)
	file = vim.fn.split(vim.fn.getline('.'))[2]

	if vim.fn.filereadable(file) >= 1 then
		api.nvim_command('edit ' .. file)
	else
		return false
	end

	api.nvim_exec(
		[[
			set virtualedit=""
		]],
		true
	)
end

local function set_mappings()
	local mappings = {
		['<cr>'] = 'open_file()'
	}

	for key, value in pairs(mappings) do
		api.nvim_buf_set_keymap(0, 'n', key, ':lua require"splash".'..value..'<cr>', {
			nowait=true, noremap=true, silent = true
		})
	end
end

local function start()
	local git_unstaged_files = get_git_files()

	if git_unstaged_files then
		header()
		local cursor_pos_col, cursor_pos_line = centralize_text()
		local buffer = api.nvim_get_current_buf()

		change_view(buffer, cursor_pos_col, cursor_pos_line, git_unstaged_files)

		api.nvim_exec(
			[[
				setlocal filetype=dashboard
				setlocal bufhidden=hide
				setlocal nomodifiable
				setlocal buftype=nofile
				setlocal nonumber
			]],
			true
		)

		set_mappings()
	end
end

return {
	start = start,
	open_file = open_file
}
