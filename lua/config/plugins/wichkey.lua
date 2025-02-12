local wk = require("which-key")

wk.setup({
	delay = 500,
	preset = "helix",
	plugins = {
		spelling = true,
	},
})

wk.add({
	-- Buffer
	{ "<leader>b", icon = "", group = "Buffer" },
	{
		"<leader>bb",
		"<cmd>Telescope buffers sort_mru=true sort_lastused=true initial_mode=normal<cr>",
		icon = "",
		desc = "All buffers",
	},
	{
		"<leader>bc",
		"<cmd>lua require('close_buffers').wipe({ type = 'other' })<cr>",
		icon = "",
		desc = "Close all buffers",
	},
		-- Explorer
	{ "<leader>e", ":Oil --float<cr>", icon = "", desc = "Explorer" },
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
  { "<leader>hm", ":messages<cr>", icon = " ", desc = "Start log messages" },
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
	-- Marks
	{
		"<leader>m",
		icon = "",
		desc = "Marks",
		group = "Marks",
	},
	{
		"<leader>mc",
		":BookmarksCommands<cr>",
		icon = "",
		desc = "Commands",
	},
	{
		"<leader>mg",
		":BookmarksGoto<cr>",
		icon = "",
		desc = "Marks Toggle",
	},
	{
		"<leader>mn",
		":BookmarksGotoNext<cr>",
		icon = "",
		desc = "Next",
	},
	{
		"<leader>mp",
		":BookmarksGotoPrev<cr>",
		icon = "",
		desc = "Prev",
	},
	{
		"<leader>mm",
		":BookmarksMark<cr>",
		icon = "",
		desc = "Mark",
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
	{ "<leader>oc", icon = "", group = "Codeium/Copilot" },
	{ "<leader>occ", "<cmd>Copilot disable<cr>", icon = "", desc = "Copilot disable" },
	{ "<leader>ocr", "<cmd>Copilot restart<cr>", icon = "", desc = "Copilot restart" },
	{ "<leader>oct", "<cmd>CodeiumToggle<cr>", icon = "", desc = "Codeium toggle" },
	-- Others groups - markdown
	{
		"<leader>om",
		icon = "󰒕",
		desc = "Markdown",
		group = "Markdown",
	},
	{
		"<leader>omr",
		":MarkdownPreview<cr>",
		icon = "󰒕",
		desc = "Markdown previw",
	},
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
	-- Others group - Coder Runner
	{
		"<leader>oC",
		icon = "",
		desc = "Code Runner",
		group = "Code Runner",
	},
	{
		"<leader>oCr",
		":RunCode<cr>",
		icon = "",
		desc = "Code Runner Run",
	},
	-- Other group  - Todo plugin
	{
		"<leader>oT",
		icon = "",
		desc = "Todo",
		group = "Todo",
	},
	{
		"<leader>oTa",
		":TodoTelescope<cr>",
		icon = "",
		desc = "Todo all Telescope",
	},
	{
		"<leader>oTf",
		":TodoTelescope keywords=FIX<cr>",
		icon = "",
		desc = "Todo all Fix",
	},
	{
		"<leader>oTt",
		":TodoTelescope keywords=TODO<cr>",
		icon = "",
		desc = "Todo all Todo",
	},
	{
		"<leader>oTn",
		":TodoTelescope keywords=NOTE<cr>",
		icon = "",
		desc = "Todo all Note",
	},
	{
		"<leader>oTw",
		":TodoTelescope keywords=WARNING<cr>",
		icon = "",
		desc = "Todo all Warning",
	},
  -- Copilot chat
	{ "<leader>C", icon = "", group = "Copilot Chat" },
	{ "<leader>Cc", "<cmd>CopilotChatToggle<cr>", icon = "", desc = "Toggle Copilot Chat" },
	{ "<leader>Ce", "<cmd>CopilotChatExplain<cr>", icon = "", desc = "Explain code" },
	{ "<leader>Cf", "<cmd>CopilotChatFix<cr>", icon = "", desc = "Fix code" },
	{ "<leader>Co", "<cmd>CopilotChatOptimize<cr>", icon = "", desc = "Optimize code" },
	{ "<leader>Ct", "<cmd>CopilotChatTests", icon = "", desc = "Test code" },

	-- Hidden or Ignore
	{ "<leader>c", hidden = true },
	{ "<leader>d", hidden = true },
	{ "<leader>r", hidden = true },
	{ "<leader>D", hidden = true },
})
