local plugins_configure = {}
plugins_configure.plugins_groups={}
plugins_configure.plugin_configure_root = 'configure.'
plugins_configure.all_loaded_module={}

if FEATURES['default'] == true then
   plugins_configure.plugins_groups['default']=
   {
       ["basic.nerd_commenter"] = {disable=false},       -- for quick comment
       ["basic.ultisnips"] = {disable=false}
   }
end

if FEATURES['lsp']==true then
	plugins_configure.plugins_groups['lsp']=
	{
	    ['lsp_config']={disable=false},
  --          ['nvim_cmp.nvim_cmp']={disable=false}
	}
end

if FEATURES['themes']==true then 
	plugins_configure.plugins_groups['themes']=
	{
	    ["themes.material"]={disable=false},
	    ['basic.dashboard']={disable=false}
	}
end

function print_r ( t ) 
    local print_r_cache={}
    local function sub_print_r(t,indent)
        if (print_r_cache[tostring(t)]) then
            print(indent.."*"..tostring(t))
        else
            print_r_cache[tostring(t)]=true
            if (type(t)=="table") then
                for pos,val in pairs(t) do
                    if (type(val)=="table") then
                        print(indent.."["..pos.."] => "..tostring(t).." {")
                        sub_print_r(val,indent..string.rep(" ",string.len(pos)+8))
                        print(indent..string.rep(" ",string.len(pos)+6).."}")
                    else
                        print(indent.."["..pos.."] => "..tostring(val))
                    end
                end
            else
                print(indent..tostring(t))
            end
        end
    end
    sub_print_r(t,"  ")
end

plugins_configure.create_mapping=function()
    for feature_name,plugin_status in pairs(plugins_configure.plugins_groups) do
        if FEATURES[feature_name]==true then
           for plugin,active in pairs(plugin_status) do
                if active['disable'] == false then
                    require(plugins_configure.plugin_configure_root..plugin).mapping()
                end
           end
        end
    end

end

plugins_configure.setup=function()
    packer.startup(
    function()
        for feature_name,plugins in pairs (plugins_configure.plugins_groups) do
            if FEATURES[feature_name]==true then
                for plugin , plugin_status in pairs(plugins) do 
                    core = require(plugins_configure.plugin_configure_root..plugin).core
                    for k,v in pairs(plugin_status) do 
                       core[k] = v  
                    end
                    
                    if core.disable == false then
                        plugins_configure.all_loaded_module[plugin] = true
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
