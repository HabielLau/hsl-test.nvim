local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    LeapMatch    = { bg = c.dkmagenta500, fg = c.fg, bold = true },
    LeapLabel    = { fg = c.dkmagenta500, bold = true },
    LeapBackdrop = { fg = c.base01 },
  }
end

return M
