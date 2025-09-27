-- Git-related plugins
return {
  -- See `:help gitsigns` to understand what the configuration keys do
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {},
  },

  -- Git fugitive for git operations
  {
    'tpope/vim-fugitive',
    event = 'VeryLazy',
  },
}

