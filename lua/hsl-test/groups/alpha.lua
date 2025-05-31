local M = {}

function M.get(c)
  -- stylua: ignore
  return {
    AlphaShortcut    = { fg = c.ltpurple },
    AlphaHeader      = { fg = c.pink },
    AlphaHeaderLabel = { fg = c.ltpurple },
    AlphaFooter      = { fg = c.cyan },
    AlphaButtons     = { fg = c.cyan },
  }
end

return M
