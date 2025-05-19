local config = function()
	local theme = require("lualine.themes.dracula")

	-- set bg transparency in all modes
	theme.normal.c.bg = nil
	theme.insert.c.bg = nil
	theme.visual.c.bg = nil
	theme.replace.c.bg = nil
	theme.command.c.bg = nil

	require("lualine").setup({
		options = {
			theme = theme,
			globalstatus = true,
		},
		tabline = {
			lualine_a = { "buffers" },
			lualine_z = { "filetype", "encoding" },
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff" },
			lualine_x = { "searchcount", "selectioncount" },
			lualine_y = { "progress", "location" },
			lualine_z = { "diagnostics" },
		},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}
