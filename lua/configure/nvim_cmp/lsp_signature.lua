local plugin={}
plugin.core={"ray-x/lsp_signature.nvim"}
plugin.core.setup=function()
end
plugin.core.config=function()
    require('lsp_signature').setup(
        {
            debug=true,--enable debug logging
            log_path=vim.fn.stdpath('cache')..'lsp_signature.log',--if debug is on then and the default
            --log file is log_path ~/.cache/nvim/cache/lsp_signature.log this is defualt setting
            bing = true,--this is mandatory('强制的'),border config won't be registered otherwize
            --the border won't display. this is defualt setting
            doc_lines = 10,--this setting only take effect in insert mode(i mode),it does not affect
            --signature help in normal mode
            floating_window = true,--show hint(提示) in a floating window,set to false for virtual text
            --only mode (V mode)
            floating_window_off_x = 1,-- adjust float windows x position ,
            --1 may be thought of as a quantitative true
            floating_window_off_y = 1,--adjust float windows y position
            fix_pos = true,-- if set to true, the float window will not auto-close 
            --until finish all parameter
            hint_enable = true,-- enable virtual hint
            -- hint_prefix="🐼",-- set pands for parameter
            hint_scheme='String',
            hi_parameter='LspSignatureActiveParameter',
            max_height= 12,--max height of signature floating window ,the line will be wrapped if exceed
            -- I think it's possible 12% height of nvim height 
            max_width = 80,--max width of floating window ,max 80 precent of nvim width
            handler_opts = {
                border = 'rounded'--the border can be set to double , round , shadow , none
            },
            always_trigger = false,-- show signature on new line or in middle or parameter can be confusing
            auto_close_after = nil, -- auto close signature floating window in ? second default is nil,
            --cant be close
            transparency = nil , --all floatting window transparent value is 0-100
            shadow_bled = 36,-- if use shadow as border this set the opcity
            shadow_guibg = 'Black',--border color this value can be set exanple 'Green' or '#123185'
            time_interval = 50, -- defailt time check interval set lower value
            toggle_key = nil -- toggle signature on in inseart mode
            

        }
    )
end
plugin.mapping=function()
end
return plugin
