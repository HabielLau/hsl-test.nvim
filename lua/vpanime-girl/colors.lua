local util = require("vpanime-girl.util")
local hslutil = require("vpanime-girl.hsl")
local hsl = hslutil.hslToHex

local M = {}

---@class Palette
M.default = {
  none = "NONE",

  base04 = hsl(256, 62, 14),
  base03 = hsl(256, 62, 19),
  base02 = hsl(256, 53, 22),
  base01 = hsl(258, 14, 43),
  base00 = hsl(260, 13, 48),
  base0 = hsl(250, 08, 58),
  base1 = hsl(250, 07, 73),
  base2 = hsl(086, 42, 88),
  base3 = hsl(084, 87, 94),
  base4 = hsl(00, 00, 100),
  yellow = hsl(313, 100, 35),
  yellow100 = hsl(313, 100, 80),
  yellow300 = hsl(315, 100, 50),
  yellow500 = hsl(313, 100, 35),
  yellow700 = hsl(313, 100, 20),
  yellow900 = hsl(314, 100, 10),
  orange = hsl(286, 80, 44),
  orange100 = hsl(285, 100, 70),
  orange300 = hsl(285, 94, 51),
  orange500 = hsl(286, 80, 44),
  orange700 = hsl(286, 81, 35),
  orange900 = hsl(286, 80, 20),
  red = hsl(269, 71, 52),
  red100 = hsl(269, 100, 70),
  red300 = hsl(269, 90, 64),
  red500 = hsl(269, 90, 52),
  red700 = hsl(269, 90, 42),
  red900 = hsl(269, 90, 20),
  magenta = hsl(302, 75, 52),
  magenta100 = hsl(302, 100, 73),
  magenta300 = hsl(302, 86, 64),
  magenta500 = hsl(302, 64, 52),
  magenta700 = hsl(302, 64, 42),
  magenta900 = hsl(302, 65, 20),
  violet = hsl(245, 43, 60),
  violet100 = hsl(244, 100, 90),
  violet300 = hsl(245, 69, 77),
  violet500 = hsl(245, 43, 60),
  violet700 = hsl(245, 43, 50),
  violet900 = hsl(245, 42, 25),
  blue = hsl(203, 47, 50),
  blue100 = hsl(203, 100, 83),
  blue300 = hsl(203, 90, 62),
  blue500 = hsl(203, 47, 50),
  blue700 = hsl(203, 46, 35),
  blue900 = hsl(203, 47, 20),
  cyan = hsl(183, 59, 40),
  cyan100 = hsl(184, 85, 86),
  cyan300 = hsl(183, 85, 55),
  cyan500 = hsl(183, 59, 40),
  cyan700 = hsl(190, 59, 25),
  cyan900 = hsl(191, 59, 15),
  green = hsl(086, 100, 30),
  green100 = hsl(102, 100, 84),
  green300 = hsl(094, 100, 49),
  green500 = hsl(086, 100, 30),
  green700 = hsl(086, 100, 20),
  green900 = hsl(086, 100, 10),

  bg = hsl(256, 62, 14),
  bg_highlight = hsl(256, 62, 19),
  fg = hsl(250, 08, 58),
}

---@return ColorScheme
function M.setup(opts)
  opts = opts or {}
  local config = require("vpanime-girl.config")

  -- local style = config.is_day() and config.options.light_style
  -- or config.options.style
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

  -- colors.fg_float = config.options.styles.floats == "dark"
  -- and colors.base01 or colors.fg
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
