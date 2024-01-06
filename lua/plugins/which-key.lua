return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	config = function()
		local wk = require("which-key")
		local mappings = {
			["/"] = { "<Plug>(comment_toggle_linewise_current)<cr>", "comment line", noremap = false },
			["?"] = { "<Plug>(comment_toggle_blockwise_visual)<cr>", "comment block", noremap = false, mode = "v" },
			c = { "close", noremap = true },
			e = { ":NvimTreeToggle<cr>", "toggle menu", noremap = true },
			f = {
				name = "files",
				f = { "<cmd>lua require('telescope.builtin').find_files()<cr>", "find files", noremap = true },
				t = { ":Telescope live_grep<cr>", "Find by text" },
			},
			g = {
				name = "Git",
				g = { ":LazyGit<cr>", "Lazygit" },
				j = { "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>", "Next Hunk" },
				k = { "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>", "Prev Hunk" },
				l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
				m = { ":DiffviewOpen<cr>", "merge tool" },
				p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
				r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
				R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
				s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
				u = {
					"<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
					"Undo Stage Hunk",
				},
				o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
				b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
				c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
				C = {
					"<cmd>Telescope git_bcommits<cr>",
					"Checkout commit(for current file)",
				},
				d = {
					"<cmd>Gitsigns diffthis HEAD<cr>",
					"Git Diff",
				},
			},
			q = { ":q<cr>", "quit", noremap = true },
			w = { ":w<cr>", "save", noremap = true },
			l = {
				name = "LSP",
				i = { ":LspInfo<cr>", "info", noremap = true },
				f = { "format", noremap = true },
				l = { ":LspLog<cr>", "log", noremap = true },
				r = { ":LspRestart<cr>", "restart", noremap = true },
				s = { ":LspStart<cr>", "start", noremap = true },
				t = { ":LspStop<cr>", "stop", noremap = true },
				L = { "Lint", noremap = true },
			},
			o = {
				name = "Others",
				b = {
					name = "Bookmarks",
					a = { "Annotate" },
					c = { "Clear All" },
					m = { "Toggle" },
					j = { "Next" },
					k = { "Prev" },
					s = {
						":Telescope bookmarks list<cr>",
						"Show All",
					},
				},
				r = {
					name = "Replace",
					r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
					w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
					f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
				},
				t = {
					name = "Terminal",
					n = { "<cmd>lua _NODE_TOGGLE()<cr>", "Node" },
					u = { "<cmd>lua _NCDU_TOGGLE()<cr>", "NCDU" },
					t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop" },
					p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" },
					f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
					h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
					v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
				},
			},
			L = { ":Lazy<cr>", "open lazy menu", noremap = true },
			D = "which_key_ignore",
		}

		wk.register(mappings, { prefix = "<leader>" })
	end,
	opts = {
		registers = true,
		ignore_missing = true,
	},
}
