vim.g.mapleader = ","
vim.g.maplocalleader = ";"

vim.keymap.set('n', '<F1>', ':set hlsearch!<CR>')
vim.keymap.set('n', '<Leader>pv', vim.cmd.Ex)

-- reload vim config
vim.keymap.set('n', '<Leader>vs', ':source $MYVIMRC<CR>')
-- edit vim config
vim.keymap.set('n', '<Leader>ve', ':e $HOME/.config/nvim/lua/me/<CR>')
vim.keymap.set('n', '<Leader>vp', ':e $HOME/.config/nvim/lua/plugins/all.lua<CR>')
-- auto escape in insert mode (rarely type words that have jj in them)
vim.keymap.set('i', 'jj', '<esc>')
vim.keymap.set('i', 'kk', '<esc>')
vim.keymap.set('i', 'hh', '<esc>')

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- navigating splits
vim.keymap.set({'n', 't'}, '<C-h>', '<C-w>h')
vim.keymap.set({'n', 't'}, '<C-j>', '<C-w>j')
vim.keymap.set({'n', 't'}, '<C-k>', '<C-w>k')
vim.keymap.set({'n', 't'}, '<C-l>', '<C-w>l')

vim.keymap.set('n', '<leader>f', ':lua vim.lsp.buf.format()<CR>')

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- change gd to use lsp
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
