local check_backspace = function()
    local col = vim.fn.col "." - 1
    return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

---when inside a snippet, seeks to the nearest luasnip field if possible, and checks if it is jumpable
---@param dir number 1 for forward, -1 for backward; defaults to 1
---@return boolean true if a jumpable luasnip field is found while inside a snippet
local function jumpable(dir)
    local luasnip_ok, luasnip = pcall(require, "luasnip")
    if not luasnip_ok then
        return
    end

    local win_get_cursor = vim.api.nvim_win_get_cursor
    local get_current_buf = vim.api.nvim_get_current_buf

    local function inside_snippet()
        -- for outdated versions of luasnip
        if not luasnip.session.current_nodes then
            return false
        end

        local node = luasnip.session.current_nodes[get_current_buf()]
        if not node then
            return false
        end

        local snip_begin_pos, snip_end_pos = node.parent.snippet.mark:pos_begin_end()
        local pos = win_get_cursor(0)
        pos[1] = pos[1] - 1 -- LuaSnip is 0-based not 1-based like nvim for rows
        return pos[1] >= snip_begin_pos[1] and pos[1] <= snip_end_pos[1]
    end

    ---sets the current buffer's luasnip to the one nearest the cursor
    ---@return boolean true if a node is found, false otherwise
    local function seek_luasnip_cursor_node()
        -- for outdated versions of luasnip
        if not luasnip.session.current_nodes then
            return false
        end

        local pos = win_get_cursor(0)
        pos[1] = pos[1] - 1
        local node = luasnip.session.current_nodes[get_current_buf()]
        if not node then
            return false
        end

        local snippet = node.parent.snippet
        local exit_node = snippet.insert_nodes[0]

        -- exit early if we're past the exit node
        if exit_node then
            local exit_pos_end = exit_node.mark:pos_end()
            if (pos[1] > exit_pos_end[1]) or (pos[1] == exit_pos_end[1] and pos[2] > exit_pos_end[2]) then
                snippet:remove_from_jumplist()
                luasnip.session.current_nodes[get_current_buf()] = nil

                return false
            end
        end

        node = snippet.inner_first:jump_into(1, true)
        while node ~= nil and node.next ~= nil and node ~= snippet do
            local n_next = node.next
            local next_pos = n_next and n_next.mark:pos_begin()
            local candidate = n_next ~= snippet and next_pos and (pos[1] < next_pos[1]) or
                                  (pos[1] == next_pos[1] and pos[2] < next_pos[2])

            -- Past unmarked exit node, exit early
            if n_next == nil or n_next == snippet.next then
                snippet:remove_from_jumplist()
                luasnip.session.current_nodes[get_current_buf()] = nil

                return false
            end

            if candidate then
                luasnip.session.current_nodes[get_current_buf()] = node
                return true
            end

            local ok
            ok, node = pcall(node.jump_from, node, 1, true) -- no_move until last stop
            if not ok then
                snippet:remove_from_jumplist()
                luasnip.session.current_nodes[get_current_buf()] = nil

                return false
            end
        end

        -- No candidate, but have an exit node
        if exit_node then
            -- to jump to the exit node, seek to snippet
            luasnip.session.current_nodes[get_current_buf()] = snippet
            return true
        end

        -- No exit node, exit from snippet
        snippet:remove_from_jumplist()
        luasnip.session.current_nodes[get_current_buf()] = nil
        return false
    end

    if dir == -1 then
        return inside_snippet() and luasnip.jumpable(-1)
    else
        return inside_snippet() and seek_luasnip_cursor_node() and luasnip.jumpable()
    end
end

local plugin = {}
plugin.core = {
    "hrsh7th/nvim-cmp", -- https://github.com/hrsh7th/nvim-cmp/blob/main/doc/cmp.txt
    disable = false
}
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
    local menu = {
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
            ghost_text = true,
            native_menu = false
        },
        enabled = true,
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
                vim_item.kind = string.format('%s', kind_icons[vim_item.kind])
                vim_item.menu = menu[entry.source.name]
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
            ["<C-e>"] = nvim_cmp.mapping.abort(),
            ["<Tab>"] = nvim_cmp.mapping(function(fallback)
                if nvim_cmp.visible() then
                  nvim_cmp.select_next_item()
                elseif luasnip.expandable() then
                    luasnip.expand()
                elseif jumpable(1) then
                    luasnip.jump(1)
                elseif check_backspace() then
                    fallback()
                elseif is_emmet_active() then
                    return vim.fn["cmp#complete"]()
                else
                    fallback()
                end
            end, {"i", "s"}),
            ["<S-Tab>"] = nvim_cmp.mapping(function(fallback)
                if nvim_cmp.visible() then
                  nvim_cmp.select_prev_item()
                elseif jumpable(-1) then
                    luasnip.jump(-1)
                else
                    fallback()
                end
            end, {"i", "s"}),
            ["<CR>"] = nvim_cmp.mapping(function(fallback)
                if nvim_cmp.visible() and nvim_cmp.confirm(cmp_config.confirm_opts) then
                    if jumpable(1) then
                        luasnip.jump(1)
                    end
                    return
                end

                if jumpable(1) then
                    if not luasnip.jump(1) then
                        fallback()
                    end
                else
                    fallback()
                end
            end)
        },
        sources = nvim_cmp.config.sources({{ -- 不要配置相关的源
            name = 'nvim_lsp'
        }, {
            name = 'orgmode'
        }, {
            name = "luasnip"
        }, {
            name = "path"
        }, {
            name = "cmp_tabnine"
        }, {
            name = "nvim_lua"
        }, {
            name = "buffer"
        }, {
            name = "spell"
        }, {
            name = "calc"
        }, {
            name = "emoji"
        }, {
            name = "treesitter"
        }, {
            name = "crates"
        }})
    }
    nvim_cmp.setup.filetype({'markdown', 'help'}, {
        sources = {{
            name = 'path'
        }, {
            name = 'buffer'
        }}
    })
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
        sources = {{
            name = 'cmdline'
        }, {
            name = 'path'
        }}
    })
    nvim_cmp.setup(cmp_config)

end
plugin.mapping = function()
end
return plugin
