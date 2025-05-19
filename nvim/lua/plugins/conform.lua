return {
	"stevearc/conform.nvim",
	-- dependencies = {
	-- 	"williamboman/mason.nvim",
	-- },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			python = { "ruff_format" },
			tex = { "tex-fmt", "bibtex-tidy" },
			-- You can customize some of the format options for the filetype (:help conform.format)
			-- rust = { "rustfmt" },
			-- Conform will run the first available formatter
			-- javascript = { "prettierd", "prettier", stop_after_first = true },
			-- typescript = { "prettierd", "prettier", stop_after_first = true },
		},
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 500,
			lsp_format = "fallback",
		},
		log_level = vim.log.levels.ERROR,
		-- Conform will notify you when a formatter errors
		notify_on_error = true,
	},
}
