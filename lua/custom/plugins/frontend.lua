-- Frontend development tools (CSS, Tailwind, React, etc.)
return {
  {
    'brenoprata10/nvim-highlight-colors',
    event = 'VeryLazy',
  },
  --  Better Tailwind IntelliSense with sorting and formatting
  {
    'luckasRanarison/tailwind-tools.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    event = 'VeryLazy',
    opts = {
      document_color = {
        enabled = true, -- can be toggled by commands
        kind = 'inline', -- "inline" | "foreground" | "background"
        inline_symbol = '󰝤 ', -- only used in inline mode
        debounce = 200, -- in milliseconds, only applied in insert mode
      },
      conceal = {
        enabled = false, -- can be toggled by commands
        min_length = nil, -- only conceal classes exceeding the provided length
        symbol = '󱏿', -- only a single character is allowed
        highlight = { -- extmark highlight options, see :h 'extmark'
          fg = '#38BDF8',
        },
      },
      custom_filetypes = {}, -- see the extension section to learn how it works
    },
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
          enable_close = true,           -- Auto close tags
          enable_rename = true,          -- Auto rename pairs of tags
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
