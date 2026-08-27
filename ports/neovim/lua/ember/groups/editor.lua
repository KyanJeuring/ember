local M = {}

local p = require("ember.palette")

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(config)
  local bg =
    config.transparent
      and "NONE"
      or p.bg0

  local float_bg =
    config.transparent_floats
      and "NONE"
      or p.bg1

  -- ==================================================
  -- Editor
  -- ==================================================

  hl("Normal", {
    fg = p.fg0,
    bg = bg,
  })

  hl("NormalNC", {
    fg = p.fg0,
    bg = bg,
  })

  hl("SignColumn", {
    bg = bg,
  })

  hl("FoldColumn", {
    fg = p.muted,
    bg = bg,
  })

  hl("LineNr", {
    fg = p.muted,
    bg = bg,
  })

  hl("CursorLineNr", {
    fg = p.orange,
    bg = bg,
    bold = true,
  })

  hl("EndOfBuffer", {
    fg = config.transparent and p.muted or p.bg0,
    bg = bg,
  })

  -- ==================================================
  -- Cursor / selection
  -- ==================================================

  hl("CursorLine", {
    bg = p.bg1,
  })

  hl("Visual", {
    bg = p.bg3,
  })

  hl("MatchParen", {
    fg = p.orange,
    bg = p.bg2,
    bold = true,
  })

  -- ==================================================
  -- Search
  -- ==================================================

  hl("Search", {
    fg = p.bg0,
    bg = p.orange,
  })

  hl("IncSearch", {
    fg = p.bg0,
    bg = p.orange_bright,
    bold = true,
  })

  hl("CurSearch", {
    fg = p.bg0,
    bg = p.orange_bright,
    bold = true,
  })

  -- ==================================================
  -- Windows
  -- ==================================================

  hl("WinSeparator", {
    fg = p.bg3,
    bg = bg,
  })

  hl("VertSplit", {
    link = "WinSeparator",
  })

  -- ==================================================
  -- Floats
  -- ==================================================

  hl("NormalFloat", {
    fg = p.fg0,
    bg = float_bg,
  })

  hl("FloatBorder", {
    fg = p.muted,
    bg = float_bg,
  })

  hl("FloatTitle", {
    fg = p.orange,
    bg = float_bg,
    bold = true,
  })
end

return M
