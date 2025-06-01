local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    NeoTreeNormal        = { fg = c.base00, bg = c.bg_sidebar },
    NeoTreeNormalNC      = { fg = c.base00, bg = c.bg_sidebar },
    NeoTreeDimText       = { fg = c.base01 },
    NeoTreeMessage       = { fg = c.base01 },
    NeoTreeGitModified   = { fg = c.purple500 },
    NeoTreeGitDeleted    = { fg = c.dkpink500 },
    NeoTreeGitAdded      = { fg = c.green500 },
  }
end

return M
