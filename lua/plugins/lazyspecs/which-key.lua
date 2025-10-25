-- https://github.com/folke/which-key.nvim
return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VeryLazy', -- Sets the loading event to 'VimEnter'
  opts = {
    -- delay between pressing a key and opening which-key (milliseconds)
    -- this setting is independent of vim.o.timeoutlen
    delay = 0,
    icons = {
      -- set icon mappings to true if you have a Nerd Font
      -- default which-key.nvim defined Nerd Font icons
      mappings = true,
      -- keys = vim.g.have_nerd_font and {} or {},
    },
  },
}
