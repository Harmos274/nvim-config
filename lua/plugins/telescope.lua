return function ()
  local map = require("utils").map
  local telescope = require('telescope')
  local actions = require('telescope.actions')

  telescope.setup {
    defaults = {
      mappings = {
        n = {
          ['q'] = actions.close,
        }
      }
    }
  }

  map('n', '<C-p>', ':Telescope find_files<CR>')
  map('n', '<C-g>', ':Telescope live_grep<CR>')
  map('n', '<C-s>', ':Telescope lsp_references<CR>')
end
