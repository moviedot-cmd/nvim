return {
	"zaldih/themery.nvim",
	config = function()
		require("themery").setup({
			themes = { "nord", "catppuccin", "kanagawa", "mellow" },
			livePreview = true,
		})
	end,
}
