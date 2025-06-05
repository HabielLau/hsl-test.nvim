local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniSurround = { bg = c.ltpurple, fg = c.black },
  }
end

return M
