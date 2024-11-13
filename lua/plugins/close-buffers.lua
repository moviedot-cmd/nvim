return {
	"kazhala/close-buffers.nvim",
	lazy = false,
	event = "VeryLazy",
	config = function()
		require("close_buffers").setup()
	end,
}
