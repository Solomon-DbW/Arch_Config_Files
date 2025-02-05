return {
	"folke/which-key.nvim",
	config = function()
		require("which-key").setup({
			delay = 1,
			plugins = {
				presets = {
					motions = true,
				},
			},
		})
	end,
}
