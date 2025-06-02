local util = require("vpanime-girl.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local bspwm = util.template(
    [[
  # vpanime-girl colors for bspwm

  ## name: ${_style_name}
  ## license: MIT
  ## author: Habiel Lau
  ## upstream: ${_upstream_url}

  bspc config normal_border_color ${base04}
  bspc config focused_border_color ${cyan300}
  bspc config presel_feedback_color ${ltpurple}
    ]],
    colors
  )
  return bspwm
end

return M
