local map = vim.api.nvim_set_keymap

-- Geral
map("n", "<C-A>","<cmd>NvimTreeToggle<CR>", {})
map("n", "<leader>v", "<cmd>VisitTestFile<CR>", {})

-- Terminal
map("n", "<leader>T", "<cmd>tabnew term://zsh<CR>", {})
map("n", "<leader>b", "<cmd>belowright split term://zsh<CR>", {})
map("t", "ii", "<C-\\><C-N>", {})

-- vim-test
map("n", "<leader>s", "<cmd>TestSuite<CR>", {})
map("n", "<leader>f", "<cmd>TestFile<CR>", {})
map("n", "<leader>t", "<cmd>TestNearest<CR>", {})

-- Lspsaga
map("v", "<leader>ca", ":<C-U>Lspsaga range_code_action<CR>", {})
map("n", "<leader>ca", ":Lspsaga code_action<CR>", {})

-- Telescope
map("n", "<C-M-P>", ":Telescope live_grep<CR>", {})
map("n", "<C-P>", ":Telescope find_files<CR>", {})

-- Tab navigation
map("n", "<M-1>", "1gt", {})
map("n", "<M-2>", "2gt", {})
map("n", "<M-3>", "3gt", {})
map("n", "<M-4>", "4gt", {})
map("n", "<M-5>", "5gt", {})
map("n", "<M-6>", "6gt", {})
map("n", "<M-7>", "7gt", {})
map("n", "<M-8>", "8gt", {})
map("n", "<M-9>", "9gt", {})
map("n", "<M-0>", ":tablast", {})

-- LSP
map("n", "gd", ":Lspsaga lsp_finder<CR>", {})
