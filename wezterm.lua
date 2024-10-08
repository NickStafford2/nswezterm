-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
config.font_size = 11

-- local ok
-- config.color_scheme = "nordfox"
-- ok, config.colors =
-- 	pcall(wezterm.color.load_scheme, wezterm.home_dir .. "/.config/wezterm/colors/solarized-osaka_storm.toml")
-- if not ok then
-- 	config.colors = wezterm.get_builtin_color_schemes()[config.colorscheme]
-- end
--
config.color_scheme = "Builtin Solarized Dark"
-- config.color_scheme = "solarized-osaka_day.toml"
config.enable_tab_bar = false

config.window_decorations = "RESIZE"

local dimmer = { brightness = 0.03 }
config.background = {
	{
		source = {
			-- File = "/home/nick/Pictures/carina-nebula-cosmic-cliffs-james-webb-space-telescope-3840x2160-8689.jpg",
			-- File = "/home/nick/Pictures/simple-subtle-abstract-dark-minimalism-4k-u9.jpg",
			File = "/home/nick/.config/wezterm/background.jpg",
			-- File = "/home/nick/Pictures/all-black-background-3qmchue5uy6t6fis.jpg",
			-- File = "/home/nick/Pictures/Subtle Wallpaper Top Background.jpg",
		},
		-- height = "Contain",
		attachment = "Scroll",
		repeat_y = "Mirror",
		-- The texture tiles vertically but not horizontally.
		-- When we repeat it, mirror it so that it appears "more seamless".
		-- An alternative to this is to set `width = "100%"` and have
		-- it stretch across the display
		-- repeat_x = "Mirror",
		hsb = dimmer,
		-- When the viewport scrolls, move this layer 10% of the number of
		-- pixels moved by the main viewport. This makes it appear to be
		-- further behind the text.
		-- attachment = { Parallax = 0.1 },
	},
}
-- config.window_background_image =
-- "/home/nick/Pictures/carina-nebula-cosmic-cliffs-james-webb-space-telescope-3840x2160-8689.jpg"
-- config.window_background_opacity = 0.9
-- config.macos_window_background_blur = 10
-- and finally, return the configuration to wezterm
return config
