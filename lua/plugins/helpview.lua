return {
  "OXY2DEV/helpview.nvim",
  lazy = false,
  config = function()
    require("helpview").setup({
      preview = {
        filetypes = { "help" },
        splitview_winopts = {
          split = "left",
          win = 0,
        },
        icon_provider = "devicons",
        preview_winopts = {
          split = "right",
          win = 0,
        }
      },
    })
  end,
}
