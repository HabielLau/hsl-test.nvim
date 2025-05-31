local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    NavicIconsFile          = { fg = c.fg, bg = c.bg_statusline },
    NavicIconsModule        = { fg = c.purple, bg = c.bg_statusline },
    NavicIconsNamespace     = { fg = c.fg, bg = c.bg_statusline },
    NavicIconsPackage       = { fg = c.fg, bg = c.bg_statusline },
    NavicIconsClass         = { fg = c.ltpurple, bg = c.bg_statusline },
    NavicIconsMethod        = { fg = c.pink, bg = c.bg_statusline },
    NavicIconsProperty      = { fg = c.cyan, bg = c.bg_statusline },
    NavicIconsField         = { fg = c.cyan, bg = c.bg_statusline },
    NavicIconsConstructor   = { fg = c.ltpurple, bg = c.bg_statusline },
    NavicIconsEnum          = { fg = c.ltpurple, bg = c.bg_statusline },
    NavicIconsInterface     = { fg = c.ltpurple, bg = c.bg_statusline },
    NavicIconsFunction      = { fg = c.pink, bg = c.bg_statusline },
    NavicIconsVariable      = { fg = c.dkmagenta, bg = c.bg_statusline },
    NavicIconsConstant      = { fg = c.dkmagenta, bg = c.bg_statusline },
    NavicIconsString        = { fg = c.green, bg = c.bg_statusline },
    NavicIconsNumber        = { fg = c.ltpurple, bg = c.bg_statusline },
    NavicIconsBoolean       = { fg = c.ltpurple, bg = c.bg_statusline },
    NavicIconsArray         = { fg = c.ltpurple, bg = c.bg_statusline },
    NavicIconsObject        = { fg = c.ltpurple, bg = c.bg_statusline },
    NavicIconsKey           = { fg = c.ltpink500, bg = c.bg_statusline },
    NavicIconsKeyword       = { fg = c.ltpink500, bg = c.bg_statusline },
    NavicIconsNull          = { fg = c.ltpurple, bg = c.bg_statusline },
    NavicIconsEnumMember    = { fg = c.cyan, bg = c.bg_statusline },
    NavicIconsStruct        = { fg = c.ltpurple, bg = c.bg_statusline },
    NavicIconsEvent         = { fg = c.ltpurple, bg = c.bg_statusline },
    NavicIconsOperator      = { fg = c.fg, bg = c.bg_statusline },
    NavicIconsTypeParameter = { fg = c.cyan, bg = c.bg_statusline },
    NavicText               = { fg = c.fg, bg = c.bg_statusline },
    NavicSeparator          = { fg = c.fg, bg = c.bg_statusline },
  }
end

return M
