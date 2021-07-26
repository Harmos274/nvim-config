return function ()
  local map = require('utils').map

  map('n', '<C-K><C-B>', ':NvimTreeToggle<CR>')

  vim.g.nvim_tree_auto_open = 1
  vim.g.nvim_tree_lsp_diagnostics = 1
  vim.g.nvim_tree_icon_padding = ' '
end
