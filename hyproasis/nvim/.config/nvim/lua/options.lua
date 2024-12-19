require "nvchad.options"

local g = vim.g
local opt = vim.opt

opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.mouse = "a"
opt.clipboard = "unnamedplus"

opt.number = true
opt.cursorline = true
opt.relativenumber = true
opt.cursorlineopt = "both"

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.breakindent = true

opt.wrap = false
opt.colorcolumn = "80"

opt.backup = false
opt.undofile = true
opt.swapfile = false
opt.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir"

opt.scrolloff = 10
opt.signcolumn = "yes"
opt.termguicolors = true
opt.isfname:append("@-@")

opt.updatetime = 250
opt.timeoutlen = 300

opt.completeopt = "menuone,noselect"

opt.conceallevel = 2
g.dap_virtual_text = true
