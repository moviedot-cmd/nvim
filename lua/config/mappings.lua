local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Buffers
map("n", "bk", ":blast<enter>", { noremap = false })
map("n", "bj", ":bfirst<enter>", { noremap = false })
map("n", "<S-tab>", ":bprev<enter>", { noremap = false })
map("n", "<tab>", ":bnext<enter>", { noremap = false })
map("n", "bd", ":bdelete<enter>", { noremap = false })

-- help
map("n", "<leader>h", ":Help ", opts)

-- Move between windows
map("n", "<C-h>", ":wincmd h<CR>", opts)
map("n", "<C-j>", ":wincmd j<CR>", opts)
map("n", "<C-k>", ":wincmd k<CR>", opts)
map("n", "<C-l>", ":wincmd l<CR>", opts)

-- Select all
map("n", "<C-a>", "gg<S-v>G", opts)

-- Clear search highlight
map("n", "<esc>", ":noh<cr>", opts)

-- Save file
map("n", "<leader>w", ":w<cr>", opts)

-- Quit
map("n", "<leader>q", ":q<cr>", opts)
