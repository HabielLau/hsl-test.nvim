local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    rainbowcol1 = { fg = c.dkpink500 },
    rainbowcol2 = { fg = c.ltpurple500 },
    rainbowcol3 = { fg = c.purple500 },
    rainbowcol4 = { fg = c.green500 },
    rainbowcol5 = { fg = c.cyan500 },
    rainbowcol6 = { fg = c.pink500 },
    rainbowcol7 = { fg = c.dkmagenta500 },
  }
end

return M
