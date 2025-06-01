local theme = require("hsl-test.theme")
local config = require("hsl-test.config")

local M = {}

function M._load(style)
  if style and not M._style then
    M._style = require("hsl-test.colors").options.style
  end
  if not style and M._style then
    require("hsl-test.config").options.style = M._style
    M._style = nil
  end
  M.load({ style = style, use_background = style == nil })
end

---@param opts Config|nil
function M.load(opts)
  if opts then
    require("hsl-test.config").extend(opts)
  end
  theme.setup()
end

M.setup = config.setup()

-- keep for backward compatibility
M.colorscheme = M.load

return M
