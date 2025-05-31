local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    DashboardShortCut = { fg = c.cyan },
    DashboardHeader   = { fg = c.pink },
    DashboardCenter   = { fg = c.dkmagenta },
    DashboardFooter   = { fg = c.purple, italic = true },
    DashboardKey      = { fg = c.ltpurple500 },
    DashboardDesc     = { fg = c.cyan500 },
    DashboardIcon     = { fg = c.cyan500, bold = true },
  }
end

return M
