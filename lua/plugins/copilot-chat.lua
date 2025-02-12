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
			debug = true, -- Enable debugging
			show_help = true, -- Show help actions
			window = {
				layout = "float",
			},
			auto_follow_cursor = false, -- Don't follow the cursor after getting response
		},
	},
}
