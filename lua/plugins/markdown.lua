return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  init = function()
    vim.g.mkdp_browser = "firefox"
  end,
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
}
