return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		-- load the colorscheme here

		vim.fn.sign_define({
			{
				name = "DiagnosticSignError",
				text = "",
				texthl = "DiagnosticSignError",
				linehl = "ErrorLine",
			},
			{
				name = "DiagnosticSignWarn",
				text = "",
				texthl = "DiagnosticSignWarn",
				linehl = "WarningLine",
			},
			{
				name = "DiagnosticSignInfo",
				text = "",
				texthl = "DiagnosticSignInfo",
				linehl = "InfoLine",
			},
			{
				name = "DiagnosticSignHint",
				text = "",
				texthl = "DiagnosticSignHint",
				linehl = "HintLine",
			},
		})

		local catppuccin = require("catppuccin")

		catppuccin.setup({
			integrations = {},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		})

		vim.cmd([[colorscheme catppuccin-mocha]])
	end,
}
