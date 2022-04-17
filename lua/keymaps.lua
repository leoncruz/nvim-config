local map = vim.api.nvim_set_keymap

-- Geral
map("n", "<C-A>","<cmd>NvimTreeToggle<CR>", {})
map("n", "<leader>v", "<cmd>VisitTestFile<CR>", {})
map("n", "<C-[>", "<ESC>", {})
map("v", "<C-[>", "<ESC>", {})

-- Terminal
map("n", "<leader>T", "<cmd>tabnew term://fish<CR>", {})
map("n", "<leader>b", "<cmd>belowright split term://fish<CR>", {})
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

-- Bufferline
map("n", "<leader>e", ":BufferLineCycleNext<CR>", { silent = true })
map("n", "<leader>q", ":BufferLineCyclePrev<CR>", { silent = true })

map("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", { silent = true })
map("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", { silent = true })
map("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", { silent = true })
map("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", { silent = true })
map("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", { silent = true })
map("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", { silent = true })
map("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", { silent = true })
map("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", { silent = true })
map("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", { silent = true })

-- Gitsigns
map("n", "<leader>hs", ":Gitsigns stage_hunk<CR>", { silent = true })
map("n", '<leader>hu', ":Gitsigns reset_hunk<CR>", { silent = true })
map("n", '<leader>hp', ":Gitsigns preview_hunk<CR>", { silent = true })
map("n", '[c', ":Gitsigns next_hunk<CR>", { silent = true })
map("n", ']c', ":Gitsigns prev_hunk<CR>", { silent = true })
