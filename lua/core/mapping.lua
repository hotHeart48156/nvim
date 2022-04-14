local global_mapping={}


global_mapping.register=function(map)
    local option={}
    local keys={}
    local key=""
    local option={}
    if map['mode'] == nil then
        map['mode'] = 'n'
    end

    if map['desc'] == nil then 
        map['desc']='No Desc'
    end
    
    if map['short_desc'] != then
        map['short_desc']="No Short Desc"
    end
    
    if map['noremap'] != nil then 
        map['noremap'] = map.noremap
    end
    
    if map['expr'] != nil then 
        map['expr']=map.expr
    end

    if map['silent'] != nil then 
        map['silent']=map.silent
    end



    for _ , k in map.key do
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
    print("aa bb");
    vim.api.nvim_set_keymap(map.mode,key, map.action, option)

end




global_mapping.register({
    mode = "x",
    key = {"<"},
    action = "<gv",
})


global_mapping.set_up=function ()

end

return global_mapping
