local plugin = {}

plugin.core = {"hrsh7th/cmp-nvim-lua"}

plugin.core.setup = function()
end

plugin.core.config=function()
    require'cmp'.setup {
  sources = {
    { name = 'nvim_lua' }
  }
}
end     

plugin.mapping=function()
end
return plugin
