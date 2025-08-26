-- Vim options and settings
-- NOTE: THIS IS DONE BECAUSE FUCKING REMIXJS
vim.opt.isfname:append '@-@' -- Allow @ in filenames
vim.opt.isfname:append '(,)' -- Allow parentheses in filenames
vim.opt.termguicolors = true

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- NOTE: this is done for the toggle auto-save
vim.g.format_on_save_enabled = true
vim.api.nvim_create_user_command('ToggleFormatOnSave', function()
  vim.g.format_on_save_enabled = not vim.g.format_on_save_enabled
  print('Format on save: ' .. (vim.g.format_on_save_enabled and 'enabled' or 'disabled'))
end, {})

-- NOTE: this is done for the toggle copilot
vim.g.copilot_enable = true
vim.api.nvim_create_user_command('ToggleCopilot', function()
  vim.g.copilot_enable = not vim.g.copilot_enable
  if vim.g.copilot_enable then
    vim.cmd 'Copilot enable'
  else
    vim.cmd 'Copilot disable'
  end
  print('Copilot autocompletion: ' .. (vim.g.copilot_enable and 'enabled' or 'disabled'))
end, {})

-- NOTE: This is done to toggle the spelling checker
vim.opt.spell = false
vim.opt.spelllang = { 'en' }
vim.api.nvim_create_user_command('ToggleSpelling', function()
  vim.opt.spell = not vim.o.spell
  print('Spell checking: ' .. (vim.o.spell and 'enabled' or 'disabled'))
end, {})

vim.opt.fileformat = 'unix'
vim.opt.fileformats = 'unix,dos,mac'

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
