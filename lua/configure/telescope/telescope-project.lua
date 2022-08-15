local plugin={}
plugin.core={"nvim-telescope/telescope-project.nvim"}
plugin.core.setup=function() end
plugin.core.config=function()
  vim.api.nvim_set_keymap(
    'n',
    '<C-p>',
    ":lua require'telescope'.extensions.project.project{}<CR>",
    {noremap = true, silent = true}
)
 end
return plugin
