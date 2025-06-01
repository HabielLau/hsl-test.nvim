local colors = require("vpanime_girl.colors").setup({ transform = true })
local config = require("vpanime_girl.config").options

local hsl_test = {}

hsl_test.normal = {
  a = { bg = colors.pink, fg = colors.black },
  b = { bg = colors.base0, fg = colors.base04 },
  c = { bg = colors.bg_statusline, fg = colors.fg },
}

hsl_test.insert = {
  a = { bg = colors.green, fg = colors.black },
}

hsl_test.command = {
  a = { bg = colors.purple, fg = colors.black },
}

hsl_test.visual = {
  a = { bg = colors.dkmagenta, fg = colors.black },
}

hsl_test.replace = {
  a = { bg = colors.dkpink, fg = colors.black },
}

hsl_test.terminal = {
  a = { bg = colors.green, fg = colors.black },
}

hsl_test.inactive = {
  a = {
    bg = config.hide_inactive_statusline and colors.none or colors.bg_statusline,
    fg = config.hide_inactive_statusline and colors.bg or colors.pink,
    sp = config.hide_inactive_statusline and colors.border or colors.none,
    underline = config.hide_inactive_statusline,
  },
  b = {
    bg = config.hide_inactive_statusline and colors.none or colors.bg_statusline,
    fg = config.hide_inactive_statusline and colors.bg or colors.fg,
    sp = config.hide_inactive_statusline and colors.border or colors.none,
    underline = config.hide_inactive_statusline,
    gui = "bold",
  },
  c = {
    bg = config.hide_inactive_statusline and colors.none or colors.bg_statusline,
    fg = config.hide_inactive_statusline and colors.bg or colors.fg,
    sp = config.hide_inactive_statusline and colors.border or colors.none,
    underline = config.hide_inactive_statusline,
  },
}

if config.lualine_bold then
  for _, mode in pairs(hsl_test) do
    mode.a.gui = "bold"
  end
end

return hsl_test
