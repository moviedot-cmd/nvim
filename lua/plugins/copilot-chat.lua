return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "main",
		dependencies = {
			{ "zpirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
			{ "nvim-telescope/telescope.nvim" }, -- Use telescope for help actions
		},
		build = "make token",
		opts = {
			mappings = {
				submit_prompt = {
					normal = "<C-c>",
					insert = "<C-c>",
				},
				show_diff = {
					full_diff = true,
				},
			},
			debug = true, -- Enable debugging
			show_help = true, -- Show help actions
			window = {
				layout = "vertical", -- 'vertical', 'horizontal', 'float', 'replace'
				border = "shadow",
				width = 70,
			},
			auto_follow_cursor = false, -- Don't follow the cursor after getting response
		},
	},
}
