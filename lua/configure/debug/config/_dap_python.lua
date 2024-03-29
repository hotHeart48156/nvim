local dap = require('dap')

dap.adapters.python = {
  type = "executable",
  command = "/usr/bin/python3",
  args = { "-m", "debugpy.adapter" },
}

dap.configurations.python = {
  {
    type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = "launch",
    name = "Launch file",
    program = "${file}", -- This configuration will launch the current file if used.
    args = function()
      local input = vim.fn.input("Input args: ")
      return require("configure.debug.config._dap_util").str2argtable(input)
    end,
    pythonPath = function()
      -- local venv_path = os.getenv("VIRTUAL_ENV")
      -- if venv_path then
      --   return venv_path .. "/bin/python3"
      -- end
      return "/usr/bin/python3"
    end
  }
}
