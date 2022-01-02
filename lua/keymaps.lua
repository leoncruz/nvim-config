local map = vim.api.nvim_set_keymap

vim.g.mapleader = ' '

-- Geral
map("n", "<C-A>", ":NvimTreeToggle<CR>", { silent = true }) 
map("n", "<leader>v ", ":VisitTestFile<CR>", { silent = true })

-- Terminal
map("n", "<leader>T ", ":tabnew term://zsh<CR>", { silent = true })
map("n", "<leader>b ", ":belowright split term://zsh<CR>", { silent = true })

-- vim-test
map("n", "<leader>s ", ":TestSuite<CR>", { silent = true })
map("n", "<leader>f ", ":TestFile<CR>", { silent = true })
map("n", "<leader>t ", ":TestNearest<CR>", { silent = true })

-- Lspsaga
map("v", "<leader>ca", ":<C-U>Lspsaga range_code_action<CR>", { silent = true })
map("n", "<leader>ca", ":Lspsaga code_action<CR>", { silent = true })

-- Telescope
map("n", "<M-C-P>  ", ":Telescope live_grep<CR>", { silent = true })
map("n", "<C-P>", ":Telescope find_files<CR>", { silent = true })

-- Tab navigation
map("n", "<M-0>", "0gt", { silent = true })
map("n", "<M-9>", "9gt", { silent = true })
map("n", "<M-8>", "8gt", { silent = true })
map("n", "<M-7>", "7gt", { silent = true })
map("n", "<M-6>", "6gt", { silent = true })
map("n", "<M-5>", "5gt", { silent = true })
map("n", "<M-4>", "4gt", { silent = true })
map("n", "<M-3>", "3gt", { silent = true })
map("n", "<M-2>", "2gt", { silent = true })
map("n", "<M-1>", "1gt", { silent = true })


-- LSP
map("n", "gd", ":lua vim.lsp.buf.definition()<CR>", { silent = true })
