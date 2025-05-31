local colors = require("hsl-test.colors").setup({ transform = true })

local hsl_test = {}

hsl_test.normal = {
  left = { { colors.black, colors.pink }, { colors.pink, colors.base02 } },
  middle = { { colors.fg, colors.bg_statusline } },
  right = { { colors.black, colors.pink }, { colors.base02, colors.base1 } },
  error = { { colors.black, colors.error } },
  warning = { { colors.black, colors.warning } },
}

hsl_test.insert = {
  left = { { colors.black, colors.green }, { colors.pink, colors.base02 } },
}

hsl_test.visual = {
  left = { { colors.black, colors.dkmagenta }, { colors.pink, colors.base02 } },
}

hsl_test.replace = {
  left = { { colors.black, colors.dkpink }, { colors.pink, colors.base02 } },
}

hsl_test.inactive = {
  left = { { colors.pink, colors.bg_statusline }, { colors.fg, colors.base02 } },
  middle = { { colors.base02, colors.bg_statusline } },
  right = { { colors.base02, colors.bg_statusline }, { colors.fg, colors.base02 } },
}

hsl_test.tabline = {
  left = { { colors.fg, colors.bg_highlight }, { colors.fg, colors.base02 } },
  middle = { { colors.base02, colors.bg_statusline } },
  right = { { colors.base02, colors.bg_statusline }, { colors.fg, colors.base02 } },
  tabsel = { { colors.pink, colors.base02 }, { colors.fg, colors.base02 } },
}

return hsl_test
