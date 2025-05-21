local config = function()
	local npairs = require("nvim-autopairs")
	local Rule = require("nvim-autopairs.rule")
	local cond = require("nvim-autopairs.conds")
	npairs.setup({ enable_check_bracket_line = false })
	npairs.get_rule("("):with_pair(cond.not_before_text("lr"))
	npairs.get_rule("["):with_pair(cond.not_before_text("lr"))
	npairs.get_rule("{"):with_pair(cond.not_before_text("lr"))
end

return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = config,
}
