local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    SnacksDashboardDesc       = { fg = c.cyan500 },
    SnacksDashboardKey        = { fg = c.ltpurple500 },
    SnacksDashboardFooter     = { fg = c.purple, italic = true },
    SnacksDashboardSpecial    = { fg = c.purple500 },
    SnacksDashboardHeader     = { fg = c.pink },
    SnacksDashboardIcon       = { fg = c.cyan500, bold = true },
    SnacksNotifierBorderTrace = { fg = c.dkmagenta500 },
    SnacksNotifierIconTrace   = { fg = c.dkmagenta500 },
    SnacksNotifierTitleTrace  = { fg = c.dkmagenta500 },
    SnacksIndentScope         = { fg = c.ltpink700, nocombine = true },
    SnacksIndent              = { fg = c.base03, nocombine = true },
    SnacksPickerBorder        = { fg = c.base02, bg = c.bg_float },
    SnacksPickerTitle         = "Title",
    SnacksPickerPreviewTitle  = { fg = c.pink, bg = c.bg_float },
  }
end

return M
