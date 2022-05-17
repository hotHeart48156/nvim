local plugin={}

plugin.core=
  {
    "SirVer/ultisnips",
    "honza/vim-snippets"
  }

plugin.core.setup=function()
    -- vim.g.tiSnipsEditSplit = 'vertical'
    vim.g.snips_author = 'Yang Biao'
end

plugin.core.config=function()
end

plugin.mapping = function()

end

return plugin
