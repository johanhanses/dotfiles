-- return {
--   -- add gruvbox
--   { "wittyjudge/gruvbox-material.nvim" },
--
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "gruvbox-material",
--     },
--   },
-- }

-- return {
--   "eddyekofo94/gruvbox-flat.nvim",
--   priority = 1000,
--   enabled = true,
--   config = function()
--     vim.g.gruvbox_flat_style = "dark"
--     vim.cmd([[colorscheme gruvbox-flat]])
--   end,
-- }

return {
  "luisiacc/gruvbox-baby",
  priority = 1000,
  enabled = true,
  config = function()
    -- vim.g.gruvbox_flat_style = "dark"
    vim.cmd([[colorscheme gruvbox-baby]])
  end,
}
