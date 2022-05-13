FEATURES={}
FEATURES['basic']=true
FEATURES['themes']=true
FEATURES['nvim_cmp']=true
FEATURES['git']=true
FEATURES['tree']=true
FEATURES['telescope']=true
FEATURES['debug']=true
FEATURES['markdown']=true
FEATURES['treesitter']=true
FEATURES['snippets']=true
--FEATURES['misc']=true
require ('core.default_setting')
require('core.plugins').setup()
require('core.mapping').setup()
vim.g.theme = "light"