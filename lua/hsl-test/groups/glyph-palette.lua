local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    GlyphPalette1 = { fg = c.dkpink500 },
    GlyphPalette2 = { fg = c.violet },
    GlyphPalette3 = { fg = c.purple },
    GlyphPalette4 = { fg = c.pink },
    GlyphPalette6 = { fg = c.cyan },
    GlyphPalette7 = { fg = c.fg },
    GlyphPalette9 = { fg = c.dkpink },
  }
end

return M
