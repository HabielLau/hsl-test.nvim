local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    GitSignsAdd    = { fg = c.green500 }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.purple500 }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.dkpink500 }, -- diff mode: Deleted line |diff.txt|
  }
end

return M
