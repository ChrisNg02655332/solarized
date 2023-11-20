---@class PaletteColors
local palette = {
	base03 = "#002b36",
	base02 = "#073642",
	base01 = "#586e75",
	base00 = "#657b83",
	base0 = "#839496",
	base1 = "#93a1a1",
	base2 = "#eee8d5",
	base3 = "#fdf6e3",

	blue = "#268bd2",
	cyan = "#2aa198",
	magenta = "#d33682",
	orange = "#cb4b16",
	green = "#859900",
	red = "#dc322f",
	violet = "#6c71c4",
	yellow = "#b58900",
}

local M = {}

function M.setup(opts)
	local theme = opts.theme or "dark"
	local theme_colors = require("solarized.themes")[theme](palette)
	return {
		theme = theme_colors,
		palette = palette,
	}
end

return M
