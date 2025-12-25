return {
  "j-morano/buffer_manager.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local opts = { noremap = true }
    local map = vim.keymap.set

    ---- Navigate buffers bypassing the menu
    local bmui = require("buffer_manager.ui")
    local keys = "1234567890"
    for i = 1, #keys do
      local key = keys:sub(i, i)
      map("n", string.format("<leader>%s", key), function()
        bmui.nav_file(i)
      end, opts)
    end

    map({ "t", "n" }, "<C-space>", bmui.toggle_quick_menu, opts)

    ---- Next/Prev
    map("n", "<leader>n", bmui.nav_next, opts)
    map("n", "<leader>p", bmui.nav_prev, opts)
  end,
}
