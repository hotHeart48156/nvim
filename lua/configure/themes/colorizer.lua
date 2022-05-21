local plugin = {}

plugin.core = {
    "norcalli/nvim-colorizer.lua",
    as = "nvim-colorizer",
    setup = function() -- Specifies code to run before this plugin is loaded.

    end,

    config = function() -- Specifies code to run after this plugin is loaded
        require 'colorizer'.setup {
            '*'; -- Highlight all files, but customize some others.
            css = { rgb_fn = true; }; -- Enable parsing rgb(...) functions in css.
            html = { names = false; } -- Disable parsing "names" like Blue or Gray
          }
    end
}

plugin.mapping = function()

end
return plugin
