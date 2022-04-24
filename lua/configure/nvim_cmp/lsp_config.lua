local plugin = {}
plugin.core = {
    "neovim/nvim-lspconfig",
}

plugin.core.setup=function()
end
plugin.core.disable=false
plugin.core.opt=false
plugin.core.config=function()
        local util = require("lspconfig.util")
        root_dir=function(name)
            return util.root_pattern(".git", "setup.py", "setup.cfg", "pyproject.toml", "requirements.txt")(name) or util.path.dirname(name)
        end
	-- todo if global varible enable python exec sudo npm i g pyright; if not sudoer then tip 
        cmd={ "pyright-langserver", "--stdio" }
        filetypes = { "python" }
        settings = {
                python = {
                    analysis = {
                        autoSearchPaths = true,
                        diagnosticMode = "workspace",
                        useLibraryCodeForTypes = true
                    }
                }
            }

    end
plugin.mapping=function()
end
return plugin
