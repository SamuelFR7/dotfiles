return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"jay-babu/mason-nvim-dap.nvim",
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
	},
	config = function()
		require("mason-nvim-dap").setup({
			ensure_installed = { "php" },
		})
		require("dapui").setup()

		local dap = require("dap")

		dap.adapters.php = {
			type = "executable",
			command = "php-debug-adapter",
			args = { "--port", "9003" },
		}

		dap.configurations.php = {
			{
				type = "php",
				request = "launch",
				name = "Listen for Xdebug",
				port = 9003,
				pathMappings = {
					["/opt/sources/siagro"] = "/opt/sources/siagro",
					["/opt/sources/sidab"] = "/opt/sources/sidab",
					["/opt/sources/sidap"] = "/opt/sources/sidap",
					["/opt/sources/sidapi"] = "/opt/sources/sidapi",
					["/opt/sources/sidato"] = "/opt/sources/sidato",
					["/opt/sources/sidiarn"] = "/opt/sources/sidiarn",
					["/opt/sources/sigama"] = "/opt/sources/sigama",
					["/opt/sources/sigeal"] = "/opt/sources/sigeal",
					["/opt/sources/sisdiagro"] = "/opt/sources/sisdiagro",
					["/var/www/html"] = "/opt/sources/sigaderr",
				},
			},
		}

		dap.listeners.after.event_initialized["dapui_config"] = function()
			require("dapui").open()
		end

		dap.listeners.before.event_terminated["dapui_config"] = function()
			require("dapui").close()
		end

		dap.listeners.before.event_exited["dapui_config"] = function()
			require("dapui").close()
		end

		vim.fn.sign_define("DapBreakpoint", { text = " ", texthl = "DiagnosticError", linehl = "", numhl = "" })
		vim.fn.sign_define(
			"DapBreakpointCondition",
			{ text = " ", texthl = "DiagnosticWarn", linehl = "", numhl = "" }
		)
		vim.fn.sign_define("DapLogPoint", { text = ".>", texthl = "DiagnosticInfo", linehl = "", numhl = "" })
		vim.fn.sign_define(
			"DapStopped",
			{ text = "󰁕 ", texthl = "DiagnosticWarn", linehl = "DapStoppedLine", numhl = "" }
		)
		vim.fn.sign_define(
			"DapBreakpointRejected",
			{ text = " ", texthl = "DiagnosticError", linehl = "", numhl = "" }
		)
	end,
}
