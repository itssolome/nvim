require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "ts_ls", "tailwindcss", "eslint", "cssls" },
  automatic_installation = true,
})

local on_attach = on_attach
local capabilities = capabilities

local servers = { "ts_ls", "tailwindcss", "eslint", "cssls" }

for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    on_attach = on_attach,
    capabilities = capabilities,
  })

  vim.lsp.enable(lsp)
end
