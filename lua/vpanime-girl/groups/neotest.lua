local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    NeotestPassed       = { fg = c.green500 },
    NeotestRunning      = { fg = c.purple500 },
    NeotestFailed       = { fg = c.dkpink500 },
    NeotestSkipped      = { fg = c.pink500 },
    NeotestTest         = { fg = c.base00 },
    NeotestNamespace    = { fg = c.cyan500 },
    NeotestFocused      = { fg = c.purple500 },
    NeotestFile         = { fg = c.cyan500 },
    NeotestDir          = { fg = c.pink500 },
    NeotestBorder       = { fg = c.pink500 },
    NeotestIndent       = { fg = c.base00 },
    NeotestExpandMarker = { fg = c.base0 },
    NeotestAdapterName  = { fg = c.ltpink500, bold = true },
    NeotestWinSelect    = { fg = c.pink500 },
    NeotestMarked       = { fg = c.pink500 },
    NeotestTarget       = { fg = c.pink500 },
    --[[ NeotestUnknown = {}, ]]
  }
end

return M
