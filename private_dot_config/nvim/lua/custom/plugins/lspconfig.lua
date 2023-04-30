local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "clangd",
  "html",
  "cssls",
  "bashls",
  "emmet_ls",
  "tsserver",
  "gopls",
  "phpactor",
  -- "jedi_language_server",
  "pyright",
  "cmake",
  "jsonls"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end


