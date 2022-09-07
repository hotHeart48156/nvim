local plugin={}
plugin.core={"nvim-orgmode/orgmode"}
plugin.core.config=function ()
  require('orgmode').setup_ts_grammar()
  require('orgmode').setup({
    org_agenda_files = {'~/.org/*', '~/.org/**/*'},
    org_default_notes_file = '~/.org/refile.org',
  })end
plugin.core.setup=function()
  -- require('orgmode').setup_ts_grammar()
end
plugin.mapping=function() end
return plugin
