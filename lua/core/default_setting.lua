local default_setting={}
default_setting['opt']=
    {
	-- basic
	number = true,
	backup = false,
	relativenumber = true,
	history = 1000,
	maxmempattern = 2000,
	syntax = 'on',
	-- cursorline = true,
	-- file encoding
	encoding = 'utf-8',
	-- fileencodings = "utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,latin1",
	-- tab
	tabstop = 2,	
	shiftwidth = 2,
    softtabstop=4,
	expandtab = true,
	-- folder
	foldenable = true,
	-- compelete
	completeopt = "menuone,noselect",
	-- terminal
	termguicolors = true, 
	colorcolumn = "99999",
	--smart
	smartcase = true,
	smartindent = true,
	-- updatetime = 300,
	--floder
	foldmethod  = 'expr',
  wrap=true
	-- foldlevel = 99
    }
default_setting['global']=
    {
       mapleader = '<Space>',
       maplocalleader = '<Space>',
    }
for key,value in pairs(default_setting['opt']) do
    vim.o[key]=value
end

for key,value in pairs(default_setting['global']) do
    vim.g.key=value
	-- print("hello"..tostring(key)..vim.g.key)
end
