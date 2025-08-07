-- Basic Keymaps
--  See `:help vim.keymap.set()`

-- Toggle format on save keymap
vim.keymap.set('n', '<leader>tf', ':ToggleFormatOnSave<CR>', { desc = '[T]oggle [F]ormat on save' })

-- Toggle copilot keymap
vim.keymap.set('n', '<leader>tc', ':ToggleCopilot<CR>', { desc = '[T]oggle [C]opilot' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = 'Show diagnostic details' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
vim.keymap.set('n', '<PageUp>', '<cmd>echo "Te salvaaaaste"<CR>')
vim.keymap.set('i', '<PageUp>', '<cmd>echo "Te salvaaaaste"<CR>')
vim.keymap.set('n', '<PageDown>', '<cmd>echo "Te salvaaaaste"<CR>')
vim.keymap.set('i', '<PageDown>', '<cmd>echo "Te salvaaaaste"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Keybind to navigate a quicklist with the leader key
vim.keymap.set('n', '<leader>n', '<cmd>cnext<CR>', { desc = 'Next quickfix item' })
vim.keymap.set('n', '<leader>p', '<cmd>cprev<CR>', { desc = 'Prev quickfix item' })

-- Keybinds to reposition the cursor after ctrl d or ctrl u
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Jump half of the window down, and center cursor' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Jump half of the window up, and center cursor' })

-- Keybind for nvim oil openning
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

