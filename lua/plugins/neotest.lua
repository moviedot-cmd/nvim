---@diagnostic disable: missing-fields

return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-neotest/neotest-jest",
		"nvim-neotest/neotest-plenary",
	},
	config = function()
		require("neotest").setup({
			discovery = {
				enabled = false,
			},
			adapters = {
				require("neotest-plenary"),
				require("neotest-jest")({
					jest_test_discovery = false,
					jestCommand = "NODE_ENV=test jest --maxWorkers=50% --config jest.config.js",
					jestConfigFile = vim.fn.getcwd() .. "/jest.config.js",
					env = { CI = true },
					cwd = function(_)
						return vim.fn.getcwd()
					end,
				}),
			},
		})
	end,
}
