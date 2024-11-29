return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettier" },
				javascriptreact = { "prettier" },
				typescript = { "prettier" },
				typescriptreact = { "prettier" },
				json = { "prettier" },
				php = { "php-cs-fixer" },
			},
			formatters = {
				["php-cs-fixer"] = {
					command = "php-cs-fixer",
					args = function(_, ctx)
						return { "fix", "--quiet", "--using-cache=no", "--config", ".php-cs-fixer.php", ctx.filename }
					end,
					stdin = false,
					timeout = 10000,
				},
			},
		})
	end,
}
