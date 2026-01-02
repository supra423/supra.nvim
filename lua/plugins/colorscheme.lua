return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd("colorscheme tokyonight-storm")
    vim.cmd("hi Visual guibg=#8093f1")
    vim.cmd("hi Visual guifg=#ffffff")
  end,
}
