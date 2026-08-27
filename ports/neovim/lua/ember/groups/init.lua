local M = {}

function M.apply(config)
  require("ember.groups.editor").apply(config)
  require("ember.groups.syntax").apply()
  require("ember.groups.treesitter").apply()
  require("ember.groups.lsp").apply()
  require("ember.groups.git").apply()
end

return M
