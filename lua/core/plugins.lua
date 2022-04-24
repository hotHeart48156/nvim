local plugins_configure = {}
plugins_configure.plugins_groups={}
plugins_configure.plugin_configure_root = 'configure.'
plugins_configure.all_loaded_module={}
local plugins= {}

plugins['basic'] = {
  "basic.nerd_commenter",       -- for quick comment
  "basic.ultisnips",
  'basic.auto_pairs',
  'basic.nerd_font'
  }

plugins['lsp'] = {
  'nvim_cmp.lsp_config',
  'nvim_cmp.nvim_cmp',
  'nvim_cmp.cmp_buffer',
  'nvim_cmp.cmp_cmdline',
  'nvim_cmp.cmp_lua',
  'nvim_cmp.cmp_luasnip',
  'nvim_cmp.cmp_path',
  'nvim_cmp.cmp_spell',
  'nvim_cmp.cmp_tabnine'
}

plugins['themes'] = {
   'themes.material',
   'basic.dashboard',
   'themes.colorizer '
}

plugins['tree'] = {
   'treesitter.nvim_treesitter'
}

plugins['telescope'] = {
   'telescope.telescope',
   'telescope.telescope_fzf_native',
   'telescope.telescope_live_grep_raw',
   'telescope.telescope_ui_select',
   'telescope.telescope_vim_bookmarks',
   'telescope.vim_bookmarks'
}


plugins['git'] = {
   'git.'
}

plugins['snippets'] = {
   'snippets.friendly-snippert',
   'snippets.sources_lua_snip'
}

plugins['markdown'] = {
   'markdown.md_image'
}


for feature_name,plugin_s in pairs(plugins) do
    if FEATURES[feature_name]==true then
        --plugins_configure.plugins_groups[feature_name]             
        --local result={}
        --for _,p in ipairs(plugin_s) do
        --    result[p]={disable=false}
        --end
    end
end



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
	    ['nvim_cmp.lsp_config']={disable=false},
            ['nvim_cmp.nvim_cmp']={disable=false}
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
