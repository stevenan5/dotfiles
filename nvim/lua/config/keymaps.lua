local keymap = vim.keymap

-- Pane and Window Navigation
keymap.set("n", "<C-h>", "<C-w>h") -- Navigate Left
keymap.set("n", "<C-j>", "<C-w>j") -- Navigate Down
keymap.set("n", "<C-k>", "<C-w>k") -- Navigate Up
keymap.set("n", "<C-l>", "<C-w>l") -- Navigate Right
keymap.set("t", "<C-h>", ":wincmd h") -- Navigate Left
keymap.set("t", "<C-j>", ":wincmd j") -- Navigate Down
keymap.set("t", "<C-k>", ":wincmd k") -- Navigate Up
keymap.set("t", "<C-l>", ":wincmd l") -- Navigate Right
keymap.set("n", "<C-h>", ":TmuxNavigateLeft<cr>") -- Navigate Left
keymap.set("n", "<C-j>", ":TmuxNavigateDown<cr>") -- Navigate Down
keymap.set("n", "<C-k>", ":TmuxNavigateUp<cr>") -- Navigate Up
keymap.set("n", "<C-l>", ":TmuxNavigateRight<cr>") -- Navigate Right

-- Window Management
keymap.set("n", "<leader>sv", "<cmd>vsplit<cr>") -- Split Vertically
keymap.set("n", "<leader>sh", "<cmd>split<cr>") -- Split Horizontally
keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })

-- Format
vim.keymap.set("n", "<leader>cf", function()
	require("conform").format({
		lsp_format = "fallback",
	})
end, { desc = "Format current file" })

-- Tilde Switch
local tildeswitch = function()
	-- get current character
	local col = vim.fn.col(".")
	local curr_char = vim.fn.getline("."):sub(col, col)

	if curr_char == "^" then
		vim.cmd.normal("r_")
	elseif curr_char == "_" then
		vim.cmd.normal("r^")
	elseif curr_char == "(" then
		vim.cmd.normal("r)")
	elseif curr_char == ")" then
		vim.cmd.normal("r(")
	elseif curr_char == "[" then
		vim.cmd.normal("r]")
	elseif curr_char == "]" then
		vim.cmd.normal("r[")
	elseif curr_char == "{" then
		vim.cmd.normal("r}")
	elseif curr_char == "}" then
		vim.cmd.normal("r{")
	elseif curr_char == "+" then
		vim.cmd.normal("r-")
	elseif curr_char == "-" then
		vim.cmd.normal("r+")
	else
		vim.cmd.normal("~")
	end
end
keymap.set("n", "~~", function()
	tildeswitch()
end, { silent = true })
