local plugin = {}
  
plugin.core = {
    "windwp/nvim-autopairs",
    setup = function()  -- Specifies code to run before this plugin is loaded.
       
    end,

    config = function() -- Specifies code to run after this plugin is loaded
        require('nvim-autopairs').setup{
            disable_filetype={
                'TelescopePrompt', "spectre_panel", "dap-repl", "guihua", "guihua_rust", "clap_input"
            },
            check_ts=true,
            ts_config={
                lua={'string'},
                javascript={'template_string'},
                java=true
            },
            fast_wrap = {
              map = '<M-e>',
              chars = { '{', '[', '(', '"', "'" },
              pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
              end_key = '$',
              keys = 'qwertyuiopzxcvbnmasdfghjkl',
              check_comma = true,
              highlight = 'Search',
              highlight_grey='Comment'
    },

        }
    end,
}

plugin.mapping = function()

end
return plugin
