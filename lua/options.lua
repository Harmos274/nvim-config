local set = vim.opt

set.foldlevelstart = 99

-- Make filenames autocompletion case-insensitive
set.wildignorecase = true

-- Make search case insensitive if all lowercase
set.ignorecase = true
set.smartcase = true

-- When replacing, replace globally without using '/g'
set.gdefault = true

-- Set line numbers
set.number = true

-- Set cursor scroll distance
set.scrolloff = 99

-- Shorten key sequence timeout
set.timeoutlen = 200

-- Use the clipboard as default register
set.clipboard = 'unnamedplus'

-- Set indent length
set.tabstop = 2
set.shiftwidth = 0
set.expandtab = true

-- Disable duplicate mode display
set.showmode = false

-- Save undo's after file closes
set.undofile = true

-- How many undos
set.undolevels = 1000

-- Number of lines to save for undo
set.undoreload = 10000