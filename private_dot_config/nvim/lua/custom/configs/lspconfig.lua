local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  "clangd",
  "html",
  "cssls",
  "bashls",
  "emmet_ls",
  "tsserver",
  "gopls",
  "golangci_lint_ls",
  "phpactor",
  -- "jedi_language_server",
  "pyright",
  "cmake",
  "jsonls",
  "terraformls"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig["yamlls"].setup{
    settings = {
    yaml = {
      --... -- other settings. note this overrides the lspconfig defaults.
      schemas = {
        ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/master-standalone-strict/all.json"] = "/*.k8s.yaml",
        --... -- other schemas
      },
    },
  }
}
lspconfig["golangci_lint_ls"].setup{
  cmd = {"/usr/bin/golangci-lint"}
}

-- 
-- lspconfig.pyright.setup { blabla}
