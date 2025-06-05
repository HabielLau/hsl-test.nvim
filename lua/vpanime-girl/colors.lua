local util = require("vpanime-girl.util")
local hslutil = require("vpanime-girl.hsl")
local hsl = hslutil.hslToHex

local M = {}

---@class Palette
M.default = {
	none = "NONE",

	base04 = hsl(243, 66, 10),
	base03 = hsl(254, 65, 20),
	base02 = hsl(254, 66, 37),
	base01 = hsl(254, 31, 46),
	base00 = hsl(254, 21, 55),
	-- base0 = hsl( 186, 8, 55 ),
	base0 = hsl(254, 11, 65),
	-- base1 = hsl( 180, 7, 60 ),
	base1 = hsl(254, 10, 70),
	base2 = hsl(180, 66, 88),
	base3 = hsl(180, 66, 94),
	base4 = hsl(254, 66, 91),
	yellow = hsl(320, 58, 51),
	yellow100 = hsl(320, 58, 64),
	yellow300 = hsl(320, 58, 58),
	yellow500 = hsl(320, 58, 51),
	yellow700 = hsl(320, 88, 46),
	yellow900 = hsl(320, 88, 40),
	orange = hsl(297, 35, 51),
	orange100 = hsl(297, 34, 63),
	orange300 = hsl(297, 35, 57),
	orange500 = hsl(297, 35, 51),
	orange700 = hsl(297, 55, 45),
	orange900 = hsl(297, 55, 38),
	red = hsl(307, 69, 64),
	red100 = hsl(307, 69, 73),
	red300 = hsl(307, 70, 69),
	red500 = hsl(307, 69, 64),
	red700 = hsl(307, 70, 64),
	red900 = hsl(307, 69, 55),
	magenta = hsl(288, 53, 44),
	magenta100 = hsl(288, 23, 58),
	magenta300 = hsl(288, 23, 51),
	magenta500 = hsl(289, 53, 44),
	magenta700 = hsl(288, 53, 37),
	magenta900 = hsl(288, 53, 30),
	violet = hsl(259, 30, 39),
	violet100 = hsl(259, 19, 54),
	violet300 = hsl(259, 22, 46),
	violet500 = hsl(259, 30, 39),
	violet700 = hsl(259, 42, 31),
	violet900 = hsl(259, 62, 24),
	blue = hsl(269, 57, 50),
	blue100 = hsl(269, 57, 70),
	blue300 = hsl(269, 57, 65),
	blue500 = hsl(269, 57, 60),
	blue700 = hsl(269, 57, 55),
	blue900 = hsl(269, 57, 50),
	cyan = hsl(263, 41, 50),
	cyan100 = hsl(263, 41, 63),
	cyan300 = hsl(263, 41, 56),
	cyan500 = hsl(263, 41, 50),
	cyan700 = hsl(263, 41, 42),
	cyan900 = hsl(263, 67, 38),
	green = hsl(213, 26, 54),
	green100 = hsl(213, 25, 72),
	green300 = hsl(213, 25, 67),
	green500 = hsl(213, 26, 63),
	green700 = hsl(213, 25, 58),
	green900 = hsl(213, 25, 54),

	bg = hsl(254, 65, 20),
	bg_highlight = hsl(254, 31, 46),
	fg = hsl(180, 50, 50),
}

---@return ColorScheme
function M.setup(opts)
	opts = opts or {}
	local config = require("vpanime-girl.config")

	-- local style = config.is_day() and config.options.light_style or config.options.style
	local style = "default"
	local palette = M[style] or {}
	if type(palette) == "function" then
		palette = palette()
	end

	-- Color Palette
	---@class ColorScheme: Palette
	local colors = vim.tbl_deep_extend("force", vim.deepcopy(M.default), palette)

	util.bg = colors.bg
	util.day_brightness = config.options.day_brightness

	colors.black = util.darken(colors.bg, 0.8, "#000000")
	colors.border = colors.black

	-- Popups and statusline always get a dark background
	colors.bg_popup = colors.base04
	colors.bg_statusline = colors.base03

	-- Sidebar and Floats are configurable
	colors.bg_sidebar = config.options.styles.sidebars == "transparent" and colors.none
		or config.options.styles.sidebars == "dark" and colors.base04
		or colors.bg

	colors.bg_float = config.options.styles.floats == "transparent" and colors.none
		or config.options.styles.floats == "dark" and colors.base04
		or colors.bg

	-- colors.fg_float = config.options.styles.floats == "dark" and colors.base01 or colors.fg
	colors.fg_float = colors.fg

	colors.error = colors.red500
	colors.warning = colors.yellow500
	colors.info = colors.blue500
	colors.hint = colors.cyan500
	colors.todo = colors.violet500

	config.options.on_colors(colors)
	if opts.transform and config.is_day() then
		util.invert_colors(colors)
	end

	return colors
end

return M
