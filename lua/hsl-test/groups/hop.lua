local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    HopNextKey   = { fg = c.dkmagenta500, bold = true },
    HopNextKey1  = { fg = c.ltpink500, bold = true },
    HopNextKey2  = { fg = c.ltpink700 },
    HopUnmatched = { fg = c.base01 },
  }
end

return M
