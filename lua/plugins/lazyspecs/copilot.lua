-- https://github.com/github/copilot.vim
return {
  {
    'github/copilot.vim',
    branch = 'release',
    config = function()
      -- Use CTRL + TAB to accept copilot suggestion
      -- vim.keymap.set('i', '<S-Tab>', 'copilot#Accept("\\<CR>")', {expr = true, silent = true, noremap = true})
    end,
  },
}
