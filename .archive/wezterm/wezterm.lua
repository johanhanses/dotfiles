local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font("UbuntuMono Nerd Font", { weight = "Bold" })
config.font_size = 14
config.line_height = 1.3

config.color_scheme = "Gruvbox Dark (Gogh)"
config.window_decorations = "RESIZE"
config.enable_tab_bar = false

config.window_padding = {
	left = 16,
	right = 16,
	top = 16,
	bottom = 16,
}

return config
