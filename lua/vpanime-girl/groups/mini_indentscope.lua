local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniIndentscopeSymbol    = { fg = c.ltpink700, nocombine = true },
    MiniIndentscopeSymbolOff = { fg = c.warning, nocombine = true },
  }
end

return M
