local util = require("vpanime-girl.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local alacrittyColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      alacrittyColors[k] = v:gsub("^#", "0x")
    end
  end

  local alacritty = util.template(
    [[
# vpanime-girl Alacritty Colors
colors:
  # Default colors
  primary:
    background: '${bg}'
    foreground: '${fg}'

  # Normal colors
  normal:
    black:      '${black}'
    dkpink:     '${dkpink}'
    green:      '${green}'
    purple:     '${purple}'
    pink:       '${pink}'
    dkmagenta:  '${dkmagenta}'
    cyan:       '${cyan}'
    white:      '${base0}'

  # Bright colors
  bright:
    black:      '${bg}'
    dkpink:     '${dkpink}'
    green:      '${green}'
    purple:     '${purple}'
    pink:       '${pink}'
    dkmagenta:  '${dkmagenta}'
    cyan:       '${cyan}'
    white:      '${fg}'

  indexed_colors:
    - { index: 16, color: '${ltpurple}' }
    - { index: 17, color: '${dkpink300}' }

  ]],
    alacrittyColors
  )

  return alacritty
end

return M
