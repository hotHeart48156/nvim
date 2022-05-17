local plugin = {}
plugin.core = {"williamboman/nvim-lsp-installer", {
    "neovim/nvim-lspconfig",
    config = function()
        require("nvim-lsp-installer").setup {}
        local lspconfig = require("lspconfig")
        lspconfig.sumneko_lua.setup {
            on_attach = require('configure.nvim_cmp._handlers').on_attach,
            capabilities = require('configure.nvim_cmp._handlers').capabilities,
            settings = {
                Lua = {
                    -- runtime = {
                    --     -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                    --     version = 'LuaJIT',
                    --     -- Setup your lua path
                    --     path = runtime_path
                    -- },
                    diagnostics = {
                        -- Get the language server to recognize the `vim` global
                        globals = {'vim'}
                    },
                    workspace = {
                        -- Make the server aware of Neovim runtime files
                        library = vim.api.nvim_get_runtime_file("", true)
                    },
                    -- Do not send telemetry data containing a randomized but unique identifier
                    telemetry = {
                        enable = false
                    }
                }
            }
        }
        lspconfig.pyright.setup {
            on_attach = require('configure.nvim_cmp._handlers').on_attach,
            capabilities = require('configure.nvim_cmp._handlers').capabilities,
            settings = {
                python = {
                    analysis = {
                        typeCheckingMode = "off"
                    }
                }
            }
        }
    end
}}

plugin.core.setup = function()
end

plugin.core.config = function()
    local lsp_install = require('nvim-lsp-installer')
    -- lsp setup begin
    lsp_install.setup({
        ensure_installed = {'rust_analyzer', 'sumneko_lua'},
        automatic_installation = true,
        ui = {
            icons = {
                server_installed = "✓",
                server_pending = "➜",
                server_uninstalled = "✗"
            }
        },
        pip = {
            install_args = {"-i", "https://pypi.tuna.tsinghua.edu.cn/simple"}
        }
    })
    local lsp_config = require("lspconfig")
    lsp_config.pyright.setup {
        on_attach = require('configure.nvim_cmp._handlers').on_attach
        -- capabilities = require('configure.nvim_cmp._handlers').capabilities
    }
    lsp_config.clangd.setup {
        on_attach = require('configure.nvim_cmp._handlers').on_attach,
        capabilities = require('configure.nvim_cmp._handlers').capabilities
    }
    local file = io.open('test.txt', 'w+')
    file.write('cscs' .. "server.name")
    require('configure.nvim_cmp._handlers').setup()
    -- lsp setup end
    lsp_install.on_server_ready(function(server)
        local opts = {
            on_attach = require('configure.nvim_cmp._handlers').on_attach,
            capabilities = require('configure.nvim_cmp._handlers').capabilities,
            flags = {
                debounce_text_changes = 150
            }
        }
        if server.name == 'clangd' then
            local clang = require('configure.nvim_cmp.language._clang')
            opts = vim.tbl_deep_extend("force", clang, opts)
            lsp_config.clangd.setup {
                on_attach = require('configure.nvim_cmp._handlers').on_attach
            }
        end
        local file = io.open('test.txt', 'w+')
        file.write('cscs' .. server.name)
        local py = require('configure.nvim_cmp.language.python')
        opts = vim.tbl_deep_extend("force", py, opts)
        if server.name == 'pyright' then
            local py = require('configure.nvim_cmp.language.python')
            opts = vim.tbl_deep_extend("force", py, opts)
            -- lsp_config.pyright.setup{on_attach=require('configure.nvim_cmp._handlers').on_attach}
        end

        if server.name == 'sumneko_lua' then
            local lua = require('configure.nvim_cmp.language._lua')
            opts = vim.tbl_deep_extend("force", lua, opts)
        end

        server:setup(opts)
    end)

end

plugin.mapping = function()
end
return plugin
