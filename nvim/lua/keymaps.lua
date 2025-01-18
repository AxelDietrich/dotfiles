-- Key mappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- General mappings
map("i", "jk", "<ESC>", opts)
map("n", "ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "fi", "<cmd>Telescope live_grep<cr>", opts)
map("n", "fb", "<cmd>Telescope buffers<cr>", opts)

-- Highlight customizations
vim.cmd("hi LineNr guibg=none guifg=#FFFFFF")
