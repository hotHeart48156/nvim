local dap = require('dap')

local dbg_path = require("dap-install.config.settings").options["installation_path"] .. "ccppr_vsc/"
dap.adapters.cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    command = dbg_path .. "extension/debugAdapters/bin/OpenDebugAD7",
    -- args={" --pauseForDebugger"}
}
dap.configurations.cpp = { 
{
    name = "Launch file",
    type = "cppdbg",
    request = "launch",--g++ -g file
    program = function()
        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    args = function()
        local input = vim.fn.input("Input args: ")
        return require("configure.debug.config._dap_util").str2argtable(input)
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
    showDisplayString = true,
    linux = {
        MIMode = "gdb",
        miDebuggerPath = "/usr/bin/gdb"
    },
    setupCommands = {{
        description = 'enable pretty printing',
        text = '-enable-pretty-printing',
        ignoreFailures = false
    }}
}, -- attach process
{
    name = "Attach process",
    type = "cppdbg",
    request = "attach",
    processId = require('dap.utils').pick_process,
    program = function()
        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = "${workspaceFolder}",
    setupCommands = {{
        description = 'enable pretty printing',
        text = '-enable-pretty-printing',
        ignoreFailures = false
    }}
}, -- attach server
{
    name = 'Attach to gdbserver :1234',
    type = 'cppdbg',
    request = 'launch',
    MIMode = 'gdb',
    miDebuggerServerAddress = 'localhost:1234',
    miDebuggerPath = '/usr/bin/gdb',
    cwd = '${workspaceFolder}',
    program = function()
        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    setupCommands = {{
        text = '-enable-pretty-printing',
        description = 'enable pretty printing',
        ignoreFailures = false
    }}
}}

-- setup other language
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
