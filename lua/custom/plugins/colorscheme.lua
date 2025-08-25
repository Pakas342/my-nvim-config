-- Colorscheme configuration
return {
  -- Lovely plugin to easily change colorschemes in nvim. THE TOP PART IS STILL REQUIRED.
  {
    'zaldih/themery.nvim',
    lazy = false,
    dependencies = { 'folke/tokyonight.nvim', 'rebelot/kanagawa.nvim', 'sainnhe/everforest', 'rose-pine/neovim' },
    config = function()
      require('themery').setup {
        themes = {
          {
            name = 'Tokyo Night',
            colorscheme = 'tokyonight',
            before = [[
            require('tokyonight').setup({ style = 'night' })
          ]],
          },
          {
            name = 'Kanagawa Wave',
            colorscheme = 'kanagawa-wave',
          },
          {
            name = 'Kanagawa Dragon',
            colorscheme = 'kanagawa-dragon',
          },
          {
            name = 'Everforest',
            colorscheme = 'everforest',
          },
          {
            name = 'Rose Pine',
            colorscheme = 'rose-pine-main',
          },
          {
            name = 'Rose Pine moon',
            colorscheme = 'rose-pine-moon',
          },
        },
      }
    end,
  },
}
