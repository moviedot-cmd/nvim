return {
  "zaldih/themery.nvim",
  config = function()
    require("themery").setup({
      themes = {
        "nordic",
        "catppuccin-mocha",
        "kanagawa",
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
