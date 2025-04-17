return {
	"tanvirtin/monokai.nvim",
	config = function()
		vim.cmd("colorscheme monokai") -- Apply the Monokai color scheme
		local orange = "#FFC700"
 -- @string

		vim.api.nvim_set_hl(0, "@string", { fg = orange })
		vim.api.nvim_set_hl(0, "@type", { fg = "#FFFFFF" })
		-- vim.api.nvim_set_hl(0, "@function", { fg = orange })
		-- vim.api.nvim_set_hl(0, "@function.call", { fg = orange })
		-- vim.api.nvim_set_hl(0, "@function.builtin", { fg = orange })
		-- vim.api.nvim_set_hl(0, "@method", { fg = orange })
	end,
}
