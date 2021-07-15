local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', '--depth', '1', install_path})
  execute 'packadd packer.nvim'
end

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- packer self management

    use 'folke/tokyonight.nvim'

    use 'LnL7/vim-nix'

    use {
      'neovim/nvim-lspconfig',
      config = require('plugins.lspconfig'),
      requires = {
        {
          'RishabhRD/nvim-lsputils',
          requires = 'RishabhRD/popfix',
        },
        'ray-x/lsp_signature.nvim',
      },
    }

    -- Treesitter
    use {
      {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = require('plugins.treesitter'),
      },
      'nvim-treesitter/playground'
    }
end
)
