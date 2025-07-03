return {
	"nvim-lualine/lualine.nvim",
	dependecies = { "nvim-tree/nvim-web-devicons", opt = true },
	config = function()
		local lualine = require("lualine")

		local function showCodeiumStatus()
			return vim.api.nvim_call_function("codeium#GetStatusString", {})
		end

		lualine.setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				component_separators = "|",
				section_separators = " ",
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { { "filename" } },
				lualine_c = { "diagnostics" },
				lualine_y = { { showCodeiumStatus } },
				lualine_z = { "filetype" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}
