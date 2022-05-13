local plugin = {}
plugin.core = {"williamboman/nvim-lsp-installer", {"neovim/nvim-lspconfig"}}

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
        on_attach = require('configure.nvim_cmp._handlers').on_attach,
        capabilities = require('configure.nvim_cmp._handlers').capabilities
    }
    lsp_config.clangd.setup {
        on_attach = require('configure.nvim_cmp._handlers').on_attach,
        capabilities = require('configure.nvim_cmp._handlers').capabilities
    }
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

        if server.name == 'pyright' then
            local py = require('configure.nvim_cmp.language._python')
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
