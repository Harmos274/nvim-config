local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', '--depth', '1', install_path})
  execute 'packadd packer.nvim'
end

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- packer self management

  use 'sainnhe/sonokai'

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

  -- Autocompletion
  use { 'hrsh7th/nvim-compe', config = require('plugins.compe') }

  -- Treesitter
  use {
    {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = require('plugins.treesitter'),
    },
    'nvim-treesitter/playground'
  }

  -- Finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
    },
    config = require('plugins.telescope')
  }

  -- Icons
  use 'kyazdani42/nvim-web-devicons'
end
)
