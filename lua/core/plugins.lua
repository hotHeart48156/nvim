local plugins_configure = {}
plugins_configure.plugin_configure_root = 'configure.'


if FEATURE_GROUPS['default'] == true then
   plugins_configure.plugins_groups['default']
   =
   {
       ["nerd_commenter"] = {enable=true},       -- for quick comment
       ["ultisnips"] = {disable=false}
   }
end


plugins_configure.setup=function()
    packer.startup(
    function()
        for option,plugins in plugins_configure.plugins_groups do
            
            if FEATURES[option]==true then
                for plugin , plugins_status in plugins do 

                    core = require(plugins_configure.plugin_configure_root..plugin.core)
                    for plugin,status in plugin_status do 
                      core[key] = value  
                    end
                    
                    if core.disable == false then
                        plugins_configure.all_loaded_module[plugin_name] = true-- added to all_loaded_module
                    end

                     use(core)
                end
            end
        end


    end

    )

end





return plugins_configure
