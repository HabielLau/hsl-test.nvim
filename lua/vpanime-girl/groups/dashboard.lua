local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    DashboardShortCut = { fg = c.cyan },
    DashboardHeader   = { fg = c.pink },
    DashboardCenter   = { fg = c.dkmagenta },
    DashboardFooter   = { fg = c.purple100, italic = true },
    DashboardKey      = { fg = c.dkmagenta100 },
    DashboardDesc     = { fg = c.cyan100 },
    DashboardIcon     = { fg = c.cyan100, bold = true },
  }
end

return M
