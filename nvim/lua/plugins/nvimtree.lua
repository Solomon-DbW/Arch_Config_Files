 return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
    vim.keymap.set('n', '<leader>nt', ':NvimTreeToggle<CR>') -- <CR> = Enter
    -- Close Neotree by moving to the window and pressing 'q', ensuring that we don't close the window we're in
    -- vim.keymap.set('n', '<leader>nc', ':NvimTreeCollapse<CR>')
  end
    }

