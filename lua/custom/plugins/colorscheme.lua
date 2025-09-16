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
            require('tokyonight').setup({ style = 'night', transparent = true })
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
            before = [[
            vim.g.everforest_transparent_background = 2
            ]],
          },
          {
            name = 'Rose Pine',
            colorscheme = 'rose-pine-main',
            before = [[
            require('rose-pine').setup({disable_background = true})
          ]],
          },
          {
            name = 'Rose Pine moon',
            colorscheme = 'rose-pine-moon',
            before = [[
            require('rose-pine').setup({disable_background = true })
          ]],
          },
        },
      }
    end,
  },
}
