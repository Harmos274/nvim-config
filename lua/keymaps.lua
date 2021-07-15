local utils = require('utils')

-- Set leader key
vim.g.mapleader = ','

-- hn to return to normal mode
utils.map('i', 'Jk', '<C-c>')
utils.map('i', 'jK', '<C-c>')
utils.map('i', 'jk', '<C-c>')
