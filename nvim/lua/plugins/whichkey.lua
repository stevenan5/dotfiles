return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
		spec = {
			{
				"<leader>t",
				"<cmd>NvimTreeToggle<cr>",
				desc = "Explorer Toggle",
				mode = "n",
			},
			{
				"<leader>r",
				"<cmd>NvimTreeFocus<cr>",
				desc = "Explorer Focus",
				mode = "n",
			},
			{
				"<leader>fk",
				":Telescope keymaps<cr>",
				desc = "Telescope Keymaps",
				mode = "n",
			},
			{
				"<leader>fh",
				":Telescope help_tags<cr>",
				desc = "Telescope Help Tags",
				mode = "n",
			},
			{
				"<leader>ff",
				":Telescope find_files<cr>",
				desc = "Telescope Find Files",
				mode = "n",
			},
			{
				"<leader>fg",
				":Telescope live_grep<cr>",
				desc = "Telescope Grep",
				mode = "n",
			},
			{
				"<leader>fb",
				":Telescope buffers<cr>",
				desc = "Telescope Buffers",
				mode = "n",
			},
		}
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
