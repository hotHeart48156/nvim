FEATURES={}
FEATURES['basic']=true
FEATURES['themes']=true
FEATURES['nvim_cmp']=true
FEATURES['git']=true
FEATURES['telescope']=true
FEATURES['debug']=true
FEATURES['markdown']=true
FEATURES['treesitter']=true
FEATURES['snippets']=true
FEATURES['misc']=true
vim.g.theme = 'light'
SERVERS = { "sumneko_lua","pyright","rust_analyzer" }
require ('core.default_setting')
require('core.plugins').setup()
require('core.mapping').setup()
require('core.plugins').create_mapping()




