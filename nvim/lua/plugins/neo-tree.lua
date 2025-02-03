return {"nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
      dependencies = {"nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",},
  config = function()
    vim.keymap.set('n', '<leader>nt', ':Neotree<CR>') -- <CR> = Enter
    -- Close Neotree by moving to the window and pressing 'q', ensuring that we don't close the window we're in
    vim.keymap.set('n', '<leader>nc', ':Neotree close<CR>')
  end
    }

