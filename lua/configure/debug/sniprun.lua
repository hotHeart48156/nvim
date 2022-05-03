local plugin = {}

plugin.core = {"michaelb/sniprun"}
plugin.core.run="bash ./install.sh"
plugin.core.setup = function()
end

plugin.core.config = function()
	require 'sniprun'.setup(
        {
                selected_interpreters={},--those block instead of default filetype
                repl_enable={},--repl-link behavior for the given interpreters
                --disable_enable={},
                interpreter_options={
                GFM_original={use_on_filetypes={'markdown.pandoc'}}
                },--configuration key is available for every interpreter
                display={
                   'Classic',--display results in the command-line area
                   'VirtualTextOk',--display ok result as virtual text
                   --'TempFloatingWindow',--display result in a float window
                   --'LongTempFloatingWindow',--same as above , but only long result
                   --'Terminal',--display results in a vertical split
                   --'TerminalWithCode',--display results and code history in a vertical split
                   --'NvimNotify',--display with the nvim-notify plugin
                   --'Api'--display in programming interface
                },
                display_options = {
                   terminal_width=45,--change the terminal display option width
                   notification_timeout=5--timeout for nvim_notify output
                },
                show_no_output= {
                   'Classic',
                   'TempFloatWindow'
                },
                snipruncolors={
                   SniprunVirtualTextOk   =  {bg="#66eeff",fg="#000000",ctermbg="Cyan",cterfg="Black"},
                   SniprunFloatingWinOk   =  {fg="#66eeff",ctermfg="Cyan"},
                   SniprunVirtualTextErr  =  {bg="#881515",fg="#000000",ctermbg="DarkRed",cterfg="Black"},
                   SniprunFloatingWinErr  =  {fg="#881515",ctermfg="DarkRed"},
                },
                inline_messages=0,
                borders='single',
                live_mode_toggle='on'



        }
        )
end

plugin.mapping = function()
end

return plugin
