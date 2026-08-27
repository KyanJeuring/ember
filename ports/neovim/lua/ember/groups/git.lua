local M = {}

local p = require("ember.palette")

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply()
  -- Added lines
  hl("GitSignsAdd", {
    fg = p.green,
  })

  -- Changed lines
  hl("GitSignsChange", {
    fg = p.yellow,
  })

  -- Deleted lines
  hl("GitSignsDelete", {
    fg = p.red,
  })

  -- Staged
  hl("GitSignsStagedAdd", {
    fg = p.green,
  })

  hl("GitSignsStagedChange", {
    fg = p.yellow,
  })

  hl("GitSignsStagedDelete", {
    fg = p.red,
  })
end

return M
