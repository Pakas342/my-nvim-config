return {
  -- Avante AI with Claude Sonnet 4 (May 2025 - Latest & Best!)
  'yetone/avante.nvim',
  event = 'VeryLazy',
  version = false, -- Never set this value to "*"! Never!
  lazy = false, -- Important for proper build

  -- CRITICAL: Increase git timeout since build takes >2 minutes
  build = function()
    -- For WSL2, use make (not PowerShell)
    vim.cmd '!make BUILD_FROM_SOURCE=false'
  end,

  ---@module 'avante'
  ---@type avante.Config
  opts = {
    -- REQUIRED: Configure a provider (can only have ONE provider active)
    provider = 'claude', -- PICK ONE: 'claude' OR 'openai' (not both!)

    -- NEW FORMAT: All providers go under 'providers' field
    providers = {
      -- Claude Sonnet 4 configuration (UPDATED TO NEW FORMAT!)
      claude = {
        endpoint = 'https://api.anthropic.com/v1',
        model = 'claude-sonnet-4-20250514', -- Claude Sonnet 4 - superior to 3.7!
        timeout = 30000,
        -- Note: Claude Sonnet 4 supports up to 1M context tokens (5x more than 3.7!)
        -- API key will be prompted or set via environment variable ANTHROPIC_API_KEY
        extra_request_body = {
          -- All request body parameters go here now
          temperature = 0,
          max_tokens = 20480,
        },
      },

      -- Alternative: OpenAI configuration (COMMENTED OUT since you can only use one)
      -- To use OpenAI instead, change provider to 'openai' and uncomment below:
      openai = {
        endpoint = 'https://api.openai.com/v1',
        model = 'gpt-4o', -- This model exists and is available
        timeout = 30000,
        -- API key will be prompted or set via environment variable OPENAI_API_KEY
        extra_request_body = {
          temperature = 0,
          max_tokens = 20480,
        },
      },
    },

    -- WSL2 specific settings
    windows = {
      width = 30,
      wrap = true,
    },

    -- Improve file selector for WSL2
    file_selector = {
      provider = 'telescope', -- or "fzf", "mini.pick"
    },

    -- Input provider (helps with WSL2 compatibility)
    input = {
      provider = 'dressing',
    },
  },

  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',

    -- Essential dependencies
    'stevearc/dressing.nvim', -- Better input UI
    'nvim-telescope/telescope.nvim', -- File selector
    'hrsh7th/nvim-cmp', -- Autocompletion

    -- Optional but recommended
    'echasnovski/mini.pick', -- Alternative file selector
    'ibhagwan/fzf-lua', -- Alternative file selector
    'folke/snacks.nvim', -- Alternative input provider
    'nvim-tree/nvim-web-devicons', -- Icons

    {
      -- Image support
      'HakonHarnes/img-clip.nvim',
      event = 'VeryLazy',
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- Important for WSL2
          use_absolute_path = true,
        },
      },
    },

    {
      -- Markdown rendering
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { 'markdown', 'Avante' },
      },
      ft = { 'markdown', 'Avante' },
    },
  },
}
