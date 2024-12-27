local tele = require("telescope")
local actions = require("telescope.actions")

tele.setup({
	defaults = {
		mappings = {
			i = {
				["<C-u>"] = false,
				["<C-j>"] = {
					actions.move_selection_next,
					type = "action",
					opts = { nowait = true, silent = true },
				},
				["<C-k>"] = {
					actions.move_selection_previous,
					type = "action",
					opts = { nowait = true, silent = true },
				},
				["<C-d>"] = actions.delete_buffer,
			},
			n = {
				["<C-j>"] = {
					actions.move_selection_next,
					type = "action",
					opts = { nowait = true, silent = true },
				},
				["<C-k>"] = {
					actions.move_selection_previous,
					type = "action",
					opts = { nowait = true, silent = true },
				},
				["d"] = actions.delete_buffer,
			},
		},
	},
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		},
		file_browser = {
			theme = "ivy",
			-- disables netrw and use telescope-file-browser in its place
			hijack_netrw = true,
			grouped = true,
			mappings = {
				i = {
					-- your custom insert mode mappings
					["<C-j>"] = require("telescope.actions").move_selection_next,
					["<C-k>"] = require("telescope.actions").move_selection_previous,
				},
				n = {
					-- your custom normal mode mappings
					["<C-j>"] = require("telescope.actions").move_selection_next,
					["<C-k>"] = require("telescope.actions").move_selection_previous,
				},
			},
		},
	},
})

pcall(tele.load_extension("notify"))
pcall(tele.load_extension("fzf"))
pcall(tele.load_extension("conventional_commits"))
pcall(tele.load_extension("vim_bookmarks"))
pcall(tele.load_extension("file_browser"))
