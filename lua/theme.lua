local highlight = require('utils').highlight

vim.o.termguicolors = true;
vim.cmd('colorscheme tokyonight')

-- Remove vertical split background color
highlight('VertSplit', { bg = 'None' })
