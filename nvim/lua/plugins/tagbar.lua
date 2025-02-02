return {'preservim/tagbar',
config = function()
            vim.api.nvim_set_keymap('n', '<leader>tb', ':TagbarToggle<CR>', { noremap = true, silent = true })
         end
}
