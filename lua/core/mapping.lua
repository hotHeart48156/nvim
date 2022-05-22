local all_mode = {'', -- empty string :help mapmode-nvo Normal Visual Select Operator-pending :map
'n', -- help mapmode-n Normal :nmap
'v', -- help mapmode-v Visual and Select :vmap
's', -- help mapmode-s Select :smap
'x', -- help mapmode-x Visual :xmap
'o', -- help mapmode-o Operator-pending :omap
'!', -- help mapmode-ic insert and Command-line :mao!
'i', -- help mapmode-i insert :imap
'I', -- help mapmode-I insert,Command-line,Lang-Arg :lmap
'c', -- help mapmode-c Command-line :cmap
't' -- help mapmode-t terminal :tmap
}
local global_mapping = {}

global_mapping.register = function(map)
    local option = {}
    local keys = {}
    local key = " "
    local option = {}
    local map_key_default_value = {
        desc = "No Desc",
        short_desc = "No Short Desc",
        noremap = nil,
        expr = nil,
        silent = { -- see https://neovim.io/doc/user/map.html#:map-arguments
            buffer = false, -- first is buffer ,buffer will be effective in the currnet buffer only
            nowait = true, -- this attribute may effctive in global mapping or buffer mapping 
            -- must start with ',' ,nvim does not wait for more characters to be typed,
            silent = true, -- to defing a mapping which will not be echoed on command line 
            -- after exec command not show any result 
            script = false,
            --              the mapping will only remap characters
            -- inth        e {rhs} using mappings that were defined local to a script, starting with
            -- "<SID        >".  This can be used to avoid that mappings from outside a script
            -- inter        fere (e.g., when CTRL-V is remapped in mswin.vim), but do use other
            -- mappi        ngs defined in the scr
            expr = true,
            --             the argument is an expression.  The
            -- expre        expression is evaluated to obtain the {rhs} that is used.
            unique = false -- if mapping exist and the command will fail
        }
    }
    local map_option_default_value = {}

    ---check mode is current start---
    if rawequal(next(map['mode']), nil) then
        print("mode is empt。\n Exit")
        return
    end
    if type(map['mode']) == table then
        for _, m in ipairs(map['mode']) do
            map['mode'] = v
            for _, _m in ipairs(all_mode) do
                if m ~= _m then
                    print("mode not support")
                    return
                end
            end
            global_mapping.register(map)
        end
    end
    ---check mode is current end---
    ---assign default_setting start ---
    for k, v in pairs(map_key_default_value) do
        if map[k] == nil then
            map[k] = v
        end
    end
    ---assign default_setting end ---
    for k, v in pairs(map_option_default_value) do
        if map[k] == nil then
            option[k] = v
        else
            option[k] = map[k]
        end
    end

    -- :checkhealth provider
    -- todo check used key
    for i, m in ipairs(map.mode) do
        vim.api.nvim_set_keymap(m, k, map.action[i], map.option)
    end
end

-- paste start ----
global_mapping.register({
    mode = {'n'},
    key = {"<leader> p"},
    action = '"+p',
    short_desc = "common"
})
global_mapping.register({
    mode = {'i'},
    key = {"<leader> p"},
    action = '<esc>+p',
    short_desc = "common"
})
-- paste end ----
------------------------------------------------
-- quit start ----
global_mapping.register({
    mode = {'n'},
    key = {"<leader> q"},
    action = ':qa<cr>',
    short_desc = "common"
})
global_mapping.register({
    mode = {"n"},
    key = {"<leader> q w"},
    action = ':qaw<cr>',
    short_desc = "Directly Quit After Write"
})
-- quit end ----
------------------------------------------------
-- read start ----
global_mapping.register({
    mode = {"n"},
    key = {"<leader>", "r", "d"},
    action = ':read !date <cr>',
    short_desc = "Read Date From System"
})
-- read end ----
------------------------------------------------
-- save start ----
global_mapping.register({
    mode = {"n"},
    key = {"<leader>", "s", "s"},
    action = ':w<cr>',
    short_desc = "Save Current Buffer"
})

global_mapping.register({
    mode = {"n"},
    key = {"<leader>", "s", "a"},
    action = ':wa<cr>',
    short_desc = "Save All Buffers"
})
-- save end ----
------------------------------------------------

global_mapping.setup = function()
    -- local plugin_mapping=require('')
end

return global_mapping
