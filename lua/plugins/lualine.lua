return function ()
  local theme = 'material-nvim'

  local diagnostics = {
    'diagnostics',
    sources = { 'nvim_lsp' },
    color_error = '#F44747',
    color_warn = '#E0AF68',
    color_info = '#10B981',
    symbols = { error = ' ', warn = ' ', info = ' ' },
  }

  local spacer = {
    function () return '%=' end,
    separator = ''
  }

  local filename = {
    'filename',
    file_status = true,
    path = 1,
  }

  local filetype = {
    'filetype',
    colored = false,
  }

  require('lualine').setup {
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', diagnostics },
      lualine_c = { spacer, filename },
      lualine_x = { 'encoding', 'fileformat' },
      lualine_y = { filetype },
      lualine_z = { 'location' }
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { spacer, filename },
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },

    options = {
      theme = theme,
    },
  }
end
