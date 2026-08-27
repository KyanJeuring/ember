local M = {}

M.config = {
  transparent = false,
  transparent_floats = false,
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend(
    "force",
    M.config,
    opts or {}
  )
end

function M.load()
  vim.cmd("highlight clear")

  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"

  vim.g.colors_name = "ember"

  require("ember.groups").apply(M.config)
end

return M
