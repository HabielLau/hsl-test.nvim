local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    GitGutterAdd          = { fg = c.green500 }, -- diff mode: Added line |diff.txt|
    GitGutterChange       = { fg = c.purple500 }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete       = { fg = c.dkpink500 }, -- diff mode: Deleted line |diff.txt|
    GitGutterAddLineNr    = { fg = c.green500 },
    GitGutterChangeLineNr = { fg = c.purple500 },
    GitGutterDeleteLineNr = { fg = c.dkpink500 },
  }
end

return M
