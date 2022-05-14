local plugin={}
plugin.core={"lewis6991/impatient.nvim"}

plugin.core.setup=function()
    
end

plugin.core.config=function()
    require'impatient'.enable_profile()
end

return plugin
