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
    fg = p.fg0,
  })

  hl("@variable.parameter.builtin", {
    fg = p.orange_bright,
  })

  hl("@variable.member", {
    fg = p.fg1,
  })

  -- ==================================================
  -- Constants
  -- ==================================================

  hl("@constant", {
    fg = p.yellow,
  })

  hl("@constant.builtin", {
    fg = p.yellow,
  })

  hl("@constant.macro", {
    fg = p.yellow,
  })

  -- ==================================================
  -- Modules / namespaces
  -- ==================================================

  hl("@module", {
    fg = p.fg1,
  })

  hl("@module.builtin", {
    fg = p.fg1,
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
    fg = p.fg1,
    italic = true,
  })

  hl("@string.regexp", {
    fg = p.fg0,
  })

  hl("@string.escape", {
    fg = p.orange_bright,
  })

  hl("@string.special", {
    fg = p.fg0,
  })

  hl("@string.special.symbol", {
    fg = p.fg0,
  })

  hl("@string.special.path", {
    fg = p.fg0,
  })

  hl("@string.special.url", {
    fg = p.blue,
    underline = true,
  })

  -- ==================================================
  -- Characters / literals
  -- ==================================================

  link("@character", "Character")

  hl("@character.special", {
    fg = p.orange_bright,
  })

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

  hl("@constructor", {
    fg = p.cyan,
  })

  -- ==================================================
  -- Attributes / properties
  -- ==================================================

  hl("@attribute", {
    fg = p.yellow,
  })

  hl("@attribute.builtin", {
    fg = p.yellow,
  })

  hl("@property", {
    fg = p.fg1,
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
    fg = p.blue,
  })

  hl("@function.method", {
    fg = p.blue,
  })

  hl("@function.method.call", {
    fg = p.blue,
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

  -- General language structure / declarations
  hl("@keyword", {
    fg = p.orange,
  })

  hl("@keyword.function", {
    fg = p.orange,
  })

  hl("@keyword.import", {
    fg = p.orange,
  })

  hl("@keyword.type", {
    fg = p.orange,
  })

  hl("@keyword.modifier", {
    fg = p.orange,
  })

  hl("@keyword.directive", {
    fg = p.orange,
  })

  hl("@keyword.directive.define", {
    fg = p.orange,
  })

  hl("@keyword.special", {
    fg = p.orange,
  })

  -- Logic / control flow
  hl("@keyword.conditional", {
    fg = p.purple,
  })

  hl("@keyword.conditional.ternary", {
    fg = p.purple,
  })

  hl("@keyword.repeat", {
    fg = p.purple,
  })

  hl("@keyword.return", {
    fg = p.purple,
  })

  hl("@keyword.coroutine", {
    fg = p.purple,
  })

  hl("@keyword.operator", {
    fg = p.purple,
  })

  hl("@keyword.logic", {
    fg = p.purple,
  })

  -- Errors / exceptions
  hl("@keyword.exception", {
    fg = p.red,
  })

  hl("@keyword.debug", {
    fg = p.red,
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
    fg = p.fg1,
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
  -- Markup / HTML
  -- ==================================================

  hl("@tag", {
    fg = p.orange,
  })

  hl("@tag.builtin", {
    fg = p.orange,
  })

  hl("@tag.attribute", {
    fg = p.yellow,
  })

  hl("@tag.delimiter", {
    fg = p.orange_dark,
  })

  hl("@markup.heading", {
    fg = p.orange,
    bold = true,
  })

  hl("@markup.strong", {
    fg = p.fg0,
    bold = true,
  })

  hl("@markup.italic", {
    fg = p.fg0,
    italic = true,
  })

  hl("@markup.strikethrough", {
    fg = p.muted,
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
    fg = p.fg0,
  })

  hl("@markup.raw.block", {
    fg = p.fg0,
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

  -- ==================================================
  -- YAML
  -- ==================================================

  hl("@property.yaml", {
    fg = p.orange,
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
end

return M
