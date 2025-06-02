local util = require("vpanime-girl.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local bspwmColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      bspwmColors[k] = v:gsub("^#", "0x")
    end
  end

  local bspwm = util.template(
    [[
    # vpanime-girl BSPWM Colors
    bspc config normal_border_color "${bg}"
    bspc config focused_border_color "${cyan}"
    bspc config presel_feedback_color "${dkmagenta}"
    ]],
    bspwmColors
  )

  return bspwm
end

return M
