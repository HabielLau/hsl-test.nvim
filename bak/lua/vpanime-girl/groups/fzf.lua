local M = {}

function M.get(c, opts)
  --stylua: ignore
  return {
    FzfLuaNormal        = { fg = c.base0, bg = c.bg_float },
    FzfLuaBorder        = { fg = c.base02, bg = c.bg_float },
    FzfLuaCursor        = "IncSearch",
    FzfLuaFzfCursorLine = "CursorLine",
    FzfLuaPath          = "Directory",
    FzfLuaHeaderText    = "Title",
    FzfLuaHeaderBind    = { fg = c.purple, bg = c.bg_float },
    FzfLuaPreviewTitle  = { fg = c.pink, bg = c.bg_float },
    FzfLuaTitle         = { fg = c.ltpurple, bg = c.bg_float },
    FzfLuaLivePrompt    = "Normal"
  }
end

return M
