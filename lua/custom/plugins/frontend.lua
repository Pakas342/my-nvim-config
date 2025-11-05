-- Frontend development tools (CSS, Tailwind, React, etc.)
return {
  {
    'brenoprata10/nvim-highlight-colors',
    event = 'VeryLazy',
  },

  -- Auto-close and rename HTML/JSX tags
  {
    'windwp/nvim-ts-autotag',
    dependencies = 'nvim-treesitter/nvim-treesitter',
    event = 'VeryLazy',
    config = function()
      require('nvim-ts-autotag').setup {
        opts = {
          -- Defaults
          enable_close = true, -- Auto close tags
          enable_rename = true, -- Auto rename pairs of tags
          enable_close_on_slash = false, -- Auto close on trailing </
        },
        -- Also override individual filetype configs
        per_filetype = {
          ['html'] = {
            enable_close = false,
          },
        },
      }
    end,
    ft = { 'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'vue', 'xml' },
  },
}
