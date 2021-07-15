local opt = vim.opt

opt.foldlevelstart = 99

-- Make filenames autocompletion case-insensitive
opt.wildignorecase = true

-- Make search case insensitive if all lowercase
opt.ignorecase = true
opt.smartcase = true

-- Set line numbers
opt.number = true

-- Set cursor scroll distance
opt.scrolloff = 99

-- Shorten key sequence timeout
opt.timeoutlen = 200

-- Use the clipboard as default register
opt.clipboard = 'unnamedplus'

-- Set indent length
opt.tabstop = 4
opt.shiftwidth = 0
opt.expandtab = true

-- Disable duplicate mode display
opt.showmode = false
