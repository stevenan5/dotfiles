-- Tab / Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true
vim.opt.expandtab = true

-- Search
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Appearance
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.cmdheight = 1
vim.opt.scrolloff = 5
vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.list = true
vim.opt.listchars = { trail = "·" }

-- Behavior
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")
vim.opt.undofile = true
vim.opt.backspace = "indent,eol,start"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.mouse:append("a")
vim.opt.clipboard:append("unnamedplus")
vim.opt.modifiable = true
vim.opt.guicursor = ""
