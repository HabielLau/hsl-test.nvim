local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    TSRainbowRed    = { fg = c.pink },
    TSRainbowOrange = { fg = c.ltpurple },
    TSRainbowYellow = { fg = c.purple },
    TSRainbowGreen  = { fg = c.green },
    TSRainbowBlue   = { fg = c.pink },
    TSRainbowViolet = { fg = c.ltpink500 },
    TSRainbowCyan   = { fg = c.cyan },
  }
end

return M
