local plugin = {}
plugin.core = {"ravenxrz/DAPInstall.nvim"}

plugin.core.setup = function()

end

plugin.core.config = function()
    local dap_install = require "dap-install"
    dap_install.setup {
        installation_path = vim.fn.stdpath "data" .. "/dapinstall/"
    }
    local dap_breakpoint = {
        error = {
          text = "🛑",
          texthl = "LspDiagnosticsSignError",
          linehl = "",
          numhl = "",
        },
        rejected = {
          text = "",
          texthl = "LspDiagnosticsSignHint",
          linehl = "",
          numhl = "",
        },
        stopped = {
          text = "⭐️",
          texthl = "LspDiagnosticsSignInformation",
          linehl = "DiagnosticUnderlineInfo",
          numhl = "LspDiagnosticsSignInformation",
        },
      }
    
      vim.fn.sign_define("DapBreakpoint", dap_breakpoint.error)
      vim.fn.sign_define("DapStopped", dap_breakpoint.stopped)
      vim.fn.sign_define("DapBreakpointRejected", dap_breakpoint.rejected)
      
end

plugin.mapping = function()
end
return plugin
