return {
	"OXY2DEV/helpview.nvim",
	lazy = false,
	config = function()
		require("helpview").setup({
			preview = {
				splitview_winopts = {
					split = "left",
					win = 0,
				},
			},
		})
	end,
}
