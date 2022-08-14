local plugin = {}
plugin.core = {"L3MON4D3/LuaSnip",disable=false}
plugin.core.setup = function()

end
plugin.core.config = function()
  require("luasnip.loaders.from_vscode").lazy_load() -- load freindly-snippets
  require("luasnip.loaders.from_vscode").load({ paths = { -- load custom snippets
    vim.fn.stdpath("config") .. "/my-snippets"
  } }) -- Load snippets from my-snippets folder
end
plugin.mapping = function()

end
return plugin
