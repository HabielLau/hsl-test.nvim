local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    ScrollbarHandle       = { fg = c.none, bg = c.bg_highlight },

    ScrollbarSearchHandle = { fg = c.ltpurple, bg = c.bg_highlight },
    ScrollbarSearch       = { fg = c.ltpurple, bg = c.none },

    ScrollbarErrorHandle  = { fg = c.error, bg = c.bg_highlight },
    ScrollbarError        = { fg = c.error, bg = c.none },

    ScrollbarWarnHandle   = { fg = c.warning, bg = c.bg_highlight },
    ScrollbarWarn         = { fg = c.warning, bg = c.none },

    ScrollbarInfoHandle   = { fg = c.info, bg = c.bg_highlight },
    ScrollbarInfo         = { fg = c.info, bg = c.none },

    ScrollbarHintHandle   = { fg = c.hint, bg = c.bg_highlight },
    ScrollbarHint         = { fg = c.hint, bg = c.none },

    ScrollbarMiscHandle   = { fg = c.ltpink500, bg = c.bg_highlight },
    ScrollbarMisc         = { fg = c.ltpink500, bg = c.none },
  }
end

return M
