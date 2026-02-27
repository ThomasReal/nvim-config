vim.pack.add({ "https://github.com/mfussenegger/nvim-dap" })
vim.pack.add({ "https://github.com/nvim-neotest/nvim-nio" })
vim.pack.add({ "https://github.com/rcarriga/nvim-dap-ui" })

local dap = require("dap")

dap.adapters.lldb = {
  type = "executable",
  command = "/opt/homebrew/opt/llvm/bin/lldb-dap",
  name = "lldb",
}

local lldb = {
  name = "Launch lldb",
  type = "lldb",
  request = "launch",
  program = function()
    --return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    return vim.fn.getcwd() .. "/examples/build/loading_gltf/engine_example_loading_gltf"
  end,
  cwd = "${workspaceFolder}",
  stopOnEntry = false,
  args = {},
  runInTerminal = false,
}

dap.configurations.cpp = { lldb }
dap.configurations.c = { lldb }
dap.configurations.odjcpp = { lldb }
dap.configurations.objc = { lldb }
dap.configurations.rust = { lldb }

local dapui = require("dapui")
dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
