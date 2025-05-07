local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local types = require("luasnip.util.types")

local M = {}

function M.setup()
  require("luasnip.loaders.from_vscode").lazy_load()
  require("luasnip.loaders.from_vscode").lazy_load({ paths = "./snippets" })

  ls.config.set_config({
    -- This tells LuaSnip to remember to keep around the last snippet.
    -- You can jump back into even if you move outside of the selection
    history = true,

    -- This one is cool cause if you have dynamic snippets, it updatesas you type!
    updateevents = "TextChanged,TextChangedI",

    -- Autosnippets:
    enable_autosnippets = true,

    ext_opts = {
      [types.choiceNode] = {
        active = {
          virt_text = { { "<- Choice", "Error" } },
        },
      },
    },
  })

  -- <c-k> is my expansion key
  -- this will expand the current item or jump to the next item within the snippet.
  vim.keymap.set({ "i", "s" }, "<c-k>", function()
    if ls.expand_or_jumpable() then
      ls.expand_or_jump()
    end
  end, { silent = true })

  -- <c-j> is my jump backwards key.
  -- this always moves to the previous item within the snippet
  vim.keymap.set({ "i", "s" }, "<c-j>", function()
    if ls.jumpable(-1) then
      ls.jump(-1)
    end
  end, { silent = true })

  -- <c-l> is selecting within a list of options.
  -- This is useful for choice nodes (introduced in the forthcoming episode 2)
  vim.keymap.set("i", "<c-l>", function()
    if ls.choice_active() then
      ls.change_choice(1)
    end
  end)

  -- Custom snippets
  ls.add_snippets("markdown", {
    s("deployer meli", {
      t({ "> Deployer: [@moviedo_meli](https://github.com/moviedo_meli)" }),
    }),
    s("release", {
      t({ "## **[" }),
      i(1),
      t({ "] - " }),
      i(2),
    }),
    s("changes", {
      t("- **"),
      i(1),
      t({ "** [" }),
      i(2),
      t({ "](" }),
      i(3),
      t({ ") | Authors: [@moviedo_meli](https://github.com/moviedo_meli)" }),
    }),
  })
end

return M
