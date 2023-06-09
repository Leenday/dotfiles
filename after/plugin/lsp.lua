local lsp = require('lsp-zero').preset('recommended')
local cmp = require("cmp")

lsp.ensure_installed({
    'ruby_ls',
    'solargraph',
    'standardrb',
    'sorbet',
    'eslint',
    'lua_ls',
})

lsp.configure('standardrb', {
  enabled = false,
})

cmp.setup({
  mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-o>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
})

lsp.setup()
