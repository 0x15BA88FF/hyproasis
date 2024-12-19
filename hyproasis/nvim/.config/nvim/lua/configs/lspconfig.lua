require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_init = nvlsp.on_init,
        on_attach = nvlsp.on_attach,
        capabilities = nvlsp.capabilities,
    }
end

lspconfig.ts_ls.setup {
    on_init = nvlsp.on_init,
    on_attach = nvlsp.on_attach,
    capabilities = nvlsp.capabilities,
}
