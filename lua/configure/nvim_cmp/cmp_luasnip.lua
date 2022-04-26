local plugin = {}

plugin.core = {"saadparwaiz1/cmp_luasnip"}

plugin.core.setup = function()
end

plugin.core.config=function()
    require("luasnip.loaders.from_vscode").lazy_load()
    require("luasnip.loaders.from_vscode").load({path={vim.fn.stdpath('config')..snippets}})
end     
plugin.core.sources={name="luasnip"}
plugin.mapping=function()
end
return plugin
