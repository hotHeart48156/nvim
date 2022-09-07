local plugin = {}
plugin.core={"preservim/vim-markdown"}
plugin.core.setup=function ()
  
end
plugin.core.config=function ()
  vim.g.vim_markdown_math=1
  vim.g.vim_markdown_toc_autofi1=1
end

return plugin
