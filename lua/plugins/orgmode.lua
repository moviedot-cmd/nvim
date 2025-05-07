return {
	"nvim-orgmode/orgmode",
	event = "VeryLazy",
	ft = { "org" },
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-orgmode/telescope-orgmode.nvim",
		"nvim-orgmode/org-bullets.nvim",
	},
	config = function()
		-- Setup orgmode
		require("orgmode").setup({
			org_agenda_files = "~/orgfiles/**/*",
			org_default_notes_file = "~/orgfiles/refile.org",
			mappings = {
				disable_all = true,
			},
			win_split_mode = "float",
		})
		require("org-bullets").setup()
	end,
}
