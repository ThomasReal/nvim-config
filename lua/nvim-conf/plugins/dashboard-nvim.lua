vim.pack.add({ "https://github.com/nvimdev/dashboard-nvim" })
require("dashboard").setup({
  letter_list = "arstoinwfydvhk",
  config = {
    project = { action = "FzfLua files cwd=" },
  },
})
