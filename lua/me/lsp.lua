vim.lsp.enable("pyright")
vim.lsp.enable("ols")
vim.lsp.enable("lua_ls")
vim.lsp.enable("clangd")
-- vim.lsp.enable("c")

-- Specify how the border looks like
local border = {
    { '┌', 'FloatBorder' },
    { '─', 'FloatBorder' },
    { '┐', 'FloatBorder' },
    { '│', 'FloatBorder' },
    { '┘', 'FloatBorder' },
    { '─', 'FloatBorder' },
    { '└', 'FloatBorder' },
    { '│', 'FloatBorder' },
}
-- Add the border on hover and on signature help
local handlers = {
    ['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
    ['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
}

local lspcfg = require("lspconfig")

lspcfg.clangd.setup {
    handlers = handlers,
}

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
