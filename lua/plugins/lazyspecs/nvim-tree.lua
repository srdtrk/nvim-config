-- https://github.com/nvim-tree/nvim-tree.lua
return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup {
        disable_netrw = true,
        hijack_cursor = true,

        diagnostics = {
          enable = true,
          show_on_dirs = true,
          show_on_open_dirs = true,
          debounce_delay = 50,
          severity = {
            min = vim.diagnostic.severity.HINT,
            max = vim.diagnostic.severity.ERROR,
          },
          icons = {
            hint = '',
            info = '',
            warning = '',
            error = '',
          },
        },

        -- set keybindings
        vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>', { desc = '[T]oggle [T]ree' }),
      }
    end,
  },
}
