---@class vpanime_girl.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias vpanime_girl.Highlights table<string,vpanime_girl.Highlight|string>

---@alias vpanime_girl.HighlightsFn fun(colors: ColorScheme, opts:vpanime_girl.Config):vpanime_girl.Highlights

---@class vpanime_girl.Cache
---@field groups vpanime_girl.Highlights
---@field inputs table
