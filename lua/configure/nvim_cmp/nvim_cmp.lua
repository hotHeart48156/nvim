local cmp = {}
cmp.core = {"hrsh7th/nvim-cmp"}
cmp.core.config = function()
end

cmp.core.setup = function()
    vim.cmd [[packadd nvim-cmp]]
    vim.cmd [[packadd cmp-nvim-lsp]]
    vim.cmd [[packadd cmp-buffer]]
    -- vim.cmd [[packadd cmp-look]]
    local luasnip, luasnip_status = pcall(require, 'luasnip')
    if not luasnip_status then
        return
    end
    -- require('luasnip.loaders.from_vscode').lazy_load()
    -- require('luasnip.loaders.from_vscode').load({paths={'path'}})
    local nvim_cmp = require 'cmp'
    local kind_icons = {
        Class = "❂ ",
        Color = "⛯ ",
        Constant = "⛭ ",
        Constructor = "⚙ ",
        Enum = "⚚ ",
        EnumMember = "⚜ ",
        Event = "E ",
        Field = "⽥ ",
        File = "⛶ ",
        Folder = "📁",
        Function = "℘ ",
        Interface = "⏧ ",
        Keyword = "☣ ",
        Method = "M ",
        Module = "⨊ ",
        Operator = "☩ ",
        Property = "☪ ",
        Reference = "☬ ",
        Snippet = "☫ ",
        Struct = "䷦ ",
        Text = "T ",
        TypeParameter = " ",
        Unit = "Å ",
        Value = "፲ ",
        Variable = "⚝ "
    }
    local source_names = {
        nvim_lsp = "(LSP)",
        treesitter = "(TS)",
        emoji = "(Emoji)",
        path = "(Path)",
        calc = "(Calc)",
        cmp_tabnine = "(Tabnine)",
        vsnip = "(Snippet)",
        luasnip = "(Snippet)",
        buffer = "(Buffer)",
        spell = "(Spell)"
    }
    local menu={
        nvim_lsp = "{LSP}",
        cmp_tabnine = "[TabNine]",
        nvim_lua = "[LUA]",
        luasnip = "[Snippets]",
        buffer = "[Buffer]",
        spell = "[Spell]",
        path = "[Path]"

    }
    cmp_config = {
        confirm_opts = {
            behavior = nvim_cmp.ConfirmBehavior.Replace,
            select = false
        },
        completion = {
            keyword_length = 1
        },
        -- max_width = 0,

        experimental = {
            ghost_text = true,
        },
        formatting = {
            fields = {"kind", "abbr", "menu"},
            -- max_width = 0,
            kind_icons = kind_icons,
            source_names = source_names,
            menu=menu,
            duplicates = {
                buffer = 1,
                path = 1,
                nvim_lsp = 1,
                luasnip = 1
            },
            duplicates_default = 1,
            format = function(entry, vim_item)
               
                vim_item.kind=string.format('%s %s',kind_icons[vim_item.kind],vim_item.kind)
                vim_item.menu=cmp_config.formatting.menu[entry.source.name]
                -- local max_width = cmp_config.formatting.max_width
                -- if max_width ~= 0 and #vim_item.abbr > max_width then
                --     vim_item.abbr = string.sub(vim_item.abbr, 1, max_width - 1) .. "…"
                -- end
                vim_item.kind = cmp_config.formatting.kind_icons[vim_item.kind]
                vim_item.menu = cmp_config.formatting.source_names[entry.source.name]
                vim_item.dup = cmp_config.formatting.duplicates[entry.source.name] or
                                   cmp_config.formatting.duplicates_default
                return vim_item
            end
        },
        snippet = {
            expand = function(args)
                print_r(args)
                require('luasnip').lsp_expand(args.body)
            end
        },
        window = {
            completion = nvim_cmp.config.window.bordered(),
            documentation = nvim_cmp.config.window.bordered()
        },
        sources = {
            { name = 'nvim_lsp' },
            { name = "path" },
            { name = "luasnip" },
            { name = "cmp_tabnine" },
            { name = "nvim_lua" },
            { name = "buffer" },
            { name = "spell" },
            { name = "calc" },
            { name = "emoji" },
            { name = "treesitter" },
            { name = "crates" },
          },
        mapping = {
            ["<C-k>"] = nvim_cmp.mapping.select_prev_item(),
            ["<C-j>"] = nvim_cmp.mapping.select_next_item(),
            ["<C-d>"] = nvim_cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = nvim_cmp.mapping.scroll_docs(4),
            -- TODO: potentially fix emmet nonsense
            -- ["<Tab>"] = cmp.mapping(function(fallback)
            --     if cmp.visible() then
            --         cmp.select_next_item()
            --     elseif luasnip.expandable() then
            --         luasnip.expand()
            --     elseif jumpable(1) then
            --         luasnip.jump(1)
            --     elseif check_backspace() then
            --         fallback()
            --     elseif is_emmet_active() then
            --         return vim.fn["cmp#complete"]()
            --     else
            --         fallback()
            --     end
            -- end, {"i", "s"}),
            -- ["<S-Tab>"] = cmp.mapping(function(fallback)
            --     if cmp.visible() then
            --         cmp.select_prev_item()
            --     elseif jumpable(-1) then
            --         luasnip.jump(-1)
            --     else
            --         fallback()
            --     end
            -- end, {"i", "s"}),

            ["<C-p>"] = nvim_cmp.mapping.complete(),
            ["<C-e>"] = nvim_cmp.mapping.abort()
            -- ["<CR>"] = cmp.mapping(function(fallback)
            --     if cmp.visible() and cmp.confirm(cmp_config.confirm_opts) then
            --         if jumpable(1) then luasnip.jump(1) end
            --         return
            --     end

            --     if jumpable(1) then
            --         if not luasnip.jump(1) then fallback() end
            --     else
            --         fallback()
            --     end
            -- end)
        }
    }
    -- nvim_cmp.setup.filetype('gitcommit', {
    --     sources = cmp.config.sources({
    --       { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    --     }, {
    --       { name = 'buffer' },
    --     })
    --   })
    
    nvim_cmp.setup.cmdline('/', {
        mapping = nvim_cmp.mapping.preset.cmdline(),
        sources = {{
            name = 'buffer'
        }}
    })

    nvim_cmp.setup.cmdline('?', {
        mapping = nvim_cmp.mapping.preset.cmdline(),
        sources = {{
            name = 'buffer'
        }}
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    nvim_cmp.setup.cmdline(':', {
        mapping = nvim_cmp.mapping.preset.cmdline(),
        sources ={{
            name = 'cmdline'
        }, {
            name = 'path'
        }}
    })
    nvim_cmp.setup(cmp_config)
     -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['sumneko_lua'].setup {
    capabilities = capabilities
  }
end
cmp.core.formatting = {
    field = {"kind", "abbr", "menu"},
    format = function(entry, item)
        item.menu = ({
            nvim_lsp = "{LSP}",
            cmp_tabnine = "[TabNine]",
            nvim_lua = "[LUA]",
            luasnip = "[Snippets]",
            buffer = "[Buffer]",
            spell = "[Spell]",
            path = "[Path]"

        })
    end

}
cmp.mapping = function()
end
return cmp
