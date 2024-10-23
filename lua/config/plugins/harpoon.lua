local harpoon = require("harpoon")
harpoon:setup({})

-- basic telescope configuration

local conf = require("telescope.config").values

function M.toggle_telescope(harpoon_files)
	local file_paths = {}
	for _, item in ipairs(harpoon_files.items) do
		table.insert(file_paths, item.value)
	end

	require("telescope.pickers")
		.new({}, {
			prompt_title = "Harpoon",
			finder = require("telescope.finders").new_table({
				results = file_paths,
			}),
			previewer = conf.file_previewer({}),
			sorter = conf.generic_sorter({}),
		})
		:find()
end

function M.add_mark()
	harpoon:list():add()
end

function M.remove_mark()
	harpoon:list():remove()
end

function M.clear_marks()
	harpoon:list():clear()
end

return M
