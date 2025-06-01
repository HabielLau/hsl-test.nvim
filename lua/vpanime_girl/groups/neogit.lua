local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    NeogitBranch               = { fg = c.dkmagenta500 },
    NeogitRemote               = { fg = c.ltpink500 },
    NeogitHunkHeader           = { fg = c.base0, bg = c.base02 },
    NeogitHunkHeaderHighlight  = { fg = c.pink500, bg = c.base02 },
    NeogitDiffContextHighlight = { fg = c.base00, bg = c.base02 },
    NeogitDiffDeleteHighlight  = { fg = c.dkpink500, bg = c.red900 },
    NeogitDiffAddHighlight     = { fg = c.green500, bg = c.green900 },
  }
end

return M
