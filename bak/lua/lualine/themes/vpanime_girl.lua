local colors = require("vpanime-girl.colors").setup({ transform = true })
local config = require("vpanime-girl.config").options

local vpanime_girl = {}

vpanime_girl.normal = {
  a = { bg = colors.pink, fg = colors.black },
  b = { bg = colors.base0, fg = colors.base04 },
  c = { bg = colors.bg_statusline, fg = colors.fg },
}

vpanime_girl.insert = {
  a = { bg = colors.green, fg = colors.black },
}

vpanime_girl.command = {
  a = { bg = colors.purple, fg = colors.black },
}

vpanime_girl.visual = {
  a = { bg = colors.dkmagenta, fg = colors.black },
}

vpanime_girl.replace = {
  a = { bg = colors.dkpink, fg = colors.black },
}

vpanime_girl.terminal = {
  a = { bg = colors.green, fg = colors.black },
}

vpanime_girl.inactive = {
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
  for _, mode in pairs(vpanime_girl) do
    mode.a.gui = "bold"
  end
end

return vpanime_girl
