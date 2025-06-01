local util = require("vpanime-girl.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local wezterm = util.template(
    [[
[colors]
foreground = "${fg}"
background = "${bg}"
cursor_bg = "${fg}"
cursor_border = "${fg}"
cursor_fg = "${bg}"
selection_bg = "${pink700}"
selection_fg = "${fg}"

ansi = ["${black}", "${dkpink}", "${ltpurple}", "${purple}", "${pink}", "${dkmagenta}", "${cyan}", "${base0}"]
brights = ["${bg}", "${dkpink}", "${ltpurple}", "${purple}", "${pink}", "${dkmagenta}", "${cyan}", "${fg}"]

[colors.tab_bar]
inactive_tab_edge = "${base03}"
background = "#191b28"

[colors.tab_bar.active_tab]
fg_color = "${blue}"
bg_color = "${bg}"

[colors.tab_bar.inactive_tab]
bg_color = "${base03}"
fg_color = "${base02}"

[colors.tab_bar.inactive_tab_hover]
bg_color = "${base03}"
fg_color = "${pink}"

[colors.tab_bar.new_tab_hover]
fg_color = "${base03}"
bg_color = "${pink}"

[colors.tab_bar.new_tab]
fg_color = "${pink}"
bg_color = "#191b28"

[metadata]
aliases = []
author = "taylor"
name = "${_style_name}"]],
    colors
  )
  return wezterm
end

return M
