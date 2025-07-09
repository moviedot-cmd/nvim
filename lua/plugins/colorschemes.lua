return {
  {
    "webhooked/kanso.nvim",
    name = "kanso",
    lazy = false,
    opts = {
      theme = "zen", -- Load "zen" theme
      background = { -- map the value of 'background' option to a theme
        dark = "ink", -- try "ink" or 'zen'!
        light = "pearl",
      },
    },
  },
  -- Configure LazyVim to load kanso
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanso",
    },
  },
}
