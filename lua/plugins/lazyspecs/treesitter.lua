return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  branch = 'main',
  -- [[ Configure Treesitter ]] See `:help nvim-treesitter-intro`
  config = function()
    local parsers = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' }
    local ts = require('nvim-treesitter')
    ts.setup {}
    ts.install(parsers)

    local ts_features = vim.api.nvim_create_augroup('nvim-treesitter-features', { clear = true })
    vim.api.nvim_create_autocmd('FileType', {
      group = ts_features,
      pattern = parsers,
      callback = function(event)
        -- enables syntax highlighting and other treesitter features
        vim.treesitter.start(event.buf)
        -- enables treesitter based folds
        -- for more info on folds see `:help folds`
        -- vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        -- vim.wo[0][0].foldmethod = 'expr'
        -- enables treesitter based indentation
        if vim.bo[event.buf].filetype ~= 'ruby' then
          vim.bo[event.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
  -- There are additional nvim-treesitter modules that you can use to interact
  -- with nvim-treesitter. You should go explore a few and see what interests you:
  --
  --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
  --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects (using the `main` branch)
}
