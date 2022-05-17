local plugin={}

plugin.core=
  {
    "SirVer/ultisnips",
  }

plugin.core.setup=function()
    vim.g.tiSnipsEditSplit = 'vertical'
    vim.g.snips_author = 'Yang Biao'
end

plugin.core.config=function()
    -- vim.g.UltiSnipsExpandTrigger="<leader><tab>"
end

plugin.mapping = function()

end

return plugin
