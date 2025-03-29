return {
  'CRAG666/code_runner.nvim',
  config = function()
    require('code_runner').setup {
      mode = 'float',
      float = {
        height = 0.6,
        width = 0.6,
        winblend = 10,
        border = 'rounded',
      },
      filetype = {
        python = 'python3 -u',
        swift = {
          'cd $dir &&',
          'swiftc $fileName -o $fileNameWithoutExt &&',
          '$dir/$fileNameWithoutExt',
        },
        r = 'Rscript',
        go = 'go run .',
      },
    }
    vim.keymap.set('n', '<leader>rr', ':RunCode<CR>', { desc = 'Run Code' })
  end,
}
