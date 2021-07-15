local highlight = require('utils').highlight

vim.o.termguicolors = true;
vim.cmd('colorscheme sonokai')

-- Remove vertical split background color
highlight('VertSplit', { bg = 'None' })
