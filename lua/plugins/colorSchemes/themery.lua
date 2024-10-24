return {
	"zaldih/themery.nvim",
	config = function()
		require("themery").setup({
			themes = {
				"nordic",
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
				"yugen",
			},
			livePreview = true,
		})
	end,
}
