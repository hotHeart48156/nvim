local cmp = {}
cmp.core = {
    "hrsh7th/nvim-cmp"
}
cmp.core.setup=function()
end
cmp.core.config=function()
   local cmp= require 'cmp'
   cmp.setup(
         {
	   snippet={
	      expand= function (args)
		      vim.fn["vsnip#anonymous"](args.body)
	      end
	   },
	   window={
		completion = cmp.config.window.bordered(),
      		documentation = cmp.config.window.bordered(),
	   },
	   sources= cmp.config.sources(
	       {name='nvim_lsp'},
	       {name='vsnip'},
	       {name='buffer'}
--	       {name='luasnip'},--luasnip user
--	       {name='ultisnips'},--for ultisnips user
--	       {name='snippy'}--for snippt user
	   ),
           mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), 
      -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
	
	 }
       
    )
    cmp.setup.filetype(
       'gitcommit',
       {sources=cmp.config.sources(
          {
             {name='cmp_git'},
             {name='buffer'}
          }
        )
       }
    )
    cmp.setup.cmdline(
    '/',
    {
    mapping = cmp.mapping.preset.cmdline(),
    sources={
           {name='buffer'} 
       }
   })
   cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })


end
cmp.core.formatting={
    field = {"kind","abbr","menu"},
    format = function(entry,item)
    	--item.kind=string.format("%s %s")
    item.menu=(

	{
		nvim_lsp="{LSP}",
		cmp_tabnine="[TabNine]",
		nvim_lua="[NVIM_LUA]",
		luasnip="[Snippets]",
		buffer="[Buffer]",
		spell="[Spell]",
		path = "[Path]"
	
	}
    )
end

}
cmp.mapping=function()
    
end
return cmp
