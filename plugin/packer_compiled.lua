-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Auto-Pairs"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/Auto-Pairs",
    url = "https://github.com/vim-scripts/Auto-Pairs"
  },
  ["DAPInstall.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/DAPInstall.nvim",
    url = "https://github.com/ravenxrz/DAPInstall.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-spell/after/plugin/cmp-spell.lua" },
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["cmp-tabnine"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-tabnine/after/plugin/cmp-tabnine.lua" },
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  cmp_luasnip = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    config = { "\27LJ\2\nπ\1\0\0\a\0\v\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0005\2\t\0004\3\3\0006\4\4\0009\4\5\0049\4\6\4'\6\a\0B\4\2\0026\5\b\0&\4\5\4>\4\1\3=\3\n\2B\0\2\1K\0\1\0\tpath\1\0\0\rsnippets\vconfig\fstdpath\afn\bvim\tload\14lazy_load luasnip.loaders.from_vscode\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  colorschemes = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/colorschemes",
    url = "https://github.com/lunarvim/colorschemes"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\nÎ\2\0\0\4\0\v\0\0196\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0006\1\0\0009\1\a\0019\1\b\1'\3\t\0B\1\2\2'\2\n\0&\1\2\1=\1\6\0K\0\1\0\r/session\ncache\fstdpath\afn dashboard_session_directory\1\0\a\17find_history\fSPC f h\23change_colorscheme\fSPC f c\17last_session\fSPC s l\14find_word\fSPC f q\rnew_file\fSPC c f\15book_marks\fSPC f m\14find_file\fSPC f f\30dashboard_custom_shortcut\1\2\0\0\26üê¨ Have A Good Day!\28dashboard_custom_footer\6g\bvim\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  material = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/material",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["md-img-paste.vim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/md-img-paste.vim",
    url = "https://github.com/ferrine/md-img-paste.vim"
  },
  nerdcommenter = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nerdcommenter",
    url = "https://github.com/preservim/nerdcommenter"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n¥\4\0\0\a\0\16\1\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0036\4\a\0009\4\b\0046\6\t\0009\6\n\0069\6\v\6\24\6\0\6B\4\2\2=\4\f\3=\3\r\0025\3\14\0=\3\15\2B\0\2\1K\0\1\0\vsource\1\0\a\14ultisnips\2\rnvim_lua\2\vbuffer\2\tcalc\2\rnvim_lsp\2\nemoji\2\tpath\2\18documentation\15max_height\nlines\6o\bvim\nfloor\tmath\vborder\1\0\4\14max_width\3x\17winhighlightHNormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder\15min_height\3\1\14min_width\3<\1\t\0\0\5\5\5\6 \5\5\5\6 \1\0\f\ndebug\1\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3ê\3\20resolve_timeout\3†\6\19source_timeout\3»\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\nsetup\bcmp\frequireÁÃô≥\6≥ÊÃ˛\3\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-colorizer",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/ravenxrz/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n£\1\0\1\b\1\b\0\18-\1\0\0009\1\0\1'\3\1\0'\4\2\0'\5\3\0'\6\4\0'\a\5\0B\1\6\2\18\3\0\0B\1\2\2\14\0\1\0X\2\5Ä-\1\0\0009\1\6\0019\1\a\1\18\3\0\0B\1\2\2L\1\2\0\0¿\fdirname\tpath\21requirements.txt\19pyproject.toml\14setup.cfg\rsetup.py\t.git\17root_patternà\2\1\0\4\0\14\0\0176\0\0\0'\2\1\0B\0\2\0023\1\2\0007\1\3\0005\1\4\0007\1\5\0005\1\6\0007\1\a\0005\1\v\0005\2\t\0005\3\b\0=\3\n\2=\2\f\0017\1\r\0002\0\0ÄK\0\1\0\rsettings\vpython\1\0\0\ranalysis\1\0\0\1\0\3\27useLibraryCodeForTypes\2\19diagnosticMode\14workspace\20autoSearchPaths\2\14filetypes\1\2\0\0\vpython\bcmd\1\3\0\0\23pyright-langserver\f--stdio\rroot_dir\0\19lspconfig.util\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["preview-markdown.vim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/preview-markdown.vim",
    url = "https://github.com/skanehira/preview-markdown.vim"
  },
  sniprun = {
    config = { "\27LJ\2\n‹\2\0\0\a\0\17\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0004\4\0\0=\4\4\0034\4\0\0=\4\5\0034\4\0\0=\4\6\0035\4\n\0005\5\b\0005\6\a\0=\6\t\5=\5\v\4=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3B\1\2\1K\0\1\0\19display_option\1\0\2\25notification_timeout\3\5\19terminal_width\3-\fdisplay\1\4\0\0\fClassic\18VirtualTextOk\rTerminal\24interpreter_options\17GFM_original\1\0\0\21use_on_filetypes\1\0\0\1\2\0\0\20markdown.pandoc\17repl_disable\16repl_enable\26selected_interpreters\1\0\0\nsetup\fsniprun\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/sniprun",
    url = "https://github.com/michaelb/sniprun"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ultisnips = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/ultisnips/after/plugin/UltiSnips_after.vim" },
    config = { "\27LJ\2\nF\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\18<leader><tab>\27UltiSnipsExpandTrigger\6g\bvim\0" },
    loaded = true,
    needs_bufread = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: nvim-colorizer
time([[Setup for nvim-colorizer]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-colorizer")
time([[Setup for nvim-colorizer]], false)
time([[packadd for nvim-colorizer]], true)
vim.cmd [[packadd nvim-colorizer]]
time([[packadd for nvim-colorizer]], false)
-- Setup for: cmp-path
time([[Setup for cmp-path]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-path")
time([[Setup for cmp-path]], false)
time([[packadd for cmp-path]], true)
vim.cmd [[packadd cmp-path]]
time([[packadd for cmp-path]], false)
-- Setup for: sniprun
time([[Setup for sniprun]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "sniprun")
time([[Setup for sniprun]], false)
time([[packadd for sniprun]], true)
vim.cmd [[packadd sniprun]]
time([[packadd for sniprun]], false)
-- Setup for: cmp-spell
time([[Setup for cmp-spell]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-spell")
time([[Setup for cmp-spell]], false)
time([[packadd for cmp-spell]], true)
vim.cmd [[packadd cmp-spell]]
time([[packadd for cmp-spell]], false)
-- Setup for: nerdcommenter
time([[Setup for nerdcommenter]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nerdcommenter")
time([[Setup for nerdcommenter]], false)
time([[packadd for nerdcommenter]], true)
vim.cmd [[packadd nerdcommenter]]
time([[packadd for nerdcommenter]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
time([[Setup for telescope.nvim]], false)
time([[packadd for telescope.nvim]], true)
vim.cmd [[packadd telescope.nvim]]
time([[packadd for telescope.nvim]], false)
-- Setup for: cmp-tabnine
time([[Setup for cmp-tabnine]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-tabnine")
time([[Setup for cmp-tabnine]], false)
time([[packadd for cmp-tabnine]], true)
vim.cmd [[packadd cmp-tabnine]]
time([[packadd for cmp-tabnine]], false)
-- Setup for: cmp_luasnip
time([[Setup for cmp_luasnip]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp_luasnip")
time([[Setup for cmp_luasnip]], false)
time([[packadd for cmp_luasnip]], true)
vim.cmd [[packadd cmp_luasnip]]
time([[packadd for cmp_luasnip]], false)
-- Setup for: material
time([[Setup for material]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "material")
time([[Setup for material]], false)
time([[packadd for material]], true)
vim.cmd [[packadd material]]
time([[packadd for material]], false)
-- Setup for: dashboard-nvim
time([[Setup for dashboard-nvim]], true)
try_loadstring("\27LJ\2\nÇ\2\0\0\2\0\n\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0)\1\n\0=\1\b\0006\0\0\0009\0\1\0)\1F\0=\1\t\0K\0\1\0!dashboard_preview_file_width\"dashboard_preview_file_height\vlolcat\31dashboard_preview_pipeline\bcat\30dashboard_preview_command\14telescope dashboard_default_executive\6g\bvim\0", "setup", "dashboard-nvim")
time([[Setup for dashboard-nvim]], false)
time([[packadd for dashboard-nvim]], true)
vim.cmd [[packadd dashboard-nvim]]
time([[packadd for dashboard-nvim]], false)
-- Setup for: ultisnips
time([[Setup for ultisnips]], true)
try_loadstring("\27LJ\2\nb\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\14Yang Biao\17snips_author\rvertical\21tiSnipsEditSplit\6g\bvim\0", "setup", "ultisnips")
time([[Setup for ultisnips]], false)
time([[packadd for ultisnips]], true)
vim.cmd [[packadd ultisnips]]
time([[packadd for ultisnips]], false)
-- Setup for: nvim-lspconfig
time([[Setup for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-lspconfig")
time([[Setup for nvim-lspconfig]], false)
time([[packadd for nvim-lspconfig]], true)
vim.cmd [[packadd nvim-lspconfig]]
time([[packadd for nvim-lspconfig]], false)
-- Setup for: Auto-Pairs
time([[Setup for Auto-Pairs]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "Auto-Pairs")
time([[Setup for Auto-Pairs]], false)
time([[packadd for Auto-Pairs]], true)
vim.cmd [[packadd Auto-Pairs]]
time([[packadd for Auto-Pairs]], false)
-- Setup for: cmp-buffer
time([[Setup for cmp-buffer]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-buffer")
time([[Setup for cmp-buffer]], false)
time([[packadd for cmp-buffer]], true)
vim.cmd [[packadd cmp-buffer]]
time([[packadd for cmp-buffer]], false)
-- Setup for: impatient.nvim
time([[Setup for impatient.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "impatient.nvim")
time([[Setup for impatient.nvim]], false)
time([[packadd for impatient.nvim]], true)
vim.cmd [[packadd impatient.nvim]]
time([[packadd for impatient.nvim]], false)
-- Setup for: cmp-nvim-lua
time([[Setup for cmp-nvim-lua]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-nvim-lua")
time([[Setup for cmp-nvim-lua]], false)
time([[packadd for cmp-nvim-lua]], true)
vim.cmd [[packadd cmp-nvim-lua]]
time([[packadd for cmp-nvim-lua]], false)
-- Setup for: nvim-cmp
time([[Setup for nvim-cmp]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-cmp")
time([[Setup for nvim-cmp]], false)
time([[packadd for nvim-cmp]], true)
vim.cmd [[packadd nvim-cmp]]
time([[packadd for nvim-cmp]], false)
-- Setup for: lualine.nvim
time([[Setup for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "lualine.nvim")
time([[Setup for lualine.nvim]], false)
time([[packadd for lualine.nvim]], true)
vim.cmd [[packadd lualine.nvim]]
time([[packadd for lualine.nvim]], false)
-- Config for: nvim-colorizer
time([[Config for nvim-colorizer]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer")
time([[Config for nvim-colorizer]], false)
-- Config for: cmp-path
time([[Config for cmp-path]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-path")
time([[Config for cmp-path]], false)
-- Config for: sniprun
time([[Config for sniprun]], true)
try_loadstring("\27LJ\2\n‹\2\0\0\a\0\17\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0004\4\0\0=\4\4\0034\4\0\0=\4\5\0034\4\0\0=\4\6\0035\4\n\0005\5\b\0005\6\a\0=\6\t\5=\5\v\4=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3B\1\2\1K\0\1\0\19display_option\1\0\2\25notification_timeout\3\5\19terminal_width\3-\fdisplay\1\4\0\0\fClassic\18VirtualTextOk\rTerminal\24interpreter_options\17GFM_original\1\0\0\21use_on_filetypes\1\0\0\1\2\0\0\20markdown.pandoc\17repl_disable\16repl_enable\26selected_interpreters\1\0\0\nsetup\fsniprun\frequire\0", "config", "sniprun")
time([[Config for sniprun]], false)
-- Config for: cmp-spell
time([[Config for cmp-spell]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-spell")
time([[Config for cmp-spell]], false)
-- Config for: nerdcommenter
time([[Config for nerdcommenter]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nerdcommenter")
time([[Config for nerdcommenter]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: cmp-tabnine
time([[Config for cmp-tabnine]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-tabnine")
time([[Config for cmp-tabnine]], false)
-- Config for: cmp_luasnip
time([[Config for cmp_luasnip]], true)
try_loadstring("\27LJ\2\nπ\1\0\0\a\0\v\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0005\2\t\0004\3\3\0006\4\4\0009\4\5\0049\4\6\4'\6\a\0B\4\2\0026\5\b\0&\4\5\4>\4\1\3=\3\n\2B\0\2\1K\0\1\0\tpath\1\0\0\rsnippets\vconfig\fstdpath\afn\bvim\tload\14lazy_load luasnip.loaders.from_vscode\frequire\0", "config", "cmp_luasnip")
time([[Config for cmp_luasnip]], false)
-- Config for: material
time([[Config for material]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "material")
time([[Config for material]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\nÎ\2\0\0\4\0\v\0\0196\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0006\1\0\0009\1\a\0019\1\b\1'\3\t\0B\1\2\2'\2\n\0&\1\2\1=\1\6\0K\0\1\0\r/session\ncache\fstdpath\afn dashboard_session_directory\1\0\a\17find_history\fSPC f h\23change_colorscheme\fSPC f c\17last_session\fSPC s l\14find_word\fSPC f q\rnew_file\fSPC c f\15book_marks\fSPC f m\14find_file\fSPC f f\30dashboard_custom_shortcut\1\2\0\0\26üê¨ Have A Good Day!\28dashboard_custom_footer\6g\bvim\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
try_loadstring("\27LJ\2\nF\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\18<leader><tab>\27UltiSnipsExpandTrigger\6g\bvim\0", "config", "ultisnips")
time([[Config for ultisnips]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n£\1\0\1\b\1\b\0\18-\1\0\0009\1\0\1'\3\1\0'\4\2\0'\5\3\0'\6\4\0'\a\5\0B\1\6\2\18\3\0\0B\1\2\2\14\0\1\0X\2\5Ä-\1\0\0009\1\6\0019\1\a\1\18\3\0\0B\1\2\2L\1\2\0\0¿\fdirname\tpath\21requirements.txt\19pyproject.toml\14setup.cfg\rsetup.py\t.git\17root_patternà\2\1\0\4\0\14\0\0176\0\0\0'\2\1\0B\0\2\0023\1\2\0007\1\3\0005\1\4\0007\1\5\0005\1\6\0007\1\a\0005\1\v\0005\2\t\0005\3\b\0=\3\n\2=\2\f\0017\1\r\0002\0\0ÄK\0\1\0\rsettings\vpython\1\0\0\ranalysis\1\0\0\1\0\3\27useLibraryCodeForTypes\2\19diagnosticMode\14workspace\20autoSearchPaths\2\14filetypes\1\2\0\0\vpython\bcmd\1\3\0\0\23pyright-langserver\f--stdio\rroot_dir\0\19lspconfig.util\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: Auto-Pairs
time([[Config for Auto-Pairs]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "Auto-Pairs")
time([[Config for Auto-Pairs]], false)
-- Config for: cmp-buffer
time([[Config for cmp-buffer]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-buffer")
time([[Config for cmp-buffer]], false)
-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "impatient.nvim")
time([[Config for impatient.nvim]], false)
-- Config for: cmp-nvim-lua
time([[Config for cmp-nvim-lua]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-nvim-lua")
time([[Config for cmp-nvim-lua]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n¥\4\0\0\a\0\16\1\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0036\4\a\0009\4\b\0046\6\t\0009\6\n\0069\6\v\6\24\6\0\6B\4\2\2=\4\f\3=\3\r\0025\3\14\0=\3\15\2B\0\2\1K\0\1\0\vsource\1\0\a\14ultisnips\2\rnvim_lua\2\vbuffer\2\tcalc\2\rnvim_lsp\2\nemoji\2\tpath\2\18documentation\15max_height\nlines\6o\bvim\nfloor\tmath\vborder\1\0\4\14max_width\3x\17winhighlightHNormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder\15min_height\3\1\14min_width\3<\1\t\0\0\5\5\5\6 \5\5\5\6 \1\0\f\ndebug\1\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3ê\3\20resolve_timeout\3†\6\19source_timeout\3»\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\nsetup\bcmp\frequireÁÃô≥\6≥ÊÃ˛\3\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
