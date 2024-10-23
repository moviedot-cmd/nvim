return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
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
			{ "<leader>bb", "<cmd>Telescope buffers<cr>", icon = "", desc = "All buffers" },
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
			{ "<leader>gn", "<cmd>Neogit<cr>", icon = "", desc = "Neogit" },
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
			{ "<leader>li", "<cmd>LspInfo<cr>", icon = "", desc = "Lsp Info" },
			{ "<leader>lf", "<cmd>lua vim.lsp.buf.format()<cr>", icon = "", desc = "Lsp Format" },
			{ "<leader>ll", "<cmd>LspLog<cr>", icon = "", desc = "Lsp Log" },
			{ "<leader>lr", "<cmd>LspRestart<cr>", icon = "", desc = "Lsp Restart" },
			{ "<leader>ls", "<cmd>LspStart<cr>", icon = "", desc = "Lsp Start" },
			{ "<leader>lt", "<cmd>LspStop<cr>", icon = "", desc = "Lsp Stop" },
			{ "<leader>lL", "<cmd>LspToggleDiagnostics<cr>", icon = "", desc = "Lsp Toggle Diagnostics" },
			-- Others group
			{ "<leader>o", icon = "󰡨", group = "others" },
			-- Other group - bookmarks
			{ "<leader>ob", icon = "", group = "Bookmarks" },
			{ "<leader>oba", "<cmd>BookmarkAnnotate<cr>", icon = "", desc = "Annotate" },
			{ "<leader>obc", "<cmd>BookmarkClear<cr>", icon = "", desc = "Clear" },
			{ "<leader>obj", "<cmd>BookmarkNext<cr>", icon = "", desc = "Next" },
			{ "<leader>obk", "<cmd>BookmarkPrev<cr>", icon = "", desc = "Prev" },
			{ "<leader>obs", "<cmd>Telescope vim_bookmarks all<cr>", icon = "", desc = "All Bookmarks" },
			{ "<leader>obt", "<cmd>BookmarkToggle<cr>", icon = "", desc = "Toggle" },
			{ "<leader>obC", "<cmd>BookmarkClearAll<cr>", icon = "", desc = "Clear All" },
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
	end,
}
