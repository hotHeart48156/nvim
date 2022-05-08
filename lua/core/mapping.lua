local global_mapping={}


global_mapping.register=function(map)
    local option={}
    local keys={}
    local key=" "
    local option={}
    local map_key_default_value={}
    local map_option_default_value={}
    if map['mode'] == nil then
        map['mode'] = 'n'
    end
    if type(map['mode'])==table then 
        for i,v in ipairs(map['mode']) do
            map['mode']=v
            if val == nil then
                print("The mode list is not support nil.")
            end
            global_mapping.register(map)
        end

    end

    map_key_default_value['desc'] = 'No Desc'
    map_key_default_value['short_desc'] = 'No Short Desc'

    map_option_default_value['noremap'] = nil
    map_option_default_value['expr'] = nil
    map_option_default_value['silent'] = nil

    for k,v in pairs(map_key_default_value) do 
        if map[k]==nil then
            map[k]=v
        end
    end
    
    for k,v in pairs(map_option_default_value) do
        if map[k]==nil then 
            option[k]=v
        else 
            option[k]=map[k]
        end
    end

--:checkhealth provider
    for _ , k in pairs(map.key) do
        if k=='<leader>' then
            key=k..vim.g.mapleader
        end

        if k=='<localleader>' then 
            key=k..vim.g.maplocalleader
        end

        if k == vim.g.mapleader then
            table.insert(keys, "<leader>")
        elseif k == vim.g.maplocalleader then
            table.insert(keys, "<localleader>")
        else
            table.insert(keys, k)
        end

    end
    --todo check used key
    --todo which auto tip
    vim.api.nvim_set_keymap(map.mode, key ,map.action, option)

end




--global_mapping.register({
--    mode = "x",
--    key = {"<"},
--    action = "<gv",
--})


global_mapping.set_up=function ()
--todo register indent_line key if indent_line exist
--todo which register mapping_prefix
end

return global_mapping
