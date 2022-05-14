local cmp = {}
cmp.core = {"hrsh7th/nvim-cmp"}
cmp.core.setup = function() end

cmp.core.config = function()
    local luasnip, luasnip_status = pcall(require, 'luasnip')
    if not luasnip_status then return end
    require('luasnip.loaders.from_vscode').lazy_load()
    -- require('luasnip.loaders.from_vscode').load({paths={'path'}})
    local cmp = require 'cmp'
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
    cmp_config = {
        confirm_opts = {behavior = cmp.ConfirmBehavior.Replace, select = false},
        completion = {
            ---@usage The minimum length of a word to complete on.
            keyword_length = 1
        },
        experimental = {ghost_text = false, native_menu = false},
        formatting = {
            fields = {"kind", "abbr", "menu"},
            max_width = 0,

            duplicates = {buffer = 1, path = 1, nvim_lsp = 0, luasnip = 1},
            duplicates_default = 0,
            format = function(entry, vim_item)
                local max_width = cmp_config.formatting.max_width
                if max_width ~= 0 and #vim_item.abbr > max_width then
                    vim_item.abbr =
                        string.sub(vim_item.abbr, 1, max_width - 1) .. "…"
                end
                vim_item.kind = kind_icons[vim_item.kind]
                vim_item.menu = source_names[entry.source.name]
                vim_item.dup = cmp_config.formatting.duplicates[entry.source
                                   .name] or
                                   cmp_config.formatting.duplicates_default
                return vim_item
            end
        },
        snippet = {
            expand = function(args)
                require("luasnip").lsp_expand(args.body)
            end
        },
        window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered()
        },
        sources = {
            {name = "nvim_lsp"}, {name = "path"}, {name = "luasnip"},
            {name = "cmp_tabnine"}, {name = "nvim_lua"}, {name = "buffer"},
            {name = "spell"}, {name = "calc"}, {name = "emoji"},
            {name = "treesitter"}, {name = "crates"}
        },
        mapping = cmp.mapping.preset.insert {
            ["<C-k>"] = cmp.mapping.select_prev_item(),
            ["<C-j>"] = cmp.mapping.select_next_item(),
            ["<C-d>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
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

            ["<C-p>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort()
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
    -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline('/', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {{name = 'buffer'}}
    })

    cmp.setup.cmdline('?', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {{name = 'buffer'}}
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({{name = 'cmdline'}, {name = 'path'}})
    })
    cmp.setup(cmp_config)
end
cmp.core.formatting = {
    field = {"kind", "abbr", "menu"},
    format = function(entry, item)
        -- item.kind=string.format("%s %s")
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
cmp.mapping = function() end
return cmp
