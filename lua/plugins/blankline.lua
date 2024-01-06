return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = {
			tab_char = ".",
		},
		exclude = {
			filetypes = {
				"help",
				"startify",
				"dashboard",
				"lazy",
				"neogitstatus",
				"NvimTree",
				"Trouble",
				"text",
			},
		},
		whitespace = {
			highlight = {
				"Whitespace",
			},
			remove_blankline_trail = false,
		},
		scope = { char = ":", show_start = false },
	},
	config = true,
}
