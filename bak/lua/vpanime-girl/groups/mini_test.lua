local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniTestEmphasis = { bold = true },
    MiniTestFail     = { fg = c.dkpink, bold = true },
    MiniTestPass     = { fg = c.green, bold = true },
  }
end

return M
