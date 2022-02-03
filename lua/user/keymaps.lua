local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Quit and Save
keymap("n", "<Leader>q", ":q<CR>", { noremap = true })
keymap("n", "<Leader>w", ":w!<CR>", { noremap = true })

-- Buffers
keymap("n", "<Tab>", ":bn<CR>", { noremap = true })
keymap("n", "<S-Tab>", ":bp<CR>", { noremap = true })
keymap("n", "<Leader>c", ":bw<CR>", { noremap = true })
keymap("n", "<Leader>o", ":tabe", { noremap = true })

-- Select all
keymap("n", "<C-a>", "ggVG", { noremap = true })

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<A-Up>", ":resize +2<CR>", opts)
keymap("n", "<A-Down>", ":resize -2<CR>", opts)
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)

-- Visual --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Plugins --

-- Telescope
keymap("n", "<Leader>ff", '<cmd>lua require("telescope.builtin").find_files()<cr>', { noremap = true })
keymap("n", "<Leader>fg", '<cmd>lua require("telescope.builtin").live_grep()()<cr>', { noremap = true })
keymap("n", "<Leader>fb", '<cmd>lua require("telescope.builtin").buffers()<cr>', { noremap = true })
keymap("n", "<Leader>fh", '<cmd>lua require("telescope.builtin").help_tags()<cr>', { noremap = true })

-- Toggleterm
keymap("n", "<Leader>lg", ":lua _LAZYGIT_TOGGLE()<CR>", { noremap = true })

-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>fo", ":Format<cr>", opts)
