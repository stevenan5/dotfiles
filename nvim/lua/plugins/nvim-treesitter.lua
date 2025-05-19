local config = function()
	require("nvim-treesitter.configs").setup({
		build = ":TSUpdate",
		indent = {
			enable = true,
		},
		autotag = {
			enable = true,
		},
		ensure_installed = {
			"markdown",
			"json",
			"yaml",
			"bash",
			"lua",
			"gitignore",
			"python",
			"latex",
		},
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<Enter>", -- set to `false` to disable one of the mappings
				node_incremental = "<Enter>",
				scope_incremental = false,
				node_decremental = "<Backspace>",
			},
		},
	})
end

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	config = config,
}
