return {
    "mason-org/mason.nvim",
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
	},
	require("mason").setup({
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗"
			}
		}
	}),

	require("mason-lspconfig").setup({
		ensure_installed = {
			"pyright",
			"clangd",
			"emmet_ls",
		}
	})
}
