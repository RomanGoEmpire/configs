local wezterm = require("wezterm")
local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	default_cursor_style = "BlinkingBar",
	color_scheme = "Ayu Mirage",
	font = wezterm.font("JetBrains Mono Bold"),
	font_size = 16,

	window_padding = {
		left = 3,
		right = 3,
		top = 0,
		bottom = 0,
	},
}

return config
