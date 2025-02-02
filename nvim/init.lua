require("config.lazy")
require("vim-options")
-- vim.cmd.colorscheme "one_monokai"

-- vim.cmd("set expandtab")
-- vim.cmd("set tabstop=4")
-- vim.cmd("set shiftwidth=2")
-- vim.cmd("set softtabstop=2")
-- vim.cmd("set autoindent")
-- vim.cmd("set smartindent")
-- vim.cmd("set relativenumber")

-- Telescope config
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
--
-- vim.keymap.set('n', '<leader>nt', ':Neotree<CR>') -- <CR> = Enter


-- Treesitter config
-- local configs = require("nvim-treesitter.configs")
-- configs.setup({
--         ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "cpp", "rust", "python" },
--         sync_install = false,
--         highlight = { enable = true },
--         indent = { enable = true },  
--       })
