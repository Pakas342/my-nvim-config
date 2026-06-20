-- Frontend development tools (CSS, Tailwind, React, etc.)
return {
  {
    'brenoprata10/nvim-highlight-colors',
    event = 'VeryLazy',
  },

  -- Auto-close and rename HTML/JSX tags
  {
    'windwp/nvim-ts-autotag',
    event = 'VeryLazy',
    opts = {},
    ft = { 'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'vue', 'xml' },
  },
}
