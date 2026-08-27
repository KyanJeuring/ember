local M = {}

local p = require("ember.palette")

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

local function link(group, target)
  hl(group, {
    link = target,
  })
end

function M.apply()
  -- ==================================================
  -- Variables
  -- ==================================================

  hl("@variable", {
    fg = p.fg0,
  })

  hl("@variable.builtin", {
    fg = p.orange,
  })

  hl("@variable.parameter", {
    fg = p.fg1,
  })

  hl("@variable.parameter.builtin", {
    fg = p.orange_bright,
  })

  hl("@variable.member", {
    fg = p.cyan,
  })

  -- ==================================================
  -- Constants
  -- ==================================================

  hl("@constant", {
    fg = p.orange,
  })

  hl("@constant.builtin", {
    fg = p.orange_bright,
  })

  hl("@constant.macro", {
    fg = p.orange,
  })

  -- ==================================================
  -- Modules / namespaces
  -- ==================================================

  hl("@module", {
    fg = p.cyan,
  })

  hl("@module.builtin", {
    fg = p.cyan,
    italic = true,
  })

  hl("@label", {
    fg = p.orange,
  })

  -- ==================================================
  -- Strings
  -- ==================================================

  link("@string", "String")

  hl("@string.documentation", {
    fg = p.green,
    italic = true,
  })

  hl("@string.regexp", {
    fg = p.cyan,
  })

  hl("@string.escape", {
    fg = p.orange_bright,
  })

  hl("@string.special", {
    fg = p.yellow,
  })

  hl("@string.special.symbol", {
    fg = p.orange,
  })

  hl("@string.special.path", {
    fg = p.green,
  })

  hl("@string.special.url", {
    fg = p.blue,
    underline = true,
  })

  -- ==================================================
  -- Literals
  -- ==================================================

  link("@character", "Character")
  link("@character.special", "SpecialChar")

  link("@boolean", "Boolean")
  link("@number", "Number")
  link("@number.float", "Float")

  -- ==================================================
  -- Types
  -- ==================================================

  hl("@type", {
    fg = p.cyan,
  })

  hl("@type.builtin", {
    fg = p.cyan,
    italic = true,
  })

  hl("@type.definition", {
    fg = p.cyan,
  })

  hl("@attribute", {
    fg = p.yellow,
  })

  hl("@attribute.builtin", {
    fg = p.orange,
  })

  hl("@property", {
    fg = p.cyan,
  })

  -- ==================================================
  -- Functions
  -- ==================================================

  hl("@function", {
    fg = p.blue,
  })

  hl("@function.builtin", {
    fg = p.blue,
    italic = true,
  })

  hl("@function.call", {
    fg = p.blue,
  })

  hl("@function.macro", {
    fg = p.orange,
  })

  hl("@function.method", {
    fg = p.blue,
  })

  hl("@function.method.call", {
    fg = p.blue,
  })

  hl("@constructor", {
    fg = p.cyan,
  })

  -- ==================================================
  -- Operators
  -- ==================================================

  hl("@operator", {
    fg = p.fg1,
  })

  -- ==================================================
  -- Keywords
  -- ==================================================

  hl("@keyword", {
    fg = p.purple,
  })

  hl("@keyword.coroutine", {
    fg = p.purple,
  })

  hl("@keyword.function", {
    fg = p.purple,
  })

  hl("@keyword.operator", {
    fg = p.purple,
  })

  hl("@keyword.import", {
    fg = p.purple,
  })

  hl("@keyword.type", {
    fg = p.purple,
  })

  hl("@keyword.modifier", {
    fg = p.purple,
  })

  hl("@keyword.repeat", {
    fg = p.purple,
  })

  hl("@keyword.return", {
    fg = p.purple,
  })

  hl("@keyword.debug", {
    fg = p.red,
  })

  hl("@keyword.exception", {
    fg = p.red,
  })

  hl("@keyword.conditional", {
    fg = p.purple,
  })

  hl("@keyword.conditional.ternary", {
    fg = p.purple,
  })

  hl("@keyword.directive", {
    fg = p.orange,
  })

  hl("@keyword.directive.define", {
    fg = p.orange,
  })

  -- ==================================================
  -- Punctuation
  -- ==================================================

  hl("@punctuation.delimiter", {
    fg = p.fg1,
  })

  hl("@punctuation.bracket", {
    fg = p.fg1,
  })

  hl("@punctuation.special", {
    fg = p.orange,
  })

  -- ==================================================
  -- Comments
  -- ==================================================

  link("@comment", "Comment")

  hl("@comment.documentation", {
    fg = p.muted,
    italic = true,
  })

  hl("@comment.error", {
    fg = p.red,
    bold = true,
  })

  hl("@comment.warning", {
    fg = p.yellow,
    bold = true,
  })

  hl("@comment.todo", {
    fg = p.orange,
    bold = true,
  })

  hl("@comment.note", {
    fg = p.blue,
    bold = true,
  })

  -- ==================================================
  -- Diff
  -- ==================================================

  hl("@diff.plus", {
    fg = p.green,
  })

  hl("@diff.minus", {
    fg = p.red,
  })

  hl("@diff.delta", {
    fg = p.yellow,
  })

  -- ==================================================
  -- Markup
  -- ==================================================

  hl("@markup.heading", {
    fg = p.orange,
    bold = true,
  })

  hl("@markup.strong", {
    bold = true,
  })

  hl("@markup.italic", {
    italic = true,
  })

  hl("@markup.strikethrough", {
    strikethrough = true,
  })

  hl("@markup.link", {
    fg = p.blue,
  })

  hl("@markup.link.label", {
    fg = p.cyan,
  })

  hl("@markup.link.url", {
    fg = p.blue,
    underline = true,
  })

  hl("@markup.raw", {
    fg = p.green,
  })

  hl("@markup.raw.block", {
    fg = p.green,
  })

  hl("@markup.list", {
    fg = p.orange,
  })

  hl("@markup.list.checked", {
    fg = p.green,
  })

  hl("@markup.list.unchecked", {
    fg = p.muted,
  })
end

return M
