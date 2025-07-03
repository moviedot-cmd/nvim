return {
	"webhooked/kanso.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		-- Default options:
		require("kanso").setup({
			theme = "zen", -- Load "zen" theme
			background = { -- map the value of 'background' option to a theme
				dark = "ink", -- try "ink" or 'zen'!
				light = "pearl",
			},
		})

		-- setup must be called before loading
		vim.cmd("colorscheme kanso")
	end,
}
