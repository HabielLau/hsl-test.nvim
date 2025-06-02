local M = {}

-- Map of plugin name to plugin extension
--- @type table<string, {ext:string, url:string, label:string}>
-- stylua: ignore

M.extras = {
  lua              = { ext = "lua", url = "https://www.lua.org", label = "Lua Table for testing" },
  wezterm          = { ext = "toml", url = "https://wezfurlong.org/wezterm/config/files.html", label = "WezTerm" },
  alacritty        = { ext = "toml", url = "https://github.com/alacritty/alacritty", label = "Alacritty" },
}

local function write(str, fileName)
  local rootDir = vim.fs.root(0, ".git")
  local fullPath = rootDir .. "/extras/" .. fileName
  print("[write] " .. fullPath)
  vim.fn.mkdir(vim.fs.dirname(fullPath), "p")
  local file = io.open(fullPath, "w")
  if not file then
    error("Failed to open file: " .. fullPath)
  end
  file:write(str)
  file:close()
end

function M.read_file(file)
  local fd = assert(io.open(file, "r"))
  local data = fd:read("*a")
  fd:close()
  return data
end

function M.write_file(file, contents)
  local fd = assert(io.open(file, "w+"))
  fd:write(contents)
  fd:close()
end

function M.docs()
  local file = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h:h:h:h") .. "/README.md"
  local tag = "extras"
  local pattern = "(<%!%-%- " .. tag .. ":start %-%->).*(<%!%-%- " .. tag .. ":end %-%->)"
  local readme = M.read_file(file)
  local lines = {}
  local names = vim.tbl_keys(M.extras)
  table.sort(names)
  for _, name in ipairs(names) do
    local info = M.extras[name]
    table.insert(lines, "- [" .. info.label .. "](" .. info.url .. ") ([" .. name .. "](extras/" .. name .. "))")
  end
  readme = readme:gsub(pattern, "%1\n" .. table.concat(lines, "\n") .. "\n%2")
  M.write_file(file, readme)
end

function M.setup()
  M.docs()
  local config = require("vpanime-girl.config")
  vim.o.background = "dark"

  local styles = {
    dark = "",
    light = " Light",
  }

  for extra, info in pairs(M.extras) do
    package.loaded["vpanime-girl.extra." .. extra] = nil
    local plugin = require("vpanime-girl.extra." .. extra)
    for style, style_name in pairs(styles) do
      vim.o.background = style == "dark" and "dark" or "light"
      ---@diagnostic disable-next-line: missing-fields
      config.setup({ style = style, use_background = "auto", transparent = false })
      local colors = require("vpanime-girl.colors").setup({ transform = true })
      local fname = extra .. "/vpanime_girl_" .. style .. "." .. info.ext
      colors["_upstream_url"] = "https://github.com/HabielLau/vpanime-girl.nvim/raw/dev/extras/" .. fname
      colors["_style_name"] = "VpAnime Girl" .. style_name
      write(plugin.generate(colors), fname)
    end
  end
end

return M
