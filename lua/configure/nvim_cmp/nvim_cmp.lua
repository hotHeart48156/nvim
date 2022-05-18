local plugin = {}
plugin.core = {"hrsh7th/nvim-cmp"}
-- plugin.core.setup = function()
-- end

plugin.core.config = function()
    -- vim.cmd [[packadd cmp-look]]
    local luasnip, luasnip_status = pcall(require, 'luasnip')
    if not luasnip_status then
        return
    end
    require('luasnip.loaders.from_vscode').lazy_load()
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
        experimental = {
            ghost_text = false,
            native_menu = false,
        },
        formatting = {
            fields = {"kind", "abbr", "menu"},
            duplicates = {
                buffer = 1,
                path = 1,
                nvim_lsp = 1,
                luasnip = 1
            },
            duplicates_default = 1,
            format = function(entry, vim_item)
                vim_item.kind=string.format('%s',kind_icons[vim_item.kind])
                vim_item.menu=menu[entry.source.name]
                -- vim_item.dup = cmp_config.formatting.duplicates[entry.source.name] or
                --                    cmp_config.formatting.duplicates_default
                return vim_item
            end
        },
        snippet = {
            expand = function(args)
                require('luasnip').lsp_expand(args.body)
            end
        },
        window = {
            completion = nvim_cmp.config.window.bordered(),
            documentation = nvim_cmp.config.window.bordered()
        },
        
        mapping = {
            ["<C-k>"] = nvim_cmp.mapping.select_prev_item(),
            ["<C-j>"] = nvim_cmp.mapping.select_next_item(),
            ["<C-d>"] = nvim_cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = nvim_cmp.mapping.scroll_docs(4),
            ["<C-p>"] = nvim_cmp.mapping.complete(),
            ["<C-e>"] = nvim_cmp.mapping.abort()
        },
        sources = nvim_cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = "luasnip" },
            { name = "path" },
            { name = "cmp_tabnine" },
            { name = "nvim_lua" },
            { name = "buffer" },
            { name = "spell" },
            { name = "calc" },
            { name = "emoji" },
            { name = "treesitter" },
            { name = "crates" },
          }),
    }
    nvim_cmp.setup(cmp_config)
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
   
    
end
plugin.mapping = function()
end
return plugin
