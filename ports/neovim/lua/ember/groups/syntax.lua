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
  -- Statements / keywords
  -- ==================================================

  -- General language syntax
  hl("Statement", {
    fg = p.orange,
  })

  hl("Keyword", {
    fg = p.orange,
  })

  -- public, private, static, const, final, ...
  hl("StorageClass", {
    fg = p.orange,
  })

  -- Control flow
  hl("Conditional", {
    fg = p.purple,
  })

  hl("Repeat", {
    fg = p.purple,
  })

  hl("Label", {
    fg = p.orange,
  })

  hl("Exception", {
    fg = p.red,
  })

  -- ==================================================
  -- Operators
  -- ==================================================

  hl("Operator", {
    fg = p.fg1,
  })

  -- ==================================================
  -- Types
  -- ==================================================

  hl("Type", {
    fg = p.cyan,
  })

  hl("Structure", {
    fg = p.cyan,
  })

  hl("Typedef", {
    fg = p.cyan,
  })

  -- ==================================================
  -- Preprocessor
  -- ==================================================

  hl("PreProc", {
    fg = p.orange,
  })

  hl("Include", {
    fg = p.orange,
  })

  hl("Define", {
    fg = p.orange,
  })

  hl("Macro", {
    fg = p.orange,
  })

  hl("PreCondit", {
    fg = p.purple,
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

  hl("Todo", {
    fg = p.bg0,
    bg = p.orange,
    bold = true,
  })
end

return M
