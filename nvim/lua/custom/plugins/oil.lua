return {
  'stevearc/oil.nvim',
  dependencies = { { 'echasnovski/mini.icons' } },
  keys = {
    { '-', '<CMD>Oil<CR>', desc = 'Open parent directory' },
  },
  config = function()
    require('oil').setup {
      view_options = {
        show_hidden = true,
      },
    }
  end,
  lazy = false,
}
