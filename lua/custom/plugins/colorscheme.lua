-- Colorscheme configuration
return {
  -- colorschemes config
  -- example of colorschme config
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    -- init = function()
    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    --  vim.cmd.colorscheme 'tokyonight-night'

    --  -- You can configure highlights by doing something like:
    --  vim.cmd.hi 'Comment gui=none'
    -- end,
  },
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
  },
  {
    'Shatur/neovim-ayu',
    priority = 1000,
  },
  {
    'marko-cerovac/material.nvim',
    priority = 1000,
  },
  -- Lovely plugin to easily change colorschemes in nvim
  {
    'zaldih/themery.nvim',
    lazy = false,
    config = function()
      require('themery').setup {
        themes = {
          {
            name = 'Gruvbox Dark',
            colorscheme = 'gruvbox',
            before = [[
            require('gruvbox').setup({ contrast = 'hard' })
          ]],
          },
          {
            name = 'Tokyo Night',
            colorscheme = 'tokyonight',
            before = [[
            require('tokyonight').setup({ style = 'night' })
          ]],
          },
          {
            name = 'Ayu Dark',
            colorscheme = 'ayu-dark',
          },
          {
            name = 'Material Deep Ocean',
            colorscheme = 'material',
            before = [[
            vim.g.material_style = 'deep ocean'
          ]],
          },
        },
      }
    end,
  },
}