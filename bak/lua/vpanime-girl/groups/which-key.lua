local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    WhichKey          = { fg = c.cyan },
    WhichKeyGroup     = { fg = c.pink },
    WhichKeyDesc      = { fg = c.dkmagenta },
    WhichKeySeparator = { fg = c.base01 },
    WhichKeyBorder    = { fg = c.base02, bg = c.bg_float },
    WhichKeyValue     = { fg = c.ltpink500 },
  }
end

return M
