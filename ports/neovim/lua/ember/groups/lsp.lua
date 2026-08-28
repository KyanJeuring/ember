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

  -- Variables / members
  link("@lsp.type.variable", "@variable")
  link("@lsp.type.parameter", "@variable.parameter")
  link("@lsp.type.property", "@variable.member")
  link("@lsp.type.event", "@variable.member")

  -- Functions / methods
  link("@lsp.type.function", "@function")
  link("@lsp.type.method", "@function.method")
  link("@lsp.type.macro", "@function.macro")

  -- Types / classes
  link("@lsp.type.type", "@type")
  link("@lsp.type.class", "@type")
  link("@lsp.type.interface", "@type")
  link("@lsp.type.struct", "@type")
  link("@lsp.type.enum", "@type")
  link("@lsp.type.typeParameter", "@type")

  -- Constants
  link("@lsp.type.enumMember", "@constant")

  -- Modules / namespaces
  link("@lsp.type.namespace", "@module")

  -- Attributes / decorators
  link("@lsp.type.decorator", "@attribute")

  -- Literals
  link("@lsp.type.string", "@string")
  link("@lsp.type.number", "@number")
  link("@lsp.type.boolean", "@boolean")
  link("@lsp.type.regexp", "@string.regexp")

  -- Operators
  link("@lsp.type.operator", "@operator")

  -- Comments
  link("@lsp.type.comment", "@comment")

  -- Modifiers describe declarations, so they stay orange.
  link("@lsp.type.modifier", "@keyword.modifier")

  -- Let Tree-sitter own keyword coloring. LSP servers often expose
  -- all keywords as one semantic token, which would otherwise flatten
  -- orange declarations, purple control flow, and red exceptions.
  hl("@lsp.type.keyword", {})

  -- Readonly values are constants.
  link("@lsp.typemod.variable.readonly", "@constant")
  link("@lsp.typemod.property.readonly", "@constant")

  -- ==================================================
  -- Java / JDTLS
  -- ==================================================

  -- Keep Java keywords under Tree-sitter control so `new` / `assert`
  -- can be orange while flow keywords remain purple and exceptions red.
  hl("@lsp.type.keyword.java", {})

  -- Access and declaration modifiers remain orange.
  link("@lsp.type.modifier.java", "@keyword.modifier")

  -- JDTLS-specific semantic token types.
  link("@lsp.type.record.java", "@type")
  link("@lsp.type.recordComponent.java", "@variable.member")
  link("@lsp.type.annotation.java", "@attribute")
  link("@lsp.type.annotationMember.java", "@attribute")

  -- Java final / readonly fields are constants.
  link("@lsp.typemod.variable.readonly.java", "@constant")
  link("@lsp.typemod.property.readonly.java", "@constant")

  -- ==================================================
  -- Semantic modifiers
  -- ==================================================

  hl("@lsp.mod.deprecated", {
    strikethrough = true,
  })
end

return M
