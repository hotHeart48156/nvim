local cmp = {}
cmp.core = {
    "hrsh7th/nvim-comp"
}
cmp.core.setup=function()
end
cmp.core.config=function()
     require'comp'.setup {
            enabled = true;
            autocomplete = true;
            debug = false;
            min_length = 1;
            preselect = 'enable';
            throttle_time = 80;
            source_timeout = 200;
            resolve_timeout = 800;
            incomplete_delay = 400;
            max_abbr_width = 100;
            max_kind_width = 100;
            max_menu_width = 100;
            documentation = {
                border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
                winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
                max_width = 120,
                min_width = 60,
                max_height = math.floor(vim.o.lines * 0.3),
                min_height = 1,
            };

            source = {
                path = true,
                buffer = true,
                calc = true,
                nvim_lsp = true,
                nvim_lua = true,
                ultisnips = true,
                emoji = true
            };
        }

end
cmp.core.formatting={
    field = {"kind","abbr","menu"}
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
