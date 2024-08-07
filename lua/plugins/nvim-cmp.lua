local cmp = require("cmp")
cmp.setup({
  mapping = cmp.mapping.preset.insert({

    ["<Tab>"] = cmp.mapping.select_next_item({ behavior = require("cmp.types").cmp.SelectBehavior.Insert }),
    ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = require("cmp.types").cmp.SelectBehavior.Insert }),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "vsnip" }, -- For vsnip users.
  }),
})
return {}
