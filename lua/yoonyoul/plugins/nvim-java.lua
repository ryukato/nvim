return {
	"nvim-java/nvim-java",
	dependencies = {
		"nvim-java/lua-async-await",
		"nvim-java/nvim-java-core",
		"nvim-java/nvim-java-test",
		"nvim-java/nvim-java-dap",
		"MunifTanjim/nui.nvim",
		{
			"neovim/nvim-lspconfig",
			dependencies = { "williamboman/mason-lspconfig.nvim" },
			{
				"williamboman/mason-lspconfig.nvim",
				dependencies = {
					{
						"williamboman/mason.nvim",
						opts = {
							registries = {
								"github:nvim-java/mason-registry",
								"github:mason-org/mason-registry",
							},
						},
					},
				},
			},
		},
		"mfussenegger/nvim-dap",
	},
}
