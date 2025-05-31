local M = {}

function M.get(c, options)
  -- stylua: ignore
  return {
    ColorColumn                 = { bg = c.base02 }, -- used for the columns set with 'colorcolumn'
    Conceal                     = { fg = c.pink500 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor                      = { fg = c.base03, bg = c.base0 }, -- character under the cursor
    lCursor                     = { fg = c.base03, bg = c.base00 }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM                    = { fg = c.base03, bg = c.base0 }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn                = { bg = c.base02 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine                  = { bg = c.base03, sp = c.base1 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory                   = { fg = c.pink500 },
    StatusLineNC                = { fg = options.hide_inactive_statusline and c.bg or c.base0, bg = options.hide_inactive_statusline and c.none or c.base04, sp = options.hide_inactive_statusline and c.border or c.none, underline = options.hide_inactive_statusline and true or false }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.-- directory names (and other special names in listings)
  }
end
return M
