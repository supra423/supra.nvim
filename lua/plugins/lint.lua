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
      rust = { "rust-analyzer" },
      lua = { "lua-check" },
    }
  end,
}
