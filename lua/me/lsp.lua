vim.lsp.enable("pyright")
vim.lsp.enable("ols")
vim.lsp.enable("lua_ls")

local lspcfg = require("lspconfig")


lspcfg.ols.setup {
	--    	init_options = {
	-- 	checker_args = "-strict-style",
	-- 	collections = {
	-- 		{ name = "core", path = vim.fn.expand('/usr/local/Cellar/odin/2025-07/libexec/core') }
	-- 	},
	-- },
}
-- Set up lspconfig.
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- lspcfg['pyright'].setup {
--     capabilities = capabilities
-- }
-- lspcfg['ols'].setup {
--     capabilities = capabilities
-- }
-- lspcfg['lua_ls'].setup {
--     capabilities = capabilities
-- }
--
-- vim.lsp.config('ols', {
--   -- Server-specific settings. See `:help lsp-quickstart`
--   settings = {
--   },
-- })
