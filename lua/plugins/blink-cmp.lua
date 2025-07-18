return {
  "saghen/blink.cmp",
  version = "1.*",
  dependencies = {
    "Kaiser-Yang/blink-cmp-avante",
    { "L3MON4D3/LuaSnip", version = "v2.*" },
  },
  opts = {
    snippets = { preset = "luasnip" },
    -- ensure you have the `snippets` source (enabled by default)
    sources = {
      default = { "avante", "lsp", "path", "snippets", "buffer" },
      providers = {
        avante = {
          module = "blink-cmp-avante",
          name = "Avante",
          opts = {
            -- options for blink-cmp-avante
          },
        },
      },
    },
    keymap = {
      preset = "default",
      ["<CR>"] = { "select_and_accept", "fallback" },

      ["<Tab>"] = { "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },

      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },

      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide", "fallback" },
    },
  },
}
