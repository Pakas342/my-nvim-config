-- Treesitter configuration (nvim-treesitter `main` branch, post-rewrite)
return {
  {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false, -- main branch does not support lazy-loading
    build = ':TSUpdate',
    config = function()
      local ensure_installed = {
        'bash',
        'c',
        'diff',
        'html',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'query',
        'vim',
        'vimdoc',
        'python',
        'javascript',
        'typescript',
        'latex',
      }

      -- Install parsers synchronously on first run; no-op if already installed.
      require('nvim-treesitter').install(ensure_installed)

      -- Filetypes we don't want treesitter-based indent for.
      local indent_disable = { ruby = true }
      -- Filetypes that still need vim's regex highlighting alongside treesitter.
      local regex_hl_extra = { ruby = true }

      vim.api.nvim_create_autocmd('FileType', {
        group = vim.api.nvim_create_augroup('user.treesitter', { clear = true }),
        callback = function(args)
          local buf = args.buf
          local ft = vim.bo[buf].filetype
          local lang = vim.treesitter.language.get_lang(ft)
          if not lang then
            return
          end

          -- Highlighting
          if not pcall(vim.treesitter.start, buf, lang) then
            return
          end
          if regex_hl_extra[ft] then
            vim.bo[buf].syntax = 'ON'
          end

          -- Indent
          if not indent_disable[ft] then
            vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end

          -- Folding (optional — uncomment if you want it)
          vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
          vim.wo.foldmethod = 'expr'
          vim.wo.foldlevel = 99
        end,
      })

      -- Auto-install missing parsers when opening an unknown filetype.
      vim.api.nvim_create_autocmd('FileType', {
        group = vim.api.nvim_create_augroup('user.treesitter.autoinstall', { clear = true }),
        callback = function(args)
          local lang = vim.treesitter.language.get_lang(vim.bo[args.buf].filetype)
          if lang and not vim.tbl_contains(require('nvim-treesitter.config').get_installed(), lang) then
            require('nvim-treesitter').install({ lang }):await(function()
              pcall(vim.treesitter.start, args.buf, lang)
            end)
          end
        end,
      })
    end,
  },
}
