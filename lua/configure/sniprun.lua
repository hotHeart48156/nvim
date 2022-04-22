local plugin = {}

plugin.core = {"michaelb/sniprun"}
plugin.core.run="bash ./install.sh"
plugin.core.setup = function()

end

plugin.core.config = function()
    local sniprun=require("sniprun")
    sniprun.setup(
	{
	    selected_interpreters={},
	    repl_enable={},
	    repl_disable={},
	    interpreter_options={
		GFM_original={
			use_on_filetypes={"markdown.pandoc"}
		}
	    },
	    display={
		"Classic",
		"VirtualTextOk",
		"Terminal",

	    },
	    display_option = {
		terminal_width=45,
		notification_timeout=5
	    }
	}
    )
end

plugin.mapping = function()
end
