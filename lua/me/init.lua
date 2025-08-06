require("me.remap")
require("me.lazy")
require("me.lsp")
require("me.treesitter")
require("me.debug")
require("me.completion")
require("me.harpoon")

vim.opt.hlsearch = true
vim.opt.number = true
vim.opt.rnu = true
vim.opt.wrap = false

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.completeopt = { "menuone", "noselect", "popup" }

vim.cmd('abbreviate h vert h')


if vim.g.vscode then
    local vscode = require('vscode')
    -- vim.keymap.set({'n', 'v'}, '<Leader>c', function()
    -- 	vscode.action("editor.action.commentLine")
    -- end)
    vim.keymap.set('n', 'ù', '^')
else

end

