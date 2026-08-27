local M = {}

local p = require("ember.palette")

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply()
  -- ==================================================
  -- Comments
  -- ==================================================

  hl("Comment", {
    fg = p.muted,
    italic = true,
  })

  -- ==================================================
  -- Constants / literals
  -- ==================================================

  hl("Constant", {
    fg = p.orange,
  })

  hl("String", {
    fg = p.green,
  })

  hl("Character", {
    fg = p.green,
  })

  hl("Number", {
    fg = p.yellow,
  })

  hl("Boolean", {
    fg = p.orange,
  })

  hl("Float", {
    fg = p.yellow,
  })

  -- ==================================================
  -- Identifiers
  -- ==================================================

  hl("Identifier", {
    fg = p.fg0,
  })

  hl("Function", {
    fg = p.blue,
  })

  -- ==================================================
  -- Statements
  -- ==================================================

  hl("Statement", {
    fg = p.purple,
  })

  hl("Conditional", {
    fg = p.purple,
  })

  hl("Repeat", {
    fg = p.purple,
  })

  hl("Label", {
    fg = p.orange,
  })

  hl("Operator", {
    fg = p.cyan,
  })

  hl("Keyword", {
    fg = p.purple,
  })

  hl("Exception", {
    fg = p.red,
  })

  -- ==================================================
  -- Types / structures
  -- ==================================================

  hl("Type", {
    fg = p.cyan,
  })

  hl("StorageClass", {
    fg = p.purple,
  })

  hl("Structure", {
    fg = p.cyan,
  })

  hl("Typedef", {
    fg = p.cyan,
  })

  -- ==================================================
  -- Misc
  -- ==================================================

  hl("Special", {
    fg = p.orange,
  })

  hl("SpecialChar", {
    fg = p.orange_bright,
  })

  hl("Delimiter", {
    fg = p.fg1,
  })

  hl("PreProc", {
    fg = p.orange,
  })

  hl("Include", {
    fg = p.purple,
  })

  hl("Define", {
    fg = p.purple,
  })

  hl("Macro", {
    fg = p.orange,
  })

  hl("PreCondit", {
    fg = p.purple,
  })

  hl("Todo", {
    fg = p.bg0,
    bg = p.orange,
    bold = true,
  })
end

return M
