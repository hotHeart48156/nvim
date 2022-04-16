FEATURES={}
FEATURES['default']=true
FEATURES['colors']=true
FEATURES['themes']=true


require ('core.default_setting')
require('core.plugins').setup()
--require('core.plugins').create_mapping()
require('core.mapping').set_up()

