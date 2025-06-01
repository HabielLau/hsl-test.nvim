local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniJump             = { bg = c.dkmagenta500, fg = c.base4 },
    MiniJump2dDim        = { fg = c.base01 },
    MiniJump2dSpot       = { fg = c.dkmagenta500, bold = true, nocombine = true },
    MiniJump2dSpotAhead  = { fg = c.cyan500, bg = c.black, nocombine = true },
    MiniJump2dSpotUnique = { fg = c.purple500, bold = true, nocombine = true },
  }
end

return M
