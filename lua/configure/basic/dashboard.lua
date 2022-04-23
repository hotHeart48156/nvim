local plugin = {}
plugin.core={"glepnir/dashboard-nvim"}

plugin.core.disable=false
plugin.core.opt=false
plugin.core.setup = function()
        vim.g.dashboard_default_executive = 'telescope'
        vim.g.dashboard_preview_command = 'cat'
        vim.g.dashboard_preview_pipeline = 'lolcat'
        vim.g.dashboard_preview_file_height = 10
        vim.g.dashboard_preview_file_width = 70
       -- vim.g.dashboard_preview_file = vim.g.CONFIG..'/lua/util/neovim.txt'
       -- tips vim.g.CONFIG is nil 
end

plugin.core.config = function()
    vim.g.dashboard_custom_footer = {"🐬 Have A Good Day!"}
    vim.g.dashboard_custom_shortcut = {
            last_session       = 'SPC s l',
            find_history       = 'SPC f h',
            find_file          = 'SPC f f',
            new_file           = 'SPC c f',
            change_colorscheme = 'SPC f c',
            find_word          = 'SPC f q',
            book_marks         = 'SPC f m',
        }
    vim.g.dashboard_session_directory = vim.fn.stdpath('cache').."/session"
end

plugin.mapping=function()
end

return plugin
