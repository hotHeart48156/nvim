local plugin = {}
plugin.core = {"williamboman/nvim-lsp-installer", {--https://github.com/williamboman/nvim-lsp-installer/blob/main/doc/nvim-lsp-installer.txt
    "neovim/nvim-lspconfig",
    config = function()
        require("nvim-lsp-installer").setup {} -- must exec otherwise no clinet attach on buffer
        require('configure.nvim_cmp._handlers').setup()
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
                opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
            end
            lspconfig[server].setup(opts)
            lspconfig.vimls.setup{
                on_attach = require("aerial").on_attach,
              }
        end

    end
}}

-- plugin.core.setup = function()
-- end

plugin.core.config = function()
    print("yes")
    local lsp_install = require('nvim-lsp-installer')
    lsp_install.setup({
        ensure_installed = SERVERS,
        automatic_installation = true,
        keymaps = {
            -- Keymap to expand a server in the UI
            toggle_server_expand = "<CR>",
            -- Keymap to install the server under the current cursor position
            install_server = "i",
            -- Keymap to reinstall/update the server under the current cursor position
            update_server = "u",
            -- Keymap to check for new version for the server under the current cursor position
            check_server_version = "c",
            -- Keymap to update all installed servers
            update_all_servers = "U",
            -- Keymap to check which installed servers are outdated
            check_outdated_servers = "C",
            -- Keymap to uninstall a server
            uninstall_server = "X"
        },
        install_root_dir = path.concat {vim.fn.stdpath "data", "lsp_servers"}, -- this is default value can be delete
        pip = {
            install_args = {"-i", "https://pypi.tuna.tsinghua.edu.cn/simple"}
        }
    })
end
return plugin
