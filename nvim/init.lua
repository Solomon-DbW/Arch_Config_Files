require('config.lazy')
require("vim-options")

-- FOR LOADING HTML IN BRAVE --
vim.api.nvim_create_user_command('OpenInBrave', function()
    local file = vim.fn.expand('%:p')
    if file:match('%.html$') then
        vim.fn.jobstart({'brave', file}, {detach = true})
    else
        print("Not an HTML file")
    end
end, {})

-- Keybinding: Press <leader>o to open in Brave
vim.api.nvim_set_keymap('n', '<leader>o', ':OpenInBrave<CR>', { noremap = true, silent = true })

