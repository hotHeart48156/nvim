local default_setting={}
default_setting['opt']=
    {
	-- basic
	number = true,
	relativenumber = true,
	history = 1000,
	maxmempattern = 2000,
	syntax = 'on',
	-- file encoding
	encoding = 'utf-8',
	fileencodings = "utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,latin1",
	-- tab
	--tapstop = 4,
	shiftwidth = 4,
	expandtab = true,
	-- folder
	foldenable = true,
	-- compelete
	completeopt = "menuone,noselect",
	-- terminal
	termguicolors = true, 
	colorcolumn = "99999",
    }
default_setting['global']=
    {
        mapleader = ' ',
       maplocalleader = ' ',
    }
for key,value in pairs(default_setting['opt']) do
    vim.o[key]=value
end

for ket,value in pairs(default_setting['global']) do
    vim.g.key=value
end
