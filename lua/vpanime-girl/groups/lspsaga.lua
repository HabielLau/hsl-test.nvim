local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    DiagnosticWarning          = "DiagnosticWarn",
    DiagnosticInformation      = "DiagnosticInfo",
    LspFloatWinNormal          = { bg = c.bg_float },
    LspFloatWinBorder          = { fg = c.base02 },
    LspSagaBorderTitle         = { fg = c.cyan },
    LspSagaHoverBorder         = { fg = c.pink },
    LspSagaRenameBorder        = { fg = c.green },
    LspSagaDefPreviewBorder    = { fg = c.green },
    LspSagaCodeActionBorder    = { fg = c.pink },
    LspSagaFinderSelection     = { fg = c.base03 },
    LspSagaCodeActionTitle     = { fg = c.cyan },
    LspSagaCodeActionContent   = { fg = c.ltpink500 },
    LspSagaSignatureHelpBorder = { fg = c.red },
    ReferencesCount            = { fg = c.ltpink500 },
    DefinitionCount            = { fg = c.ltpink500 },
    DefinitionIcon             = { fg = c.pink },
    ReferencesIcon             = { fg = c.pink },
    TargetWord                 = { fg = c.cyan500 },
  }
end

return M
