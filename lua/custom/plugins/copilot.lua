-- Copilot autocomplition plugin
return {
  {
    'github/copilot.vim',
    event = 'VeryLazy',
    config = function()
      vim.cmd 'Copilot disable'
      -- NOTE: this is done for the toggle copilot
      vim.g.copilot_enable = false
      vim.api.nvim_create_user_command('ToggleCopilot', function()
        vim.g.copilot_enable = not vim.g.copilot_enable
        if vim.g.copilot_enable then
          vim.cmd 'Copilot enable'
        else
          vim.cmd 'Copilot disable'
        end
        print('Copilot autocompletion: ' .. (vim.g.copilot_enable and 'enabled' or 'disabled'))
      end, {})
    end,
  },
}
