local wk = require("which-key")

wk.setup({
	delay = 500,
	preset = "helix",
	plugins = {
		spelling = true,
	},
})

wk.add({
	-- Git group
	{ "<leader>g", icon = " ", group = "git" },
	{
		"<leader>gc",
		"<cmd>lua require('telescope').extensions.conventional_commits.conventional_commits()<cr>",
		icon = "",
		desc = "Conventional Commits",
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
	-- Testing group
	{ "<Leader>t", icon = "", group = "Testing" },
	{ "<Leader>tt", "<cmd>TestNearest<cr>", icon = "", desc = "Test nearest" },
	{ "<Leader>tf", "<cmd>TestFile<cr>", icon = "", desc = "Test file" },
	{ "<Leader>ta", "<cmd>TestSuite<cr>", icon = "", desc = "Test suite" },
	{ "<Leader>tl", "<cmd>TestLast<cr>", icon = "", desc = "Test last" },
	{ "<Leader>tg", "<cmd>TestVisit<cr>", icon = "", desc = "Test visit" },
	-- Others group
	{ "<leader>o", icon = "󰡨", group = "others", mode = { "n", "v" } },
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
	{ "<leader>or", icon = "", group = "Replace", mode = { "n", "v" } },
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
	-- Other group - org mode
	{
		"<leader>oo",
		icon = "",
		desc = "Org mode",
		group = "Org mode",
	},
	{
		"<leader>ooa",
		":Org agenda<cr>",
		icon = "",
		desc = "Org mode agenda",
	},
	{
		"<leader>ooc",
		":Org capture<cr>",
		icon = "",
		desc = "Org mode capture",
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
	{ "<leader>C", icon = "", group = "Copilot Chat", mode = { "n", "v" } },
	{ "<leader>Cc", ":CopilotChatToggle<cr>", icon = "", desc = "Toggle Copilot Chat", mode = { "n", "v" } },
	{ "<leader>Ce", ":CopilotChatExplain<cr>", icon = "", desc = "Explain code", mode = { "n", "v" } },
	{ "<leader>Cf", ":CopilotChatFix<cr>", icon = "", desc = "Fix code", mode = { "n", "v" } },
	{ "<leader>Co", ":CopilotChatOptimize<cr>", icon = "", desc = "Optimize code", mode = { "n", "v" } },
	{ "<leader>Ct", ":CopilotChatTests", icon = "", desc = "Test code", mode = { "n", "v" } },

	-- Hidden or Ignore
	{ "<leader>c", hidden = true },
	{ "<leader>d", hidden = true },
	{ "<leader>r", hidden = true },
	{ "<leader>w", hidden = true },
	{ "<leader>D", hidden = true },
})
