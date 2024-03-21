vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted text with J and K
vim.keymap.set('v', 'J', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '>+1<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Keep search terms in center of screen when going through them
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Paste over text without copying deleted text
vim.keymap.set('x', '<leader>p', "\"_dP")

-- Copy to clipboard with yank
vim.keymap.set('n', '<leader>y', '\"+y')
vim.keymap.set('v', '<leader>y', '\"+y')
vim.keymap.set('n', '<leader>Y', '\"+Y')

vim.keymap.set('n', '<leader>d', '\"_d')
vim.keymap.set('v', '<leader>d', '\"_d')

vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format() end)

-- Find and replace currently hovered word
vim.keymap.set('n', '<leader>s', ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
