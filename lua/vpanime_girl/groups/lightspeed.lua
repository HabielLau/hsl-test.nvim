local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    LightspeedGreyWash               = { fg = c.base01 },
    -- LightspeedCursor = { link = "Cursor" },
    LightspeedLabel                  = { fg = c.dkmagenta500, bold = true, underline = true },
    LightspeedLabelDistant           = { fg = c.cyan, bold = true, underline = true },
    LightspeedLabelDistantOverlapped = { fg = c.cyan500, underline = true },
    LightspeedLabelOverlapped        = { fg = c.dkmagenta500, underline = true },
    LightspeedMaskedChar             = { fg = c.ltpurple },
    LightspeedOneCharMatch           = { bg = c.dkmagenta500, fg = c.fg, bold = true },
    LightspeedPendingOpArea          = { bg = c.dkmagenta500, fg = c.fg },
    LightspeedShortcut               = { bg = c.dkmagenta500, fg = c.fg, bold = true, underline = true },
    -- LightspeedShortcutOverlapped = { link = "LightspeedShortcut" },
    -- LightspeedUniqueChar = { link = "LightspeedUnlabeledMatch" },
    LightspeedUnlabeledMatch         = { fg = c.ltpink500, bold = true },
  }
end

return M
