local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    RainbowDelimiterRed    = { fg = c.dkpink },
    RainbowDelimiterOrange = { fg = c.ltpurple },
    RainbowDelimiterYellow = { fg = c.purple },
    RainbowDelimiterGreen  = { fg = c.green },
    RainbowDelimiterBlue   = { fg = c.pink },
    RainbowDelimiterViolet = { fg = c.ltpink },
    RainbowDelimiterCyan   = { fg = c.cyan },
  }
end

return M
