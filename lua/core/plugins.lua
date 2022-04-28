local plugins_configure = {}
plugins_configure.plugins_groups={}
plugins_configure.plugin_configure_root = 'configure.'
plugins_configure.all_loaded_module={}


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


local packages={

basic = 'basic',
lsp = 'nvim_cmp',
themes = 'themes',
tree = 'treesitter',
telescope = 'telescope',
debug = 'debug',
git = 'git',
markdown = 'markdown',
snippets = "snippets",
}

for name,package in pairs(packages) do
	packages[name]=package.."."
end

local plugins= {}
--print(vim.fn.glob(vim.fn.fnameescape('.').'/{,.}*/', 1, 1))
--https://gitter.im/neovim/neovim/archives/2019/11/16
local luv=require 'luv'
local f=luv.fs_scandir('.')
-- print(vim.o.runtimepath) return string
-- print(vim.opt.runtimepath:get()) api local way
-- print(vim.api.nvim_list_runtime_paths()) --api way
local nvim_config_path=vim.api.nvim_list_runtime_paths()[1]..'/lua/'..plugins_configure.plugin_configure_root:sub(1,-2)
local  function list_dir(path)
    local fs_t=luv.fs_scandir(path)
    local file_name,file_type=luv.fs_scandir_next(fs_t)
    if not file_name then 
        return
    end
    print(file_name:sub(1,1))
    if file_type=='directory' and file_name:sub(1,1)~='_' then
        print(path..'/'..file_name)
        list_dir(path..'/'..file_name)
        print("cc")
    else 
        local file_name,file_type=luv.fs_scandir_next(fs_t)
        print(file_name)
    end
end
list_dir(nvim_config_path)

plugins[packages['basic']] = {
   packages['basic'].."nerd_commenter",       -- for quick comment
   packages['basic'].."ultisnips",
   packages['basic']..'auto_pairs',
  }

plugins[packages['lsp']] = {
 packages['lsp']..'lsp_config',
 packages['lsp']..'nvim_cmp',
 packages['lsp']..'cmp_buffer',
 packages['lsp']..'cmp_cmdline',
 packages['lsp']..'cmp_lua',
 packages['lsp']..'cmp_luasnip',
 packages['lsp']..'cmp_path',
 packages['lsp']..'cmp_spell',
 packages['lsp']..'cmp_tabnine'
}

plugins[packages['themes']] = {
   packages['themes']..'material',
   packages['basic']..'dashboard',
   packages['themes']..'colorizer'
}

plugins[packages['tree']] = {
   packages['tree']..'nvim_treesitter'
}

plugins[packages['telescope']] = {
   packages['telescope']..'telescope',
  -- packages['telescope']..'telescope_fzf_native',
  -- packages['telescope']..'telescope_live_grep_raw',
  -- packages['telescope']..'telescope_ui_select',
  -- packages['telescope']..'telescope_vim_bookmarks',
   packages['telescope']..'vim_bookmarks'
}

plugins[packages['debug']] = {
   packages['debug']..'sniprun'
}

plugins[packages['git']] = {
   packages['git']..'git_signs',
   packages['git']..'diff_view',
}

plugins[packages['snippets']] = 
{
   packages['snippets']..'friendly-snippert',
   packages['snippets']..'sources_lua_snip'
}

plugins[packages['markdown']] = {
   packages['markdown']..'markdown_image'
}


for feature_name,plugin_s in pairs(plugins) do
    if FEATURES[feature_name:sub(1,-2)]==true then
        --plugins_configure.plugins_groups[feature_name]             
        local result={}
        for _,p in ipairs(plugin_s) do
           result[p]={disable=false}
        end
	plugins_configure.plugins_groups[feature_name]=result
    end
end


--if FEATURES['default'] == true then
--  plugins_configure.plugins_groups['default']=
--   {
--	#       ["basic.nerd_commenter"] = {disable=false},       -- for quick comment
--	#      ["basic.ultisnips"] = {disable=false}
--	# }
--	#end

--	#if FEATURES['lsp']==true then
--	#	plugins_configure.plugins_groups['lsp']=
--
--
--#	{
--		#    ['nvim_cmp.lsp_config']={disable=false},
--		# ['nvim_cmp.nvim_cmp']={disable=false}
--		#}
--		#end
--
--		#if FEATURES['themes']==true then 
---		#plugins_configure.plugins_groups['themes']=
--		#	{
--			# ["themes.material"]={disable=false},
--			# ['basic.dashboard']={disable=false}
--			#	}
--			#end


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
            if FEATURES[feature_name:sub(1,-2)]==true then
                for plugin , plugin_status in pairs(plugins) do 
		    print(plugin)
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
