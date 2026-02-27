require("nvim-conf.plugins.nvim-lspconfig")

vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

require("nvim-conf.plugins.nvim-dap")

require("nvim-conf.plugins.LuaSnip")
require("nvim-conf.plugins.nvim-cmp")

require("nvim-conf.plugins.neotree")

vim.pack.add({ "https://github.com/akinsho/bufferline.nvim" })
require("bufferline").setup()

require("nvim-conf.plugins.dashboard-nvim")
vim.pack.add({ "https://github.com/OXY2DEV/markview.nvim" })
vim.pack.add({ "https://github.com/3rd/image.nvim" })
require("image").setup()

require("nvim-conf.plugins.conform")

vim.pack.add({ "https://github.com/ibhagwan/fzf-lua" })
require("nvim-conf.plugins.which-key")

vim.pack.add({ "https://github.com/windwp/nvim-autopairs" })
require("nvim-autopairs").setup()

require("nvim-conf.plugins.project")
