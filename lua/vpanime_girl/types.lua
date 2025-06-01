---@class vpanime-girl.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias vpanime-girl.Highlights table<string,vpanime-girl.Highlight|string>

---@alias vpanime-girl.HighlightsFn fun(colors: ColorScheme, opts:vpanime-girl.Config):vpanime-girl.Highlights

---@class vpanime-girl.Cache
---@field groups vpanime-girl.Highlights
---@field inputs table
