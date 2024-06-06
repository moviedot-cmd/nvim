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
			c = { ":bdelete<cr>", "close", noremap = true },
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
				n = { ":Neogit<cr>", "Neogit" },
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
					"<cmd>lua require('telescope').extensions.conventional_commits.conventional_commits()<cr>",
					"Conventional Commits",
					noremap = true,
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
			t = {
				name = "Test",
				a = { "<cmd>lua require('neotest').run.attach()<cr>", "Attach", noremap = true, silent = true },
				d = {
					"<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>",
					"Debug",
					noremap = true,
					silent = true,
				},
				f = {
					"<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>",
					"File",
					noremap = true,
					silent = true,
				},
				n = { "<cmd>lua require('neotest').run.run()<cr>", "Nearest", noremap = true, silent = true },
				s = { "<cmd>lua require('neotest').run.stop()<cr>", "Stop", noremap = true, silent = true },
				o = {
					"<cmd>lua require('neotest').output.open({ enter = true })<cr>",
					"Output",
					noremap = true,
					silent = true,
				},
				u = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Summary", noremap = true, silent = true },
				w = { "<cmd>lua require('neotest').run.watch()<cr>", "Watch", noremap = true, silent = true },
				F = {
					"<cmd>lua require('neotest').run.run({strategy = 'failed'})<cr>",
					"Failed",
					noremap = true,
					silent = true,
				},
			},
			o = {
				name = "Others",
				b = {
					name = "Bookmarks",
					a = { ":BookmarkAnnotate<cr>", "Annotate" },
					c = { ":BookmarkClear<cr>", "Clear" },
					C = { ":BookmarkClearAll<cr>", "Clear All" },
					m = { ":BookmarkToggle<cr>", "Toggle" },
					j = { ":BookmarkNext<cr>", "Next" },
					k = { ":BookmarkPrev<cr>", "Prev" },
					s = {
						":Telescope vim_bookmarks all<cr>",
						"Show All",
					},
				},
				c = {
					name = "Codium",
					t = { ":CodeiumToggle<cr>", "Toggle" },
				},
				r = {
					name = "Replace",
					r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
					w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
					f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
				},
				s = {
					name = "sort",
					j = { ":SortJSONByAlphaNum<cr>", "sort json by alpha num" },
				},
				t = {
					name = "terminal",
					h = { ":ToggleTerm size=20 direction=horizontal<cr>", "horizontal" },
					v = { ":ToggleTerm size=80 direction=vertical<cr>", "vertical" },
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
