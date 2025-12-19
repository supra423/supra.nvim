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
        package_uninstalled = "✗",
      },
    },
  }),

  require("mason-lspconfig").setup({
    ensure_installed = {
      "pyright",
      "clangd",
      "emmet_ls",
    },
  }),
  require("mason-tool-installer").setup({
    ensure_installed = {
      "wc-language-server",
      "black",
      "clang-format",
      "rust-analyzer",
      "cpplint",
      "isort",
      "luacheck",
      "stylua",
    },
  }),
}
