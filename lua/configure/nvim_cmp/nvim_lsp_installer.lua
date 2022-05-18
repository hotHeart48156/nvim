local plugin = {}
plugin.core = {"williamboman/nvim-lsp-installer", {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")
        for _, server in pairs(SERVERS) do
            local opts = {
                on_attach = require('configure.nvim_cmp._handlers').on_attach,
                capabilities = require('configure.nvim_cmp._handlers').capabilities,
                flags = {
                    debounce_text_changes = 150
                }
            }
            local has_custom_opts, server_custom_opts = pcall(require, "configure.nvim_cmp.language._" .. server)
            if has_custom_opts then
                -- print_r(server)
                opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
            end
            lspconfig[server].setup(opts)
        end
        require('configure.nvim_cmp._handlers').setup()
    end
}}

plugin.core.setup = function()
end

plugin.core.config = function()
    local lsp_install = require('nvim-lsp-installer')
    lsp_install.setup({
        ensure_installed=SERVERS,
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
end
return plugin
