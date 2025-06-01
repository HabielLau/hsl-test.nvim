local Util = require("vpanime-girl.util")

local M = {}

---@param opts? tokyonight.Config
function M.setup(opts)
  opts = require("vpanime-girl.config").extend(opts)

  local colors = require("vpanime-girl.colors").setup(opts)
  local groups = require("vpanime-girl.groups").setup(colors, opts)

  -- only needed to clear when not the default colorscheme
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "vpanime-girl-" .. opts.style

  for group, hl in pairs(groups) do
    hl = type(hl) == "string" and { link = hl } or hl
    vim.api.nvim_set_hl(0, group, hl)
  end

  if opts.terminal_colors then
    M.terminal(colors)
  end

  return colors, groups, opts
end

---@param colors ColorScheme
function M.terminal(colors)
  -- dark
  vim.g.terminal_color_0 = colors.terminal.black
  vim.g.terminal_color_8 = colors.terminal.black

  -- light
  vim.g.terminal_color_7 = colors.terminal.fg
  vim.g.terminal_color_15 = colors.terminal.fg

  -- colors
  vim.g.terminal_color_1 = colors.terminal.dkpink
  vim.g.terminal_color_9 = colors.terminal.dkpink

  vim.g.terminal_color_2 = colors.terminal.green
  vim.g.terminal_color_10 = colors.terminal.green

  vim.g.terminal_color_3 = colors.terminal.purple
  vim.g.terminal_color_11 = colors.terminal.purple

  vim.g.terminal_color_4 = colors.terminal.pink
  vim.g.terminal_color_12 = colors.terminal.pink

  vim.g.terminal_color_5 = colors.terminal.dkmagenta
  vim.g.terminal_color_13 = colors.terminal.dkmagenta

  vim.g.terminal_color_6 = colors.terminal.cyan
  vim.g.terminal_color_14 = colors.terminal.cyan
end

return M
