local M = {}

function M.get(c, opts)
  --stylua: ignore
  return {
    BufferLineIndicatorSelected = { fg = c.purpl500 },
    TabLineFill                 = { nocombine = true }
  }
end

return M
