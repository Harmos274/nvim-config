return {
  name = 'hls',

  on_attach = function ()
    vim.cmd([[
      augroup autoFormat
        autocmd!
      augroup END
      ]])
  end,
}
