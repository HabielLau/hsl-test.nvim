local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    IblIndent                  = { fg = c.base03, nocombine = true },
    IndentBlanklineChar        = { fg = c.base03, nocombine = true },
    IndentBlanklineContextChar = { fg = c.ltpurple500, nocombine = true },
  }
end

return M
