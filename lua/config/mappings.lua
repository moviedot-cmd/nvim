local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Barbar mappings
-- Move to previous/next
map("n", "<tab>", "<Cmd>BufferNext<CR>", opts)
map("n", "<S-tab>", "<Cmd>BufferPrevious<CR>", opts)

-- Buffers
map("n", "tk", ":blast<enter>", { noremap = false })
map("n", "tj", ":bfirst<enter>", { noremap = false })
map("n", "th", ":bprev<enter>", { noremap = false })
map("n", "tl", ":bnext<enter>", { noremap = false })
map("n", "td", ":bdelete<enter>", { noremap = false })

-- Move between windows
map("n", "<C-h>", ":wincmd h<cr>", opts)
map("n", "<C-j>", ":wincmd j<cr>", opts)
map("n", "<C-k>", ":wincmd k<cr>", opts)
map("n", "<C-l>", ":wincmd l<cr>", opts)

-- Select all
map("n", "<C-a>", "gg<S-v>G", opts)

-- Clear search highlight
map("n", "<esc>", ":noh<cr>", opts)

-- Save file
map("n", "<leader>w", ":w<cr>", opts)

-- Quit
map("n", "<leader>q", ":q<cr>", opts)
