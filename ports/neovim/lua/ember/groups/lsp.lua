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
  -- Diagnostics
  -- ==================================================

  hl("DiagnosticError", {
    fg = p.red,
  })

  hl("DiagnosticWarn", {
    fg = p.yellow,
  })

  hl("DiagnosticInfo", {
    fg = p.blue,
  })

  hl("DiagnosticHint", {
    fg = p.cyan,
  })

  hl("DiagnosticOk", {
    fg = p.green,
  })

  hl("DiagnosticUnderlineError", {
    undercurl = true,
    sp = p.red,
  })

  hl("DiagnosticUnderlineWarn", {
    undercurl = true,
    sp = p.yellow,
  })

  hl("DiagnosticUnderlineInfo", {
    undercurl = true,
    sp = p.blue,
  })

  hl("DiagnosticUnderlineHint", {
    undercurl = true,
    sp = p.cyan,
  })

  hl("DiagnosticUnderlineOk", {
    undercurl = true,
    sp = p.green,
  })

  -- ==================================================
  -- LSP semantic tokens
  -- ==================================================

  link("@lsp.type.variable", "@variable")
  link("@lsp.type.parameter", "@variable.parameter")
  link("@lsp.type.property", "@variable.member")

  link("@lsp.type.function", "@function")
  link("@lsp.type.method", "@function.method")

  link("@lsp.type.class", "@type")
  link("@lsp.type.interface", "@type")
  link("@lsp.type.struct", "@type")
  link("@lsp.type.type", "@type")
  link("@lsp.type.typeParameter", "@type")

  link("@lsp.type.enum", "@type")
  link("@lsp.type.enumMember", "@constant")

  link("@lsp.type.namespace", "@module")

  link("@lsp.type.decorator", "@attribute")

  link("@lsp.type.macro", "@function.macro")

  link("@lsp.type.string", "@string")
  link("@lsp.type.number", "@number")
  link("@lsp.type.boolean", "@boolean")

  link("@lsp.type.comment", "@comment")


  -- ==================================================
  -- Java
  -- ==================================================

  hl("@lsp.type.keyword.java", {
    fg = p.purple,
  })

  hl("@lsp.type.modifier.java", {
    fg = p.purple,
  })

  hl("@lsp.type.variable.java", {
    fg = p.fg0,
  })

  hl("@lsp.type.parameter.java", {
    fg = p.fg0,
  })

  hl("@lsp.type.property.java", {
    fg = p.fg1,
  })

  hl("@lsp.type.class.java", {
    fg = p.cyan,
  })

  hl("@lsp.type.interface.java", {
    fg = p.cyan,
  })

  hl("@lsp.type.struct.java", {
    fg = p.cyan,
  })

  hl("@lsp.type.type.java", {
    fg = p.cyan,
  })

  hl("@lsp.type.typeParameter.java", {
    fg = p.cyan,
  })

  hl("@lsp.type.enum.java", {
    fg = p.cyan,
  })

  hl("@lsp.type.record.java", {
    fg = p.cyan,
  })

  hl("@lsp.type.enumMember.java", {
    fg = p.yellow,
  })

  hl("@lsp.type.namespace.java", {
    fg = p.fg1,
  })

  hl("@lsp.type.method.java", {
    fg = p.blue,
  })

  hl("@lsp.typemod.method.declaration.java", {
    fg = p.blue,
  })

  hl("@lsp.typemod.method.static.java", {
    fg = p.blue,
  })

  hl("@lsp.typemod.property.static.java", {
    fg = p.yellow,
  })

  hl("@lsp.typemod.variable.static.java", {
    fg = p.yellow,
  })

  hl("@lsp.typemod.property.readonly.java", {
    fg = p.yellow,
  })

  hl("@lsp.typemod.variable.readonly.java", {
    fg = p.yellow,
  })

  hl("@lsp.type.decorator.java", {
    fg = p.yellow,
  })

  -- ==================================================
  -- Semantic modifiers
  -- ==================================================

  hl("@lsp.mod.deprecated", {
    strikethrough = true,
  })
end

return M
