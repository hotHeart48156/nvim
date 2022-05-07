local plugin = {}

plugin.core = {"hrsh7th/cmp-path"}

plugin.core.setup = function()
end

plugin.core.config=function()
    require('cmp').setup({
  sources = {
    {
      name = 'path',
      option = {
        -- Options go into this table
      },
    },
  },
})
end     

plugin.mapping=function()
end
return plugin
