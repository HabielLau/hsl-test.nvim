local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    LazyProgressDone = { bold = true, fg = c.dkmagenta500 },
    LazyProgressTodo = { bold = true, fg = c.base01 },
  }
end

return M
