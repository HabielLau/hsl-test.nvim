local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniStarterCurrent    = { nocombine = true },
    MiniStarterFooter     = { fg = c.purple, italic = true },
    MiniStarterHeader     = { fg = c.pink },
    MiniStarterInactive   = { fg = c.base01, style = opts.styles.comments },
    MiniStarterItem       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    MiniStarterItemBullet = { fg = c.base01 },
    MiniStarterItemPrefix = { fg = c.warning },
    MiniStarterSection    = { fg = c.ltpink500 },
    MiniStarterQuery      = { fg = c.info },
  }
end

return M
