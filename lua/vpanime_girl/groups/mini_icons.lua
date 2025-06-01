local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniIconsAzure  = { fg = c.pink300 },
    MiniIconsBlue   = { fg = c.pink },
    MiniIconsCyan   = { fg = c.cyan },
    MiniIconsGreen  = { fg = c.green },
    MiniIconsGrey   = { fg = c.base2 },
    MiniIconsOrange = { fg = c.ltpurple },
    MiniIconsPurple = { fg = c.ltpink },
    MiniIconsRed    = { fg = c.dkpink },
    MiniIconsYellow = { fg = c.purple },
  }
end

return M
