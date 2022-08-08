local plugin={}
plugin.core={"nvim-orgmode/orgmode"}
plugin.core.config=function () end
plugin.core.setup=function()
  -- require('orgmode').setup_ts_grammar()
end
plugin.mapping=function() end
return plugin
