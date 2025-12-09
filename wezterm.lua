-- Pull in the wezterm API
local wezterm = require("wezterm")
local launch_menu = require("modules/launch_menu")
local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
local config = wezterm.config_builder()

-- MAKE 100% SURE TO MAKE shell_integration.osc133 TO FALSE IN $nu.config-path

config = {
	-- Shell configuration
	default_prog = { "zsh" },

	-- Font configuration
	font = wezterm.font_with_fallback({
		--{
		--	family = "JetBrainsMono NFM Medium",
		--	weight = "Bold",
		--},
		--	{ family = "Terminus", weight = "Bold" },
		{ family = "JetBrains Mono", weight = "Bold" },
		"Symbols Nerd Font",
		"Noto Color Emoji",
	}),
	font_size = 12.0,

	-- Window configuration
	initial_rows = 42,
	initial_cols = 140,
	-- window_padding = {
	--  left = 6,
	--  right = 6,
	--  top = 6,
	--  bottom = 6,
	--},
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	window_background_opacity = 0.95,
	use_resize_increments = true,

	-- UI Elements
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
	enable_scroll_bar = true,

	-- Visual and sound settings
	color_scheme = "Tokyo Night",
	colors = {
		visual_bell = "#202020",
	},
	visual_bell = {
		fade_out_function = "EaseOut",
		fade_out_duration_ms = 150,
	},
	audible_bell = "Disabled",

	-- Input settings
	enable_kitty_keyboard = true,

	launch_menu = launch_menu,

	use_dead_keys = false,
	use_ime = false,
}
bar.apply_to_config(config)

return config
