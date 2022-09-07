local M = {}

local function config_dapi_and_sign()
end

local function config_dapui()
end

local function config_debuggers()
  local dap = require "dap"
  -- TODO: wait dap-ui for fixing temrinal layout
  -- the "30" of "30vsplit: doesn't work
  dap.defaults.fallback.terminal_win_cmd = '30vsplit new' -- this will be overrided by dapui
  dap.set_log_level("DEBUG")

  -- load from json file
  require('dap.ext.vscode').load_launchjs(nil, { cppdbg = { 'cpp' } })
  -- config per launage
  -- require("user.dap.dap-cpp")
  -- require("user.dap.di-go")

  require("user.dap.dap-cpp")
  require("user.dap.dap-go")
  require("user.dap.dap-python")
  require("user.dap.dap-lua")
  -- require("user.dap.dap-cpp")
  -- require("config.dap.python").setup()
  -- require("config.dap.rust").setup()
  -- require("config.dap.go").setup()
end

function M.setup()
  config_dapi_and_sign()
  config_dapui()
  config_debuggers() -- Debugger
end

return M
