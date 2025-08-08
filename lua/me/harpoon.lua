
-- harpoon
local harpoon_mark = require("harpoon.mark")
local harpoon_ui = require("harpoon.ui")
local harpoon_term = require("harpoon.term")

-- add file
vim.keymap.set('n', '<leader>a', function()
		harpoon_mark.add_file()
end)

-- toggle menu
vim.keymap.set('n', '<leader>l', function ()
    harpoon_ui.toggle_quick_menu()
end)

-- navigate
vim.keymap.set('n', '<C-n>', function ()
    harpoon_ui.nav_next()
end)
vim.keymap.set('n', '<C-p>', function ()
    harpoon_ui.nav_prev()
end)

-- go to term
vim.keymap.set('n', '<leader>t', function ()
    harpoon_term.gotoTerminal(1)
end)

require("telescope").load_extension('harpoon')
