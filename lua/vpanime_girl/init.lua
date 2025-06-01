local theme = require("vpanime-girl.theme")
local config = require("vpanime-girl.config")

local M = {}

function M._load(style)
  if style and not M._style then
    M._style = require("vpanime-girl.colors").options.style
  end
  if not style and M._style then
    require("vpanime-girl.config").options.style = M._style
    M._style = nil
  end
  M.load({ style = style, use_background = style == nil })
end

---@param opts Config|nil
function M.load(opts)
  if opts then
    require("vpanime-girl.config").extend(opts)
  end
  theme.setup()
end

M.setup = config.setup()

-- keep for backward compatibility
M.colorscheme = M.load

return M
