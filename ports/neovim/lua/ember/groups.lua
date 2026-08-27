local M = {}

local p = require("ember.palette")

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(config)
  local transparent = config.transparent
  local transparent_floats = config.transparent_floats

  local bg = transparent and "NONE" or p.bg0
  local float_bg = transparent_floats and "NONE" or p.bg1
  local float_border_bg = transparent_floats and "NONE" or p.bg1

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
    fg = transparent and p.muted or p.bg0,
    bg = bg,
  })

  -- ==================================================
  -- Cursor / selection
  -- ==================================================

  hl("CursorLine", {
    bg = transparent and "NONE" or p.bg1,
  })

  hl("Visual", {
    bg = p.bg3,
  })

  hl("MatchParen", {
    fg = p.orange,
    bg = transparent and "NONE" or p.bg2,
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
  -- Separators
  -- ==================================================

  hl("WinSeparator", {
    fg = p.bg3,
    bg = bg,
  })

  hl("VertSplit", {
    link = "WinSeparator",
  })

  -- ==================================================
  -- Floating windows
  -- ==================================================

  hl("NormalFloat", {
    fg = p.fg0,
    bg = float_bg,
  })

  hl("FloatBorder", {
    fg = p.bg3,
    bg = float_border_bg,
  })

  hl("FloatTitle", {
    fg = p.orange,
    bg = float_bg,
    bold = true,
  })
end

return M
