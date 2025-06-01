local M = {}

function M.get(c, opts)
  --stylua: ignore
  return {
    BlinkCmpLabel                        = { fg = c.fg, bg = c.none },
    BlinkCmpLabelDeprecated              = { fg = c.base01, bg = c.none, strikethrough = true },
    --INFO: unused at the moment but passed still for future use
    BlinkCmpLabelMatch                   = { fg = c.ltpink500, bg = c.none },
    -- Documentation windows
    BlinkCmpDoc                          = { fg = c.fg, bg = c.bg_float },
    BlinkCmpDocBorder                    = { fg = c.base02, bg = c.bg_float },
    BlinkCmpGhostText                    = { fg = c.base01 },
    -- Signature help
    BlinkCmpSignatureHelp                = { fg = c.ltpink500, bg = c.none },
    BlinkCmpSignatureHelpBorder          = { fg = c.base02, bg = c.none },
    BlinkCmpSignatureHelpActiveParameter = { fg = c.ltpurple, bg = c.none },
    -- ISSUE: passing c.none causes menu to be invisible
    -- BlinkCmpMenu = { fg = c.base01, bg = c.none },
    BlinkCmpMenu                         = { fg = c.base01, bg = c.none },
    BlinkCmpKind                         = { fg = c.base01, bg = c.none },
    BlinkCmpKindCodeium                  = { fg = c.cyan500, bg = c.none },
    BlinkCmpKindCopilot                  = { fg = c.cyan500, bg = c.none },
    BlinkCmpKindTabNine                  = { fg = c.cyan500, bg = c.none },
    BlinkCmpKindSupermaven               = { fg = c.cyan500, bg = c.none },
    BlinkCmpKindKeyword                  = { fg = c.cyan, bg = c.none },
    BlinkCmpKindVariable                 = { fg = c.dkmagenta, bg = c.none },
    BlinkCmpKindConstant                 = { fg = c.dkmagenta, bg = c.none },
    BlinkCmpKindReference                = { fg = c.dkmagenta, bg = c.none },
    BlinkCmpKindValue                    = { fg = c.dkmagenta, bg = c.none },
    BlinkCmpKindFunction                 = { fg = c.pink, bg = c.none },
    BlinkCmpKindMethod                   = { fg = c.pink, bg = c.none },
    BlinkCmpKindConstructor              = { fg = c.pink, bg = c.none },
    BlinkCmpKindClass                    = { fg = c.ltpurple, bg = c.none },
    BlinkCmpKindInterface                = { fg = c.ltpurple, bg = c.none },
    BlinkCmpKindStruct                   = { fg = c.ltpurple, bg = c.none },
    BlinkCmpKindEvent                    = { fg = c.ltpurple, bg = c.none },
    BlinkCmpKindEnum                     = { fg = c.ltpurple, bg = c.none },
    BlinkCmpKindUnit                     = { fg = c.ltpurple, bg = c.none },
    BlinkCmpKindModule                   = { fg = c.purple, bg = c.none },
    BlinkCmpKindProperty                 = { fg = c.cyan, bg = c.none },
    BlinkCmpKindField                    = { fg = c.cyan, bg = c.none },
    BlinkCmpKindTypeParameter            = { fg = c.cyan, bg = c.none },
    BlinkCmpKindEnumMember               = { fg = c.cyan, bg = c.none },
    BlinkCmpKindOperator                 = { fg = c.cyan, bg = c.none },
    BlinkCmpKindSnippet                  = { fg = c.ltpink500, bg = c.none },
  }
end

return M
