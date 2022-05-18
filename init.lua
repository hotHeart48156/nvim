------------------------ Packer Begin--------------------------------------------------------------------------------
local fn = vim.fn
--local execute = vim.api.nvim_command
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
    "git",
    "clone",
    "https://gitcode.net/mirrors/wbthomason/packer.nvim",
    install_path,
  })
end
 status_ok, packer = pcall(require, "packer")
if not status_ok then
   print("err")
   return
end
packer.init {
    git = {
        depth = 1, -- Git clone depth
        clone_timeout = 600, -- Timeout, in seconds, for git clones
        --default_url_format = 'https://github.com/%s' -- Lua format string used for "aaa/bbb" style plugins
    }
}
--this code only can being write in init.lua or nvim/lua/plugins.lua
-------------------------Packer End --------------------------------------------------------------------------------
require('core')
