FEATURES={}
FEATURES['basic']=true
FEATURES['themes']=true
FEATURES['nvim_cmp']=true
FEATURES['git']=true
FEATURES['tree']=true
FEATURES['telescope']=true
FEATURES['debug']=true
FEATURES['markdown']=true
vim.g.theme = "light"
require ('core.default_setting')
require('core.plugins').setup()
--require('core.plugins').create_mapping()
require('core.mapping').set_up()

