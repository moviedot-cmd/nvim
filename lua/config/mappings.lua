local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Barbar mappings
-- Move to previous/next
map("n", "<tab>", "<Cmd>BufferNext<CR>", opts)
map("n", "<S-tab>", "<Cmd>BufferPrevious<CR>", opts)

-- Buffers
map("n", "<leader>c", "<Cmd>BufferDelete<CR>", opts)

-- Move between windows
map("n", "<C-h>", ":wincmd h<cr>", opts)
map("n", "<C-j>", ":wincmd j<cr>", opts)
map("n", "<C-k>", ":wincmd k<cr>", opts)
map("n", "<C-l>", ":wincmd l<cr>", opts)

-- Select all
map("n", "<C-a>", "gg<S-v>G", opts)

-- Newline
map("n", "o", "<Esc>o", opts)
