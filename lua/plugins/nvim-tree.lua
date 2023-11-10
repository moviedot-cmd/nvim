---@diagnostic disable: missing-fields

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  main = "config.plugins.nvim-tree",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = true,
}
