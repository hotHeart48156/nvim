local plugin = {}

plugin.core = {"saadparwaiz1/cmp_luasnip"}

plugin.core.setup = function()
end

plugin.core.config=function()
	-- require 'cmp'.setup{
	--    snippet = {
	--      expand=function(args)
	--      	require 'luasnip'.lsp_expand(args.body)
	--      end
	--    }
	-- }
end     
plugin.core.sources={name="luasnip"}
plugin.mapping=function()
end
return plugin
