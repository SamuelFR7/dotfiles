return {
	"stevearc/conform.nvim",
	event = { "BufWritePre " },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "prettierd" },
			javascriptreact = { "prettierd" },
			typescript = { "prettierd" },
			typescriptreact = { "prettierd" },
			json = { "prettierd" },
			php = { "php-cs-fixer" },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
		format_on_save = { timeout_ms = 500 },
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
	},
	init = function()
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
}
