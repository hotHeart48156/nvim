local plugin={}

plugin.core
=
{
    "SirVer/ultisnips",
    
    setup=function()
        vim.g.UltiSnipsEditSplit = 'vertical',
        vim.g.snips_author = 'Yang Biao',
    end,
    
    config=function()
        vim.g.UltiSnipsExpandTrigger="<leader><tab>"
    end
}
plugin.mapping=function()

end

return plugin
