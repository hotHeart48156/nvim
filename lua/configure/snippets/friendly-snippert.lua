local plugin = {}

plugin.core = {"rafamadriz/friendly-snippets"}

plugin.core.setup = function()
end

plugin.core.config=function()
	local luasnip=require('luasnip')
	luasnip.filetype_extend('python')
end     

plugin.mapping=function()
end
