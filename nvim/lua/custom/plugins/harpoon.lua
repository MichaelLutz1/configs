return {
  'ThePrimeagen/harpoon',
  dependencies = {},
  lazy = false,
  config = function()
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    -- Setup Harpoon with tabline enabled
    require('harpoon').setup {
      tabline = true,
    }
    vim.cmd 'highlight! HarpoonInactive guibg=NONE guifg=#63698c'
    vim.cmd 'highlight! HarpoonActive guibg=NONE guifg=white'
    vim.cmd 'highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7'
    vim.cmd 'highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7'
    vim.cmd 'highlight! TabLineFill guibg=NONE guifg=white'
  end,
  keys = {
    -- Keymaps for Harpoon actions
    {
      '<leader>a',
      function()
        require('harpoon.mark').add_file()
      end,
      desc = 'Add to Harpoon',
    },
    {
      '<leader>e',
      function()
        require('harpoon.ui').toggle_quick_menu()
      end,
      desc = 'Toggle Harpoon Menu',
    },
    {
      '<leader>j',
      function()
        require('harpoon.ui').nav_file(1)
      end,
      desc = 'Go to Harpoon First',
    },
    {
      '<leader>k',
      function()
        require('harpoon.ui').nav_file(2)
      end,
      desc = 'Go to Harpoon Second',
    },
    {
      '<leader>l',
      function()
        require('harpoon.ui').nav_file(3)
      end,
      desc = 'Go to Harpoon Third',
    },
    {
      '<leader>;',
      function()
        require('harpoon.ui').nav_file(4)
      end,
      desc = 'Go to Harpoon Fourth',
    },

    -- Custom highlight setup for Harpoon (as vim.cmd won't work directly in keys)
  },
}
