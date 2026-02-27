vim.pack.add({ "https://github.com/DrKJeff16/project.nvim" })

require("project").setup({
  detection_methods = { "lsp", "pattern" },
  patterns = { ".git" },
})
