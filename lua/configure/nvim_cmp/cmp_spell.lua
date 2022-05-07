local plugin = {}

plugin.core = {"f3fora/cmp-spell"}

plugin.core.setup = function()
end

plugin.core.config=function()
	require('cmp').setup {
  sources = {
    { name = 'spell' }
  }
}
end     

plugin.mapping=function()
end
return plugin
