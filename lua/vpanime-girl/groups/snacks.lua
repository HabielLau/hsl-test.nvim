local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
<<<<<<< HEAD
    SnacksDashboardDesc       = { fg = c.cyan500 },
    SnacksDashboardKey        = { fg = c.orange500 },
    SnacksDashboardFooter     = { fg = c.yellow, italic = true },
    SnacksDashboardSpecial    = { fg = c.yellow500 },
    SnacksDashboardHeader     = { fg = c.blue },
    SnacksDashboardIcon       = { fg = c.cyan500, bold = true },
    SnacksNotifierBorderTrace = { fg = c.magenta500 },
    SnacksNotifierIconTrace   = { fg = c.magenta500 },
    SnacksNotifierTitleTrace  = { fg = c.magenta500 },
    SnacksIndentScope         = { fg = c.violet700, nocombine = true },
||||||| 1967afa (reshaded snacks dashboard special)
    SnacksDashboardDesc       = { fg = c.cyan100 },
    SnacksDashboardKey        = { fg = c.cyan },
    SnacksDashboardFooter     = { fg = c.purple100, italic = true },
    SnacksDashboardSpecial    = { fg = c.dkpink100 },
    SnacksDashboardHeader     = { fg = c.pink },
    SnacksDashboardIcon       = { fg = c.cyan100, bold = true },
    SnacksNotifierBorderTrace = { fg = c.dkmagenta500 },
    SnacksNotifierIconTrace   = { fg = c.dkmagenta500 },
    SnacksNotifierTitleTrace  = { fg = c.dkmagenta500 },
    SnacksIndentScope         = { fg = c.ltpink700, nocombine = true },
=======
    SnacksDashboardDesc       = { fg = c.cyan100 },
    SnacksDashboardKey        = { fg = c.cyan },
    SnacksDashboardFooter     = { fg = c.purple100, italic = true },
    SnacksDashboardSpecial    = { fg = c.dkpink },
    SnacksDashboardHeader     = { fg = c.pink },
    SnacksDashboardIcon       = { fg = c.cyan100, bold = true },
    SnacksNotifierBorderTrace = { fg = c.dkmagenta500 },
    SnacksNotifierIconTrace   = { fg = c.dkmagenta500 },
    SnacksNotifierTitleTrace  = { fg = c.dkmagenta500 },
    SnacksIndentScope         = { fg = c.ltpink700, nocombine = true },
>>>>>>> parent of 1967afa (reshaded snacks dashboard special)
    SnacksIndent              = { fg = c.base03, nocombine = true },
    SnacksPickerBorder        = { fg = c.base02, bg = c.bg_float },
    SnacksPickerTitle         = "Title",
    SnacksPickerPreviewTitle  = { fg = c.blue, bg = c.bg_float },
  }
end

return M
