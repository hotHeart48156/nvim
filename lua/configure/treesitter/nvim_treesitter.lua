local plugin = {}

plugin.core = {"nvim-treesitter/nvim-treesitter"}

plugin.core.setup = function()
end     
plugin.core.config = function()
	require('nvim-treesitter.configs').setup{
	   ensure_installed = { "c", "lua", "rust" ,"cpp"},
           sync_install = true,

	   highlight={
	     enable=true,
	     additional_vim_regex_highlighting = false,
	   },
	   incremental_selection = {
    		enable = true,
    		keymaps = {
      		init_selection = "gnn",
      		node_incremental = "grn",
      		scope_incremental = "grc",
      		node_decremental = "grm",
    		},
    	   },
	   indent={
		   enable=true
	   }
	}
end     
plugin.core.run=':TSUpdate'

plugin.mapping = function()
end   

return plugin
