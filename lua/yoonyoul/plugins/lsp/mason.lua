return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function(_, opts)
		--[[ vim.print(opts) ]]
		-- import mason
		local mason = require("mason")

		local conf = vim.tbl_deep_extend("keep", opts, {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		-- enable mason and configure icons
		mason.setup(conf)
		-- import mason-lspconfig
		require("java").setup()
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"tsserver",
				"lua_ls",
				"rust_analyzer",
			},
			handlers = {
				["jdtls"] = function()
					require("lspconfig").jdtls.setup({})
				end,
			},
			automatic_installation = true, -- not the same as ensure_installed
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"eslint_d", -- js linter
			},
		})
	end,
}
