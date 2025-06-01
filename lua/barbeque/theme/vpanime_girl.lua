local c = require("vpanime-girl.colors").setup({ transform = true })

local M = {
  normal = { bg = c.none, fg = c.base0 },

  ellipsis = { fg = c.dark5 },
  separator = { fg = c.dark5 },
  modified = { fg = c.warning },

  dirname = { fg = c.dark5 },
  basename = { fg = c.base0, bold = true },
  context = { fg = c.base0 },

  context_file = { fg = c.base0 },
  context_module = { fg = c.purple },
  context_namespace = { fg = c.purple },
  context_package = { fg = c.pink },
  context_class = { fg = c.ltpurple },
  context_method = { fg = c.pink },
  context_property = { fg = c.green500 },
  context_field = { fg = c.green500 },
  context_constructor = { fg = c.pink },
  context_enum = { fg = c.ltpurple },
  context_interface = { fg = c.ltpurple },
  context_function = { fg = c.pink },
  context_variable = { fg = c.dkmagenta },
  context_constant = { fg = c.dkmagenta },
  context_string = { fg = c.green },
  context_number = { fg = c.ltpurple },
  context_boolean = { fg = c.ltpurple },
  context_array = { fg = c.ltpurple },
  context_object = { fg = c.ltpurple },
  context_key = { fg = c.purple },
  context_null = { fg = c.pink1 },
  context_enum_member = { fg = c.green500 },
  context_struct = { fg = c.ltpurple },
  context_event = { fg = c.ltpurple },
  context_operator = { fg = c.green500 },
  context_type_parameter = { fg = c.green500 },
}

return M
