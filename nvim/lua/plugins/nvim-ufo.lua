return {
	"kevinhwang91/nvim-ufo",
	dependencies = "kevinhwang91/promise-async",
	event = "BufReadPost",
	config = function()
		vim.o.foldcolumn = "1"
		vim.o.foldlevel = 99
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true

		-- vim.o.number = true
		-- vim.o.relativenumber = false

		vim.opt.fillchars = {
			foldopen = "",
			foldclose = "",
			fold = " ",
			foldsep = " ",
			diff = "╱",
			eob = "1",
		}

		require("ufo").setup({
			provider_selector = function(bufnr, filetype, buftype)
				return { "treesitter", "indent" }
			end,
			open_fold_hl_timeout = 400,
			enable_get_fold_virt_text = true,
			-- fold_virt_text_handler = function(virtText, lnum, endLnum, width, truncate)
			-- 	-- just return the fold icon without numbers
			-- 	return { { " 󰁂 ", "Folded" } } -- you can change the icon here too!
			-- end,
			close_fold_kinds_for_ft = {
				default = { "imports", "comment" },
			},
		})
	end,
}
