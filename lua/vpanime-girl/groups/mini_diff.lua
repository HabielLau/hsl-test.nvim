local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniDiffOverAdd     = "DiffAdd",
    MiniDiffOverChange  = "DiffText",
    MiniDiffOverContext = "DiffChange",
    MiniDiffOverDelete  = "DiffDelete",
    MiniDiffSignAdd     = { fg = c.green500 },
    MiniDiffSignChange  = { fg = c.purple500 },
    MiniDiffSignDelete  = { fg = c.dkpink500 },
  }
end

return M
