return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPre", "BufNewFile" },
	main = "nvim-treesitter.configs",
	opts = {
		autotag = {
			enable = true,
		},
		ensure_installed = {
			"javascript",
			"json",
			"lua",
			"luadoc",
			"tsx",
			"html",
			"typescript",
		},
		auto_install = true,
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
	},
}
