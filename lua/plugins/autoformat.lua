return {
  "stevearc/conform.nvim",
  -- event = { "BufWritePre" },
  -- cmd = { "ConformInfo" },
  -- keys = {
  --   {
  --     "<leader>f",
  --     function()
  --       require("conform").format({ async = true, lsp_format = "fallback" })
  --     end,
  --     mode = "",
  --     desc = "[F]ormat buffer",
  --   },
  -- },
  config = function()
    vim.api.nvim_create_autocmd("BufWritePre", { -- autoformats when saved
      pattern = "*",
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end,

  opts = {
    notify_on_error = false,
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      c = { "clang-format" },
      cpp = { "clang-format" },
      javascript = { "prettierd", "prettier", stop_after_first = true },
    },
  },
}
