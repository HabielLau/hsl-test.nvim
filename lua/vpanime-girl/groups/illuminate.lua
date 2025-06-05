local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    illuminatedWord      = { bg = c.ltpink900 },
    illuminatedCurWord   = { bg = c.ltpink900 },
    IlluminatedWordText  = { bg = c.ltpink900 },
    IlluminatedWordRead  = { bg = c.dkmagenta900 },
    IlluminatedWordWrite = { bg = c.dkmagenta900 },
  }
end

return M
