FEATURES={}
FEATURES['default']=true
FEATURES['themes']=true
FEATURES['lsp']=true
vim.g.theme = "light"

require ('core.default_setting')
require('core.plugins').setup()
--require('core.plugins').create_mapping()
require('core.mapping').set_up()

