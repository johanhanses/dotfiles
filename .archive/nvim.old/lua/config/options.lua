-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = false -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- code folding
opt.foldmethod = "expr" -- fold based on indent level
opt.foldexpr = "nvim_treesitter#foldexpr()" -- use treesitter for folding
opt.foldlevel = 99 -- open all folds by default
opt.foldtext = ""
-- opt.foldexpr = "" -- don't use custom fold expression

opt.scrolloff = 8
