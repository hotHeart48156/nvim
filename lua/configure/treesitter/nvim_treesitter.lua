local plugin = {}

plugin.core = {"nvim-treesitter/nvim-treesitter"}

plugin.core.setup = function()
end
plugin.core.config = function()
	require('nvim-treesitter.configs').setup{
	   ensure_installed = { "cpp", "c", "python", "go", "markdown", "json", "yaml", "html", "lua" ,"org"},
     sync_install = true,
	   highlight={
	     enable=true,
	     additional_vim_regex_highlighting = {'org'},
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
	   },
		 context_commentstring = {
    enable = true,
    config = {
      -- Languages that have a single comment style
      typescript = "// %s",
      css = "/* %s */",
      scss = "/* %s */",
      html = "<!-- %s -->",
      svelte = "<!-- %s -->",
      vue = "<!-- %s -->",
      json = "",
    },
  },
	textobjects = {
    swap = {
      enable = false,
    },
    select = {
      enable = true,
      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
    move = {
      enable = true,
      set_jumps = false, -- whether to set jumps in the jumplist
      goto_next_start = {
        ["]]"] = "@function.outer",
        -- ["]["] = "@function.outer",
      },
      goto_next_end = {
        ["]["] = "@function.outer",
        -- ["]["] = "@class.outer",
      },
      goto_previous_start = {
        ["[["] = "@function.outer",
        -- ["[]"] = "@function.outer",
      },
      goto_previous_end = {
        ["[]"] = "@function.outer",
        -- ["[]"] = "@class.outer",
      },
    },
    lsp_interop = {
      enable = false,
      border = 'none',
      peek_definition_code = {
        ["<leader>pf"] = "@function.outer",
        ["<leader>pF"] = "@class.outer",
      },
    },
  },
  textsubjects = {
    enable = false,
    keymaps = { ["."] = "textsubjects-smart", [";"] = "textsubjects-big" },
  },
  playground = {
    enable = false,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = "o",
      toggle_hl_groups = "i",
      toggle_injected_languages = "t",
      toggle_anonymous_nodes = "a",
      toggle_language_display = "I",
      focus_language = "f",
      unfocus_language = "F",
      update = "R",
      goto_node = "<cr>",
      show_help = "?",
    },
  },
  rainbow = {
    enable = false,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
  },
  autotag = { enable = false },
  -- matchup plugin
  -- https://github.com/andymass/vim-matchup
  matchup = {
    enable = false, -- mandatory, false will disable the whole extension
    -- disable = { "c", "ruby" },  -- optional, list of language that will be disabled
    -- [options]
  },
  -- autopairs plugin
  autopairs = {
    enable = false,
  },
	}
end
plugin.core.run=':TSUpdate'

plugin.mapping = function()
end

return plugin
