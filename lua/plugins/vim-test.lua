return {
	"vim-test/vim-test",
	dependencies = {
		"preservim/vimux",
	},
	config = function()
		vim.g["test#javascript#runner"] = "jest"
		vim.g["test#javascript#jest#options"] = "--watch"
		vim.g["VimuxOrientation"] = "h"
		vim.g["VimuxHeight"] = "40%"
		vim.cmd("let test#strategy = 'vimux'")
	end,
}
