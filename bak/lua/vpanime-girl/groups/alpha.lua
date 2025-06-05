local M = {}

function M.get(c)
  -- stylua: ignore
  return {
    AlphaShortcut    = { fg = c.cyan100 },
    AlphaHeader      = { fg = c.pink },
    AlphaHeaderLabel = { fg = c.dkmagenta },
    AlphaFooter      = { fg = c.dkmagenta100 },
    AlphaButtons     = { fg = c.cyan100 },
  }
end

return M
