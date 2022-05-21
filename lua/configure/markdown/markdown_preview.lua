local plugin = {}
plugin.core = {"iamcco/markdown-preview.nvim"}
plugin.core.run = function()
    vim.fn["mkdp#util#install"]()
end
plugin.core.setup = function()
    -- todo set image store dir and image name ; need xclip 
end
-- use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
plugin.core.config = function()
end

plugin.core.mapping = function()
end
return plugin
