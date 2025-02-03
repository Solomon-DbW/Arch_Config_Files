return {'tpope/vim-fugitive',
config = function()
            vim.keymap.set("n", "<leader>gm", vim.cmd.Git)
         end
}
