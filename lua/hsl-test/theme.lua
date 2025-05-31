local Util = require("hsl-test.util")

local M = {}

function M.setup()
  local colors = require("hsl-test.colors").setup()
  local opts = require("hsl-test.config")
  local groups = require("hsl-test.groups").setup(colors, opts.options)

  if vim.g.loaded_lightline then
    vim.g.lightline = { colorscheme = "hsl_test" }
  end

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "hsl-test"

  if opts.is_day() then
    Util.invert_colors(colors)
    Util.invert_highlights(groups)
  end

  for group, hl in pairs(groups) do
    hl = type(hl) == "string" and { link = hl } or hl
    vim.api.nvim_set_hl(0, group, hl)
  end

  if opts.options.terminal_colors then
    M.terminal(colors)
  end

  return colors, groups, opts
end

---@param colors ColorScheme
function M.terminal(colors)
  -- dark
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_8 = colors.black

  -- light
  vim.g.terminal_color_7 = colors.fg
  vim.g.terminal_color_15 = colors.fg

  -- colors
  vim.g.terminal_color_1 = colors.dkpink
  vim.g.terminal_color_9 = colors.dkpink

  vim.g.terminal_color_2 = colors.ltpurple
  vim.g.terminal_color_10 = colors.ltpurple

  vim.g.terminal_color_3 = colors.purple
  vim.g.terminal_color_11 = colors.purple

  vim.g.terminal_color_4 = colors.pink
  vim.g.terminal_color_12 = colors.pink

  vim.g.terminal_color_5 = colors.dkmagenta
  vim.g.terminal_color_13 = colors.dkmagenta

  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_14 = colors.cyan
end

return M
