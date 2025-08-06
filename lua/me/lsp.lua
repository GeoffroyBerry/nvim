vim.lsp.enable("pyright")
vim.lsp.enable("ols")
vim.lsp.enable("lua_ls")

local lspcfg = require("lspconfig")
-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
lspcfg['pyright'].setup {
    capabilities = capabilities
}
lspcfg['ols'].setup {
    capabilities = capabilities
}
lspcfg['lua_ls'].setup {
    capabilities = capabilities
}
-- lspcfg["gopls"].setup({
-- 	on_attach = function(client, bufnr)
--       vim.lsp.completion.enable(true, client.id, bufnr, {
-- 		autotrigger = true,
-- 		convert = function(item)
--           return { abbr = item.label:gsub("%b()", "") }
-- 		end,
--       })
--       vim.keymap.set("i", "<C-space>", vim.lsp.completion.get, { desc = "trigger autocompletion" })
--     end
-- })
-- lspcfg["lua_ls"].setup({
-- 	on_attach = function(client, bufnr)
--       vim.lsp.completion.enable(true, client.id, bufnr, {
-- 		autotrigger = true,
-- 		convert = function(item)
--           return { abbr = item.label:gsub("%b()", "") }
-- 		end,
--       })
--       vim.keymap.set("i", "<C-space>", vim.lsp.completion.get, { desc = "trigger autocompletion" })
--     end
-- })

