local wk = require("which-key")

wk.setup({
	delay = 500,
	preset = "helix",
	plugins = {
		spelling = true,
	},
})

wk.add({
	-- Buffer group
	{ "<leader>b", icon = "", group = "Buffer" },
	{
		"<leader>bb",
		"<cmd>Telescope buffers sort_mru=true sort_lastused=true initial_mode=normal<cr>",
		icon = "",
		desc = "All buffers",
	},
	{
		"<leader>bC",
		"<cmd>lua require('close_buffers').wipe({ type = 'other' })<cr>",
		icon = "",
		desc = "Close all buffers",
	},
	-- Explorer
	{ "<leader>e", "<cmd>NvimTreeToggle<cr>", icon = "", desc = "Explorer" },
	-- Files group
	{ "<leader>f", icon = "", group = "Files" },
	{ "<leader>ff", "<cmd>Telescope find_files<cr>", icon = "", desc = "Find files" },
	{ "<leader>ft", "<cmd>Telescope live_grep<cr>", icon = "", desc = "Find files by text" },
	-- Git group
	{ "<leader>g", icon = "", group = "Git" },
	{ "<leader>gb", "<cmd>Telescope git_branches<cr>", icon = "", desc = "Git branches" },
	{ "<leader>gc", "<cmd>Telescope git_commits<cr>", icon = "", desc = "Git commits" },
	{ "<leader>gd", "<cmd>DiffviewOpen<cr>", icon = "", desc = "Git diff" },
	{ "<leader>gg", "<cmd>LazyGit<cr>", icon = "", desc = "Git" },
	{ "<leader>gs", "<cmd>Telescope git_status<cr>", icon = "", desc = "Git status" },
	{ "<leader>gB", "<cmd>Git blame<cr>", icon = "", desc = "Git blame" },
	{
		"<leader>gC",
		"<cmd>lua require('telescope').extensions.conventional_commits.conventional_commits()<cr>",
		icon = "",
		desc = "Git conventional commits",
	},
	-- Help group
	{ "<leader>h", icon = " ", group = "Help" },
	{
		"<leader>h?",
		function()
			require("which-key").show()
		end,
		desc = "Buffer Local Keymaps (which-key)",
	},
	-- Lsp group
	{ "<leader>l", icon = " ", group = "lsp" },
	{ "<leader>ld", "<cmd>lua vim.diagnostic.open_float()<cr>", icon = "", desc = "Lsp Diagnostics" },
	{ "<leader>li", "<cmd>LspInfo<cr>", icon = "", desc = "Lsp Info" },
	{ "<leader>lj", "<cmd>lua vim.diagnostic.goto_next()<cr>", icon = "", desc = "Next Diagnostic" },
	{ "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev()<cr>", icon = "", desc = "Prev Diagnostic" },
	{ "<leader>lf", "<cmd>lua vim.lsp.buf.format()<cr>", icon = "", desc = "Lsp Format" },
	{ "<leader>ll", "<cmd>LspLog<cr>", icon = "", desc = "Lsp Log" },
	{ "<leader>lr", "<cmd>LspRestart<cr>", icon = "", desc = "Lsp Restart" },
	{ "<leader>ls", "<cmd>LspStart<cr>", icon = "", desc = "Lsp Start" },
	{ "<leader>lt", "<cmd>LspStop<cr>", icon = "", desc = "Lsp Stop" },
	{ "<leader>lL", "<cmd>LspToggleDiagnostics<cr>", icon = "", desc = "Lsp Toggle Diagnostics" },
	{
		"<leader>mm",
		function()
			harpoon_module.toggle_telescope(harpoon:list())
		end,
		icon = "",
		desc = "Toggle Harpoon",
	},
	-- Testing group
	{ "<Leader>t", icon = "", group = "Testing" },
	{ "<Leader>tt", "<cmd>TestNearest<cr>", icon = "", desc = "Test nearest" },
	{ "<Leader>tf", "<cmd>TestFile<cr>", icon = "", desc = "Test file" },
	{ "<Leader>ta", "<cmd>TestSuite<cr>", icon = "", desc = "Test suite" },
	{ "<Leader>tl", "<cmd>TestLast<cr>", icon = "", desc = "Test last" },
	{ "<Leader>tg", "<cmd>TestVisit<cr>", icon = "", desc = "Test visit" },
	-- Others group
	{ "<leader>o", icon = "󰡨", group = "others" },
	-- Others group - codeium
	{ "<leader>oc", icon = "", group = "Codeium" },
	{ "<leader>oct", "<cmd>CodeiumToggle<cr>", icon = "", desc = "Codeium toggle" },
	-- Others group - replace
	{ "<leader>or", icon = "", group = "Replace" },
	{
		"<leader>orf",
		"<cmd>lua require('spectre').open_file_search({select_word=true})<CR>",
		icon = "",
		desc = "Replace file",
	},
	{ "<leader>orr", "<cmd>lua require('spectre').open()<CR>", icon = "", desc = "Replace" },
	{
		"<leader>orw",
		"<cmd>lua require('spectre').open_visual({select_word=true})<CR>",
		icon = "",
		desc = "Replace word",
	},
	-- Others group - sort
	{ "<leader>os", icon = "", group = "Sort" },
	{ "<leader>osj", "<cmd>SortJSONByAlphaNum<cr>", icon = "", desc = "Sort JSON" },
	-- Others group - terminal
	{ "<leader>ot", icon = "", group = "Terminal" },
	{
		"<leader>oth",
		"<cmd>ToggleTerm size=20 direction=horizontal<cr>",
		icon = "",
		desc = "Terminal Horizontal",
	},
	{
		"<leader>otv",
		"<cmd>ToggleTerm size=80 direction=vertical<cr>",
		icon = "",
		desc = "Terminal Vertical",
	},
	-- Quit
	{ "<leader>q", ":q<cr>", icon = "", desc = "quit" },
	-- Save
	{ "<leader>w", ":w<cr>", icon = "", desc = "Save", hidden = true },
	-- Hidden or Ignore
	{ "<leader>c", hidden = true },
	{ "<leader>d", hidden = true },
	{ "<leader>r", hidden = true },
	{ "<leader>D", hidden = true },
})
