local plugin = {}
plugin.core = {"neovim/nvim-lspconfig"}
plugin.core.setup = function()
    -- vim.cmd[[packadd lspconfig]]
end

plugin.core.config = function()
    -- local lspconfig = require("lspconfig")
    -- for _, server in pairs(SERVERS) do
    --     local opts = {
    --         on_attach = require('configure.nvim_cmp._handlers').on_attach,
    --         capabilities = require('configure.nvim_cmp._handlers').capabilities,
    --         flags = {
    --             debounce_text_changes = 150
    --         }
    --     }
    --     local has_custom_opts, server_custom_opts = pcall(require, "configure.nvim_cmp.language._" .. server)
    --     print("configure.nvim_cmp.language._" .. server)
    --     print_r(has_custom_opts)
    --     if has_custom_opts then
    --         opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
    --     end
    --     lspconfig[server].setup(opts)
    -- end
end
plugin.mapping = function()

end
return plugin
