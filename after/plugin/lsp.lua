local lsp = require('lsp-zero').preset('recommended')
local cmp = require('cmp')
local lspconfig = require('lspconfig')

-- supress warning about using vim variable
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
    },
  },
}

lsp.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ['solargraph'] = {'ruby'},
 }
})

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
