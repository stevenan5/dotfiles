-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- User Config
vim.g.user = {
	leaderkey = " ",
	transparent = false,
	event = "UserGroup",
	config = {
		undodir = vim.fn.stdpath("cache") .. "/undo",
	},
}

require("config.globals")
require("config.options")
require("config.keymaps")
require("config.autocmds")

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import/override with your plugins
		{ import = "plugins" },
	},
	install = { colorscheme = { "dracula" } },
	disabled_plugins = {
		"gzip",
		"matchit",
		"mathparen",
		"netrw",
		"netrwPlugin",
		"tarPlugin",
		"tohtml",
		"tutor",
		"zipPlugin",
	},
	rocks = { hererocks = false }, -- you can also just swap hererocks = false to enabled= false to disable the whole luarocks
})
