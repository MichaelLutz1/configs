-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--[[
return {
  "PLUGIN_NAME",
  -- optional: lazy-loading trigger
  event = "VeryLazy", -- or "BufReadPost", "InsertEnter", etc.

  -- optional: dependencies
  dependencies = { 
    { "SOME_DEPENDENCY" }
  },

  -- keymaps (registered early by lazy)
  keys = {
    { "KEY", "COMMAND", desc = "Description" },
  },

  -- plugin setup
  config = function()
    require("plugin").setup({
      -- your options here
})
  end,
}
]]

return {}
