return {
  "zaldih/themery.nvim",
  config = function()
    require("themery").setup({
      themes = {
        "nordic",
        "catppuccin-mocha",
        "kanagawa",
        {
          name = "kanagawa-dragon",
          colorscheme = "kanagawa-dragon",
          before = [[
            vim.g.kanagawa_background = 'dragon'
          ]],
        },
        "mellow",
        "gruvbox-material",
        "bamboo",
        {
          name = "everforest hard",
          colorscheme = "everforest",
          before = [[
            vim.g.everforest_background = 'hard'
          ]],
        },
        "oldworld",
        "nordern",
        "lackluster",
        "posterpole",
        "yugen",
      },
      livePreview = true,
    })
  end,
}
