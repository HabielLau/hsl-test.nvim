local util = require("vpanime-girl.util")
local hslutil = require("vpanime-girl.hsl")
local hsl = hslutil.hslToHex

local M = {}

---@class Palette
M.default = {
  none = "NONE",

  base04 = hsl(249, 54, 12),
  base03 = hsl(249, 54, 18),
  base02 = hsl(249, 35, 21),
  base01 = hsl(251, 29, 57),
  base00 = hsl(253, 28, 53),
  base0 = hsl(243, 23, 73),
  base1 = hsl(237, 22, 78),
  base2 = hsl(277, 65, 88),
  base3 = hsl(275, 99, 94),
  base4 = hsl(0, 0, 100),
  purple = hsl(255, 66, 12),
  purple100 = hsl(257, 66, 57),
  purple300 = hsl(255, 66, 23),
  purple500 = hsl(255, 66, 20),
  purple700 = hsl(255, 66, 12),
  purple900 = hsl(256, 66, 10),
  ltpurple = hsl(261, 71, 38),
  ltpurple100 = hsl(260, 91, 72),
  ltpurple300 = hsl(260, 85, 59),
  ltpurple500 = hsl(261, 79, 52),
  ltpurple700 = hsl(261, 80, 43),
  ltpurple900 = hsl(261, 80, 28),
  dkpink = hsl(306, 86, 61),
  dkpink100 = hsl(306, 100, 88),
  dkpink300 = hsl(306, 90, 62),
  dkpink500 = hsl(306, 71, 50),
  dkpink700 = hsl(306, 71, 40),
  dkpink900 = hsl(306, 71, 18),
  dkmagenta = hsl(284, 63, 26),
  dkmagenta100 = hsl(284, 100, 47),
  dkmagenta300 = hsl(284, 86, 35),
  dkmagenta500 = hsl(284, 64, 25),
  dkmagenta700 = hsl(284, 64, 15),
  dkmagenta900 = hsl(284, 64, 7),
  ltpink = hsl(309, 78, 79),
  ltpink100 = hsl(309, 100, 90),
  ltpink300 = hsl(309, 69, 77),
  ltpink500 = hsl(309, 43, 60),
  ltpink700 = hsl(309, 43, 50),
  ltpink900 = hsl(309, 42, 30),
  pink = hsl(308, 84, 36),
  pink100 = hsl(308, 100, 83),
  pink300 = hsl(308, 90, 62),
  pink500 = hsl(308, 69, 49),
  pink700 = hsl(308, 70, 35),
  pink900 = hsl(308, 69, 20),
  cyan = hsl(185, 55, 67),
  cyan100 = hsl(185, 100, 86),
  cyan300 = hsl(185, 85, 55),
  cyan500 = hsl(185, 59, 40),
  cyan700 = hsl(185, 59, 25),
  cyan900 = hsl(185, 58, 15),
  green = hsl(130, 89, 48),
  green100 = hsl(152, 89, 86),
  green300 = hsl(125, 89, 61),
  green500 = hsl(111, 89, 38),
  green700 = hsl(111, 89, 19),
  green900 = hsl(130, 89, 10),

  bg = hsl(249, 54, 12),
  bg_highlight = hsl(249, 54, 18),
  fg = hsl(243, 23, 83),
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

  colors.error = colors.dkpink500
  colors.warning = colors.dkmagenta500
  colors.info = colors.cyan500
  colors.hint = colors.ltpurple500
  colors.todo = colors.pink500

  config.options.on_colors(colors)
  if opts.transform and config.is_day() then
    util.invert_colors(colors)
  end

  return colors
end
