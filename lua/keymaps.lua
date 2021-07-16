local utils = require('utils')

-- Set leader key
vim.g.mapleader = ','

-- jk to return to normal mode
utils.map('i', 'Jk', '<C-c>')
utils.map('i', 'jK', '<C-c>')
utils.map('i', 'jk', '<C-c>')

-- Toggle numbers
utils.map('n', '<leader><CR>', ':set number!<CR>')

-- Wrapped lines goes down/up to next row, rather than next line in file.
utils.map('n', 'j', 'gj')
utils.map('n', 'J', 'gj')
utils.map('n', 'k', 'gk')
utils.map('n', 'K', 'gk')

-- Do not exit visual mode when shifting
utils.map('v', '<', '<gv')
utils.map('v', '>', '>gv')

-- Place semicolon at the end of a line
utils.map('n', '<leader>;', 'A;<ESC>')
utils.map('i', '<leader>;', '<ESC>A;')

-- Remove Ex mode
utils.map('n', 'Q', '<Nop>')
