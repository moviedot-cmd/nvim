local nvimtree = require("nvim-tree")

local M = {}

function M.setup()
	local function my_on_attach(bufnr)
		local api = require("nvim-tree.api")

		local function opts(desc)
			return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
		end

		-- default mappings
		api.config.mappings.default_on_attach(bufnr)

		-- custom mappings
		vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
		vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
	end

	nvimtree.setup({
		on_attach = my_on_attach,
		hijack_cursor = true,
		actions = {
			open_file = {
				quit_on_open = true,
			},
		},
		live_filter = {
			prefix = " ",
			always_show_folders = false, -- Turn into false from true by default
		},
		renderer = {
			icons = {
				web_devicons = {
					file = {
						enable = true,
						color = true,
					},
				},
				glyphs = {
					folder = {
						default = "",
						open = "",
					},
				},
			},
		},
		update_focused_file = {
			enable = true,
		},
	})
end

return M
