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
  -- Semantic modifiers
  -- ==================================================

  hl("@lsp.mod.deprecated", {
    strikethrough = true,
  })
end

return M
