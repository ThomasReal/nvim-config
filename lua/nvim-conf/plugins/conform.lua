vim.pack.add({ "https://github.com/stevearc/conform.nvim" })

require("conform").setup({
  formatters_by_ft = {
    c = { "clang_format" },
    cpp = { "clang_format" },
    objc = { "clang_format" },
    objcpp = { "clang_format" },
    cuda = { "clang_format" },

    lua = { "stylua" },

    cmake = { "cmake_format" },
  },

  -- Optional: customize formatter args
  formatters = {
    clang_format = {
      prepend_args = { "--style=file" }, -- uses .clang-format if present
    },
    stylua = {
      prepend_args = {
        "--indent-type",
        "Spaces",
        "--indent-width",
        "2",
      },
    },
    cmake_format = {},
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
})
