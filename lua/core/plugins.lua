local plugins_configure = {}
plugins_configure.plugins_groups = {}
plugins_configure.plugin_configure_root = 'configure.'
plugins_configure.all_loaded_module = {}

function print_r(t)
    local print_r_cache = {}
    local function sub_print_r(t, indent)
        if (print_r_cache[tostring(t)]) then
            print(indent .. "*" .. tostring(t))
        else
            print_r_cache[tostring(t)] = true
            if (type(t) == "table") then
                for pos, val in pairs(t) do
                    if (type(val) == "table") then
                        print(indent .. "[" .. pos .. "] => " .. tostring(t) .. " {")
                        sub_print_r(val, indent .. string.rep(" ", string.len(pos) + 8))
                        print(indent .. string.rep(" ", string.len(pos) + 6) .. "}")
                    else
                        print(indent .. "[" .. pos .. "] => " .. tostring(val))
                    end
                end
            else
                print(indent .. tostring(t))
            end
        end
    end
    sub_print_r(t, "  ")
end

local plugins = {}
local luv = require 'luv'
local all_plugin_configure_file = {}
local nvim_config_path = vim.api.nvim_list_runtime_paths()[1] .. '/lua/' ..
                             plugins_configure.plugin_configure_root:sub(1, -2)
local fs_t = luv.fs_scandir(nvim_config_path)
local function traverse_directory(root_path, super_node, node)
    if node == nil then
        return
    end
    local file_name, file_type = luv.fs_scandir_next(node)
    if file_type == 'directory' then
        if file_name:sub(1, 1) ~= '_' and file_name:sub(1, 1) ~= '.' then
            local old_node = node
            local new_node = luv.fs_scandir(root_path .. '/' .. file_name)
            local super_path = root_path .. '/' .. file_name
            --              print('entry directory:'..super_path)
            traverse_directory(super_path, old_node, new_node)
        end
    end
    if file_type == 'file' then
        if file_name:sub(1, 1) ~= '_' and file_name:sub(1, 1) ~= '.' then
            table.insert(all_plugin_configure_file, root_path .. '/' .. file_name)
            traverse_directory(root_path, super_node, node)
        else
            traverse_directory(root_path, super_node, node)
        end
    end

    if root_path == nvim_config_path then
        return
    end

    if file_type == nil then
        local i = root_path:match('.*' .. '/()')
        local super_path = root_path:sub(1, i - 2)
        local super_fs = super_node
        --              print('return directory :'..super_path)
        traverse_directory(super_path, fs_t, super_fs)
    end
end

traverse_directory(nvim_config_path, nil, fs_t)

for _, path in ipairs(all_plugin_configure_file) do
    local cut_attribute_path = path:sub(1, -5)
    local configure_index = cut_attribute_path:match('.*configure()')
    local path_len = cut_attribute_path:len()
    local package_sort_path = cut_attribute_path:sub(configure_index - path_len)
    local header_index = package_sort_path:match('.*/()')
    if header_index == nil then
        header_index = package_sort_path:len()
    end
    local header = package_sort_path:sub(1, header_index - 2)
    local header = header:gsub('/', '.')
    local package = package_sort_path:gsub('/', '.')
    if plugins[header] == nil then
        plugins[header] = {}
    end
    table.insert(plugins[header], package)
end

for feature_name, plugin_s in pairs(plugins) do
    if FEATURES[feature_name:sub(1, -2)] == true then
        -- plugins_configure.plugins_groups[feature_name]             
        local result = {}
        for _, p in ipairs(plugin_s) do
            result[p] = {
               -- disable = false
            }
        end
        plugins_configure.plugins_groups[feature_name] = result
    end
end

plugins_configure.create_mapping = function()

    for feature_name, _plugins in pairs(plugins) do
        if FEATURES[feature_name] == true then
            for _, plugin in pairs(_plugins) do
                local plugin = require(plugins_configure.plugin_configure_root .. plugin)
                if plugin.core['disable'] == false then
                    if plugin.mapping then
                        plugin.mapping()
                    end
                end
            end
        end
    end

end

plugins_configure.setup = function()
    packer.startup(function()
        for feature_name, _plugins in pairs(plugins) do
            if FEATURES[feature_name] == true then
                for _, plugin in ipairs(_plugins) do
                    core = require(plugins_configure.plugin_configure_root .. plugin).core
                    core['disable'] = false
                    if core.disable == false then
                        plugins_configure.all_loaded_module[plugin] = true
                    end
                    use(core)
                end
            end
        end
    end)
end

return plugins_configure
