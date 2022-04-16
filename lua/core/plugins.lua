local plugins_configure = {}
plugins_configure.plugins_groups={}
plugins_configure.plugin_configure_root = 'configure.'


if FEATURES['default'] == true then
   plugins_configure.plugins_groups['default']=
   {
       ["nerd_commenter"] = {enable=true},       -- for quick comment
       ["ultisnips"] = {enable=true}
   }
end

plugins_configure.create_mapping=function()
    for feature_name,plugins in pairs(plugins_configure.plugins_groups) do
        if FEATURES[feature_name]==true then
           for plugin,active in pairs(plugins) do
                if active['enable'] == true then
                    require(plugins_configure.plugin_configure_root..plugin).mapping()
                end
           end
        end
    end

end

plugins_configure.setup=function()
    packer.startup(
    function(use)
        for feature_name,plugins in pairs (plugins_configure.plugins_groups) do
            if FEATURES[feature_name]==true then
                for plugin , plugins_status in pairs(plugins) do 
                    core = require(plugins_configure.plugin_configure_root..plugin).core
                    --for plugin,status in pairs(plugin_status) do 
                     -- core[key] = value  
                    --end
                    
                    if core.disable == false then
                        plugins_configure.all_loaded_module[plugin_name] = true-- added to all_loaded_module
                    end

                     use(core)
		     plugins_configure.create_mapping()
                end
            end
        end
    end
    )
end

return plugins_configure
