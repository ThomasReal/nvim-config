-- dependencies
vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
})

vim.pack.add({ "https://github.com/nvim-neo-tree/neo-tree.nvim" })

require("neo-tree").setup({
  enable_cursor_hijack = true,

  commands = {
    colemak_up = function()
      vim.api.nvim_feedkeys("k", "n", false)
    end,

    colemak_down = function()
      vim.api.nvim_feedkeys("j", "n", false)
    end,
  },

  window = {
    mappings = {
      ["u"] = "colemak_up",
      ["e"] = "colemak_down",
      ["j"] = "none",
      ["k"] = "none",
    },
  },
})

vim.pack.add({ "https://github.com/luckasRanarison/neo-rename.nvim" })
require("neo-rename").setup()
