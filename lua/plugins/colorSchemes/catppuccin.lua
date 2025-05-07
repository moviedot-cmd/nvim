return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000,
  config = function()
    -- load the colorscheme here
    require("catppuccin").setup({
      integrations = {
        diffview = true,
        neotree = true,
        noice = true,
        which_key = true,
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      styles = {
        comments = { "italic" },
      },
    })

    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
