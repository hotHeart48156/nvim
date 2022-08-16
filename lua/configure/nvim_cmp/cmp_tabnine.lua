local plugin = {}

plugin.core = {
    "tzachar/cmp-tabnine",
    requires = 'hrsh7th/nvim-cmp'
}
plugin.core.run = 'bash ./install.sh'
plugin.core.setup = function()
end

plugin.core.config = function()
    local tabnine = require('cmp_tabnine.config')
    tabnine:setup({
        max_lines = 100,
        max_num_results = 20,
        sort = true,
        -- run_on_every_keystroke = true,
        snippet_placeholder = '..',
        ignored_file_types = { -- default is not to ignore
            -- uncomment to ignore in lua:
            -- lua = true
        },
        show_prediction_strength = false
    })
end

plugin.mapping = function()
    -- exec command apt insall unzip and chmod u+x tabnine

end
return plugin
