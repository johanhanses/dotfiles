-- return {
--   "projekt0n/github-nvim-theme",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     require("github-theme").setup({
--       -- ...
--     })
--
--     vim.cmd("colorscheme github_dark_colorblind")
--   end,
-- }

-- return {
--   "folke/tokyonight.nvim",
--   lazy = true,
--   opts = { style = "storm" },
-- }

-- return {
--   "luisiacc/gruvbox-baby",
--   priority = 1000,
--   enabled = true,
--   config = function()
--     -- vim.g.gruvbox_flat_style = "dark"
--     vim.cmd([[colorscheme gruvbox-baby]])
--   end,
-- }

-- return {
--   "olimorris/onedarkpro.nvim",
--   priority = 1000, -- Ensure it loads first
--   enabled = true,
--   config = function()
--     vim.cmd([[colorscheme onedark]])
--   end,
-- }

-- return {
--   "rose-pine/neovim",
--   priority = 1000, -- Ensure it loads first
--   enabled = true,
--   config = function()
--     vim.cmd([[colorscheme rose-pine-moon]])
--   end,
-- }

return {
  "f-person/auto-dark-mode.nvim",
  opts = {
    update_interval = 1000,
    set_dark_mode = function()
      vim.api.nvim_set_option("background", "dark")
      vim.cmd("colorscheme GitHub Dark Colorblind")
    end,
    set_light_mode = function()
      vim.api.nvim_set_option("background", "light")
      vim.cmd("colorscheme GitHub Light Colorblind")
    end,
  },
}

-- return {
--   "catppuccin/nvim",
--   priority = 1000, -- Ensure it loads first
--   enabled = true,
--   config = function()
--     vim.cmd([[colorscheme catppuccin-mocha]])
--   end,
-- }
