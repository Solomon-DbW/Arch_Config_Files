return {
    { "williamboman/mason.nvim",
       config = function()
           require("mason").setup()
       end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "clangd", "lua_ls", "marksman", "pyright", "rust_analyzer", "html", "cssls", "ts_ls", "emmet_ls" },
      })
            
        end
    },
    {
      "neovim/nvim-lspconfig",
      config = function()
        local lspconfig = require("lspconfig")

        -- LSP server setup
        lspconfig.lua_ls.setup({})
        lspconfig.pyright.setup({})

        -- Diagnostic virtual text setup
        vim.diagnostic.config({
          virtual_text = {
            prefix = "󱈸", -- change to whatever you like
            spacing = 2,
          },
          signs = true,
          underline = true,
          update_in_insert = false,
          severity_sort = true,
        })

        -- Optional keymap
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true, silent = true })
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true })
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
      end,
    }
}
