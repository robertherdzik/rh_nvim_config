-- ~/.config/nvim/lua/custom/lsp_config.lua

-- Mason and Mason-Lspconfig setup
require('mason').setup()
require('mason-lspconfig').setup {
  ensure_installed = { 'gopls', 'html' },
}

-- Add additional LSP configurations
local lspconfig = require 'lspconfig'

lspconfig.gopls.setup {
  -- You can add specific `gopls` settings here if necessary
}

lspconfig.html.setup {
  -- You can add specific `html` settings here if necessary
}

return {}
