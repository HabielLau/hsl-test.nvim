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
  -- base0 = hsl( 186, 8, 55 ),
  base0 = hsl(243, 23, 73),
  -- base1 = hsl( 180, 7, 60 ),
  base1 = hsl(237, 22, 78),
  base2 = hsl(277, 65, 88),
  base3 = hsl(275, 99, 94),
  base4 = hsl(0, 0, 100),
  purple = hsl(255, 66, 25),
  purple100 = hsl(257, 66, 75),
  purple300 = hsl(257, 66, 55),
  purple500 = hsl(255, 66, 45),
  purple700 = hsl(255, 66, 25),
  purple900 = hsl(256, 66, 15),
  ltpurple = hsl(261, 71, 35),
  ltpurple100 = hsl(260, 71, 75),
  ltpurple300 = hsl(260, 71, 55),
  ltpurple500 = hsl(261, 71, 45),
  ltpurple700 = hsl(261, 71, 25),
  ltpurple900 = hsl(261, 71, 15),
  dkpink = hsl(306, 86, 25),
  dkpink100 = hsl(302, 86, 45),
  dkpink300 = hsl(302, 86, 35),
  dkpink500 = hsl(306, 86, 25),
  dkpink700 = hsl(306, 86, 15),
  dkpink900 = hsl(306, 86, 5),
  dkmagenta = hsl(284, 63, 25),
  dkmagenta100 = hsl(282, 63, 55),
  dkmagenta300 = hsl(282, 63, 45),
  dkmagenta500 = hsl(284, 63, 35),
  dkmagenta700 = hsl(284, 63, 25),
  dkmagenta900 = hsl(284, 63, 15),
  ltpink = hsl(309, 78, 75),
  ltpink100 = hsl(311, 78, 85),
  ltpink300 = hsl(311, 69, 75),
  ltpink500 = hsl(309, 43, 65),
  ltpink700 = hsl(309, 43, 45),
  ltpink900 = hsl(309, 42, 35),
  pink = hsl(308, 84, 35),
  pink100 = hsl(310, 84, 55),
  pink300 = hsl(310, 84, 45),
  pink500 = hsl(308, 84, 35),
  pink700 = hsl(308, 84, 25),
  pink900 = hsl(308, 84, 15),
  cyan = hsl(185, 55, 55),
  cyan100 = hsl(187, 55, 65),
  cyan300 = hsl(187, 55, 45),
  cyan500 = hsl(185, 55, 35),
  cyan700 = hsl(185, 59, 25),
  cyan900 = hsl(185, 55, 15),
  green = hsl(130, 89, 45),
  green100 = hsl(152, 89, 55),
  green300 = hsl(125, 89, 45),
  green500 = hsl(111, 89, 35),
  green700 = hsl(111, 89, 25),
  green900 = hsl(130, 89, 15),

  bg = hsl(249, 54, 12),
  bg_highlight = hsl(251, 29, 57),
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

  colors.error = colors.pink500
  colors.warning = colors.ltpink100
  colors.info = colors.green500
  colors.hint = colors.cyan300
  colors.todo = colors.purple300

  config.options.on_colors(colors)
  if opts.transform and config.is_day() then
    util.invert_colors(colors)
  end

  return colors
end

return M
