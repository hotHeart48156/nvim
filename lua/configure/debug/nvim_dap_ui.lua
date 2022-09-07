local plugin = {}
plugin.core = {"rcarriga/nvim-dap-ui"}

plugin.core.setup = function()

end

plugin.core.config = function()
  local dap, dapui = require "dap", require "dapui"
  local debug_open = function()
    dapui.open()
    vim.api.nvim_command("DapVirtualTextEnable")
  end
  local debug_close = function()
    dap.repl.close()
    dapui.close()
    vim.api.nvim_command("DapVirtualTextDisable")
    -- vim.api.nvim_command("bdelete! term:")   -- close debug temrinal
  end

  dap.listeners.after.event_initialized["dapui_config"] = function()
    debug_open()
  end
  dap.listeners.before.event_terminated["dapui_config"] = function()
    debug_close()
  end
  dap.listeners.before.event_exited["dapui_config"]     = function()
    debug_close()
  end
  dap.listeners.before.disconnect["dapui_config"]       = function()
    debug_close()
  end
  dap.defaults.fallback.terminal_win_cmd = '30vsplit new' -- this will be overrided by dapui
  dap.set_log_level("DEBUG")

  -- load from json file
  require('dap.ext.vscode').load_launchjs(nil, { cppdbg = { 'cpp' } })
  -- config per launage
  -- require("user.dap.dap-cpp")
  -- require("user.dap.di-go")

  require("configure.debug.config._dap_cpp")
  require("configure.debug.config._dap_go")
  require("configure.debug.config._dap_python")
  require("configure.debug.config._dap_lua")
  
end



plugin.mapping = function()
end
return plugin
