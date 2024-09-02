-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- my coolnight colorscheme
config.colors = {
    foreground = "#CBE0F0",
    background = "#011423",
    cursor_bg = "#47FF9C",
    cursor_border = "#47FF9C",
    cursor_fg = "#011423",
    selection_bg = "#033259",
    selection_fg = "#CBE0F0",
    ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
    brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}
-- config.color_scheme = 'Tokyo Night'

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 16

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.85
config.macos_window_background_blur = 30

config.default_cursor_style = 'BlinkingBar'
config.cursor_blink_rate = 750
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"


config.enable_tab_bar = false
-- wezterm.on('update-status', function(window)
-- 	-- Grab the utf8 character for the "powerline" left facing
-- 	-- solid arrow.
-- 	local SOLID_LEFT_ARROW = utf8.char(0xe0b2)

-- 	-- Grab the current window's configuration, and from it the
-- 	-- palette (this is the combination of your chosen colour scheme
-- 	-- including any overrides).
-- 	local color_scheme = window:effective_config().resolved_palette
-- 	local bg = color_scheme.background
-- 	local fg = color_scheme.foreground

-- 	window:set_right_status(wezterm.format({
-- 	  -- First, we draw the arrow...
-- 	  { Background = { Color = 'none' } },
-- 	  { Foreground = { Color = bg } },
-- 	  { Text = SOLID_LEFT_ARROW },
-- 	  -- Then we draw our text
-- 	  { Background = { Color = bg } },
-- 	  { Foreground = { Color = fg } },
-- 	  { Text = ' ' .. wezterm.hostname() .. ' ' },
-- 	}))
--   end)

-- and finally, return the configuration to wezterm
return config
