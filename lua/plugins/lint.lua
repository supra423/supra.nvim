return {
  "mfussenegger/nvim-lint",
  event = {
    "BufReadPost",
    "BufNewFile",
  },
  config = function()
    require("lint").linters_by_ft = {
      markdown = { "markdownlint" },
      c = { "cppcheck" },
      cpp = { "cppcheck" },
      python = { "ruff" },
      rust = { "clippy" },
      lua = { "luacheck" },
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
    }
  end,
}
