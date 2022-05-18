local handlers = {}
handlers.setup = function()
    local signs = {{
        name = "DiagnosticSignError",
        text = "⛔"
    }, {
        name = "DiagnosticSignWarn",
        text = "⚠️"
    }, {
        name = "DiagnosticSignHint",
        text = "⚡"
    }, {
        name = "DiagnosticSignInfo",
        text = "⚛"
    }}
    for _, sign in ipairs(signs) do
        vim.fn.sign_define(sing.name, {
            texthl = sign.name,
            text = sign.text,
            numhl = ""
        })
    end
    local config = {
        virtual_text = false,
        signs = {
            active = signs
        },
        update_in_insert = true,
        underline = true,
        severity_sort = true,
        float = {
            focusable = false,
            style = 'minimal',
            border = 'rounded',
            sources = 'always',
            header = '',
            prefix = ''
        }
    }
    vim.diagnostic.config(config)
    vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = 'rounded'
    })
    vim.lsp.handlers['textDocument/signtureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
        border = 'rounder'
    })
end

local function lsp_highlight_document(client)
    if client.server_capabilities.document_highlight then
        vim.api.nvim_exec([[
            augroup lsp_document_highlight
                autocmd! * <buffer>
                autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
                autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
            augroup END
            ]], false)
    end
end

local function lsp_key_maps(buf)
    local opts = {
        noremap = true,
        silent = true
    }
    vim.api.nvim_buf_set_keymap(buf, 'n', 'gd', '<cmd>lua vim.lsp.buf.declaration<CR>', opts)
    vim.api.nvim_buf_set_keymap(buf, 'n', '<leader>t', '<cmd>lua vim.lsp.buf.definition<CR>', opts)
    vim.api.nvim_buf_set_keymap(buf, 'n', 'gh', '<cmd>lua vim.lsp.buf.hover<CR>', opts)
    vim.api.nvim_buf_set_keymap(buf, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename<CR>', opts)
    vim.api.nvim_buf_set_keymap(buf, 'n', '<A-cr>', '<cmd>lua vim.lsp.buf.code_action<CR>', opts)
    vim.api.nvim_buf_set_keymap(buf, 'n', '<leader>dj', '<cmd>lua vim.diagnostic.goto_prev({border="rounded"})<CR>',
        opts)
    vim.api
        .nvim_buf_set_keymap(buf, 'n', '<leader>dk', '<cmd>lua vim.diagnostic.goto_next({border="rounded"})CR>', opts)
end
handlers.on_attach = function(client, buf)
    lsp_key_maps(buf)
    lsp_highlight_document(client)
    -- require('aerial').on_attach(client,buf)
    require('lsp_signature').on_attach()
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

handlers.capabilities=require('cmp_nvim_lsp').update_capabilities(capabilities)
return handlers
