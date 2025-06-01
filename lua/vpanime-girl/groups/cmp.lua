local M = {}

function M.get(c, opts)
  --stylua: ignore
  return {
    CmpDocumentation         = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder   = { fg = c.base02, bg = c.bg_float },
    CmpGhostText             = { fg = c.base01 },

    CmpItemAbbr              = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated    = { fg = c.base01, bg = c.none, strikethrough = true },
    CmpItemAbbrMatch         = { fg = c.ltpink500, bg = c.none },
    CmpItemAbbrMatchFuzzy    = { fg = c.ltpink500, bg = c.none },

    CmpItemMenu              = { fg = c.base01, bg = c.none },

    CmpItemKindDefault       = { fg = c.base01, bg = c.none },

    CmpItemKindCodeium       = { fg = c.cyan500, bg = c.none },
    CmpItemKindCopilot       = { fg = c.cyan500, bg = c.none },
    CmpItemKindTabNine       = { fg = c.cyan500, bg = c.none },

    CmpItemKindKeyword       = { fg = c.cyan, bg = c.none },
    CmpItemKindVariable      = { fg = c.dkmagenta, bg = c.none },
    CmpItemKindConstant      = { fg = c.dkmagenta, bg = c.none },
    CmpItemKindReference     = { fg = c.dkmagenta, bg = c.none },
    CmpItemKindValue         = { fg = c.dkmagenta, bg = c.none },

    CmpItemKindFunction      = { fg = c.pink, bg = c.none },
    CmpItemKindMethod        = { fg = c.pink, bg = c.none },
    CmpItemKindConstructor   = { fg = c.pink, bg = c.none },

    CmpItemKindClass         = { fg = c.ltpurple, bg = c.none },
    CmpItemKindInterface     = { fg = c.ltpurple, bg = c.none },
    CmpItemKindStruct        = { fg = c.ltpurple, bg = c.none },
    CmpItemKindEvent         = { fg = c.ltpurple, bg = c.none },
    CmpItemKindEnum          = { fg = c.ltpurple, bg = c.none },
    CmpItemKindUnit          = { fg = c.ltpurple, bg = c.none },

    CmpItemKindModule        = { fg = c.purple, bg = c.none },

    CmpItemKindProperty      = { fg = c.cyan, bg = c.none },
    CmpItemKindField         = { fg = c.cyan, bg = c.none },
    CmpItemKindTypeParameter = { fg = c.cyan, bg = c.none },
    CmpItemKindEnumMember    = { fg = c.cyan, bg = c.none },
    CmpItemKindOperator      = { fg = c.cyan, bg = c.none },
    CmpItemKindSnippet       = { fg = c.ltpink500, bg = c.none },
  }
end

return M
