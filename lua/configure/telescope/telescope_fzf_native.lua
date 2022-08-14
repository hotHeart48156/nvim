local plugin = {}

plugin.core = {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
}

plugin.core.setup = function()
end

plugin.core.config = function()
end

plugin.mapping = function()
end
return plugin
