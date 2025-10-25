-- https://github.com/catppuccin/nvim
return {
  {
    'catppuccin/nvim',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        term_colors = true,
        color_overrides = {
          mocha = {
            base = '#000000',
            mantle = '#0f0f0f',
            crust = '#000000',
          },
        },
      }

      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
