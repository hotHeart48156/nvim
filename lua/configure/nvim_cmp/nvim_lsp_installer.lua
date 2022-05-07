local plugin={}
plugin.core={"williamboman/nvim-lsp-installer"}

plugin.core.setup=function()
    
end

plugin.core.config=function()
    local lsp_install=require('nvim-lsp-installer')
    -- lsp setup begin
    lsp_install.setup(
    {
        ensure_installed = {'rust_analyzer','sumneko_lua'},
	automatic_installation = true,
	ui = {
	    icons = {
		server_installed = "✓",
                server_pending = "➜",
                server_uninstalled = "✗"
		}
	  },
        pip = {
	    install_args = 
                    {
		"-i","https://pypi.tuna.tsinghua.edu.cn/simple"
		    }
	    }
    }
    )
    -- lsp setup end
    lsp_install.on_server_ready(
        function(server)
            local opts={

            }
            if server.name == 'clantd' then 
                --local clangd=require('')

        end
    )



end

plugin.mapping=function()
end
return plugin
