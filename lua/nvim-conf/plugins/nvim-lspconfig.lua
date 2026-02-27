vim.pack.add({ "https://github.com/neovim/nvim-lspconfig" })

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
})

vim.lsp.config("clangd", { cmd = { "clangd", "--header-insertion=never", "--function-arg-placeholders=0" } })

vim.lsp.enable("clangd")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("pyright")
vim.lsp.enable("ruff")
vim.lsp.enable("lua_ls")
vim.lsp.enable("bashls")
vim.lsp.enable("jdtls")
vim.lsp.enable("neocmake")

vim.diagnostic.config({
  virtual_text = true,
  underline = true,
  signs = true,
  severity_sort = true,
})
