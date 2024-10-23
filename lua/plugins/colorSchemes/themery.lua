return {
	"zaldih/themery.nvim",
	config = function()
		require("themery").setup({
			themes = {
				"nord",
				"catppuccin",
				"kanagawa",
				"mellow",
				"gruvbox-material",
				"bamboo",
				"everforest",
				"oldworld",
				"nordern",
				"lackluster",
				"posterpole",
			},
			livePreview = true,
		})
	end,
}
