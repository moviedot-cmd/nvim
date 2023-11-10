return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      tab_char = "."
    },
    exclude = {
      filetypes = {
        "help",
        "startify",
        "dashboard",
        "lazy",
        "neogitstatus",
        "NvimTree",
        "Trouble",
        "text",
      }
    },
    whitespace = {
      highlight = {
        "CursorColumn",
        "Whitespace"
      },
      remove_blankline_trail = false
    },
  },
  config = true,
}
