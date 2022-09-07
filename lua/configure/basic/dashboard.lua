local plugin = {}
plugin.core = {"glepnir/dashboard-nvim"}
plugin.core.setup = function()
end

plugin.core.config = function()
    vim.g.dashboard_session_directory = vim.fn.stdpath('cache') .. "/session"
    local db = require('dashboard')
    db.custom_center = {{
        icon = '  ',
        desc = 'Recently latest session                  ',
        shortcut = 'SPC s l',
        action = 'SessionLoad'
    }}
    db.custom_header={"yes today"}
    db.custom_footer = {"🐬 Have A Good Day!"}

end

plugin.mapping = function()
end

return plugin
