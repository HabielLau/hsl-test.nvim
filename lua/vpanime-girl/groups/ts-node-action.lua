local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    TSNodeKey       = { fg = c.dkmagenta500, bold = true },
    TSNodeUnmatched = { fg = c.base01 },
  }
end

return M
