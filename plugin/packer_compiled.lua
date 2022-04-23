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
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\nÎ\2\0\0\4\0\v\0\0196\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0006\1\0\0009\1\a\0019\1\b\1'\3\t\0B\1\2\2'\2\n\0&\1\2\1=\1\6\0K\0\1\0\r/session\ncache\fstdpath\afn dashboard_session_directory\1\0\a\23change_colorscheme\fSPC f c\17find_history\fSPC f h\14find_word\fSPC f q\17last_session\fSPC s l\15book_marks\fSPC f m\rnew_file\fSPC c f\14find_file\fSPC f f\30dashboard_custom_shortcut\1\2\0\0\26üê¨ Have A Good Day!\28dashboard_custom_footer\6g\bvim\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  material = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/material",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  nerdcommenter = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nerdcommenter",
    url = "https://github.com/preservim/nerdcommenter"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n¥\4\0\0\a\0\16\1\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0036\4\a\0009\4\b\0046\6\t\0009\6\n\0069\6\v\6\24\6\0\6B\4\2\2=\4\f\3=\3\r\0025\3\14\0=\3\15\2B\0\2\1K\0\1\0\vsource\1\0\a\nemoji\2\tpath\2\14ultisnips\2\rnvim_lua\2\rnvim_lsp\2\tcalc\2\vbuffer\2\18documentation\15max_height\nlines\6o\bvim\nfloor\tmath\vborder\1\0\4\17winhighlightHNormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder\14min_width\3<\14max_width\3x\15min_height\3\1\1\t\0\0\5\5\5\6 \5\5\5\6 \1\0\f\19max_abbr_width\3d\21incomplete_delay\3ê\3\ndebug\1\19source_timeout\3»\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\20resolve_timeout\3†\6\19max_menu_width\3d\19max_kind_width\3d\nsetup\bcmp\frequireÁÃô≥\6≥ÊÃ˛\3\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n£\1\0\1\b\1\b\0\18-\1\0\0009\1\0\1'\3\1\0'\4\2\0'\5\3\0'\6\4\0'\a\5\0B\1\6\2\18\3\0\0B\1\2\2\14\0\1\0X\2\5Ä-\1\0\0009\1\6\0019\1\a\1\18\3\0\0B\1\2\2L\1\2\0\0¿\fdirname\tpath\21requirements.txt\19pyproject.toml\14setup.cfg\rsetup.py\t.git\17root_patternà\2\1\0\4\0\14\0\0176\0\0\0'\2\1\0B\0\2\0023\1\2\0007\1\3\0005\1\4\0007\1\5\0005\1\6\0007\1\a\0005\1\v\0005\2\t\0005\3\b\0=\3\n\2=\2\f\0017\1\r\0002\0\0ÄK\0\1\0\rsettings\vpython\1\0\0\ranalysis\1\0\0\1\0\3\27useLibraryCodeForTypes\2\19diagnosticMode\14workspace\20autoSearchPaths\2\14filetypes\1\2\0\0\vpython\bcmd\1\3\0\0\23pyright-langserver\f--stdio\rroot_dir\0\19lspconfig.util\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
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
-- Setup for: nerdcommenter
time([[Setup for nerdcommenter]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nerdcommenter")
time([[Setup for nerdcommenter]], false)
time([[packadd for nerdcommenter]], true)
vim.cmd [[packadd nerdcommenter]]
time([[packadd for nerdcommenter]], false)
-- Setup for: material
time([[Setup for material]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "material")
time([[Setup for material]], false)
time([[packadd for material]], true)
vim.cmd [[packadd material]]
time([[packadd for material]], false)
-- Setup for: ultisnips
time([[Setup for ultisnips]], true)
try_loadstring("\27LJ\2\nb\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\14Yang Biao\17snips_author\rvertical\21tiSnipsEditSplit\6g\bvim\0", "setup", "ultisnips")
time([[Setup for ultisnips]], false)
time([[packadd for ultisnips]], true)
vim.cmd [[packadd ultisnips]]
time([[packadd for ultisnips]], false)
-- Setup for: dashboard-nvim
time([[Setup for dashboard-nvim]], true)
try_loadstring("\27LJ\2\nÇ\2\0\0\2\0\n\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0)\1\n\0=\1\b\0006\0\0\0009\0\1\0)\1F\0=\1\t\0K\0\1\0!dashboard_preview_file_width\"dashboard_preview_file_height\vlolcat\31dashboard_preview_pipeline\bcat\30dashboard_preview_command\14telescope dashboard_default_executive\6g\bvim\0", "setup", "dashboard-nvim")
time([[Setup for dashboard-nvim]], false)
time([[packadd for dashboard-nvim]], true)
vim.cmd [[packadd dashboard-nvim]]
time([[packadd for dashboard-nvim]], false)
-- Setup for: nvim-cmp
time([[Setup for nvim-cmp]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-cmp")
time([[Setup for nvim-cmp]], false)
time([[packadd for nvim-cmp]], true)
vim.cmd [[packadd nvim-cmp]]
time([[packadd for nvim-cmp]], false)
-- Setup for: nvim-lspconfig
time([[Setup for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-lspconfig")
time([[Setup for nvim-lspconfig]], false)
time([[packadd for nvim-lspconfig]], true)
vim.cmd [[packadd nvim-lspconfig]]
time([[packadd for nvim-lspconfig]], false)
-- Config for: nerdcommenter
time([[Config for nerdcommenter]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nerdcommenter")
time([[Config for nerdcommenter]], false)
-- Config for: material
time([[Config for material]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "material")
time([[Config for material]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
try_loadstring("\27LJ\2\nF\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\18<leader><tab>\27UltiSnipsExpandTrigger\6g\bvim\0", "config", "ultisnips")
time([[Config for ultisnips]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\nÎ\2\0\0\4\0\v\0\0196\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0006\1\0\0009\1\a\0019\1\b\1'\3\t\0B\1\2\2'\2\n\0&\1\2\1=\1\6\0K\0\1\0\r/session\ncache\fstdpath\afn dashboard_session_directory\1\0\a\23change_colorscheme\fSPC f c\17find_history\fSPC f h\14find_word\fSPC f q\17last_session\fSPC s l\15book_marks\fSPC f m\rnew_file\fSPC c f\14find_file\fSPC f f\30dashboard_custom_shortcut\1\2\0\0\26üê¨ Have A Good Day!\28dashboard_custom_footer\6g\bvim\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n¥\4\0\0\a\0\16\1\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0036\4\a\0009\4\b\0046\6\t\0009\6\n\0069\6\v\6\24\6\0\6B\4\2\2=\4\f\3=\3\r\0025\3\14\0=\3\15\2B\0\2\1K\0\1\0\vsource\1\0\a\nemoji\2\tpath\2\14ultisnips\2\rnvim_lua\2\rnvim_lsp\2\tcalc\2\vbuffer\2\18documentation\15max_height\nlines\6o\bvim\nfloor\tmath\vborder\1\0\4\17winhighlightHNormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder\14min_width\3<\14max_width\3x\15min_height\3\1\1\t\0\0\5\5\5\6 \5\5\5\6 \1\0\f\19max_abbr_width\3d\21incomplete_delay\3ê\3\ndebug\1\19source_timeout\3»\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\20resolve_timeout\3†\6\19max_menu_width\3d\19max_kind_width\3d\nsetup\bcmp\frequireÁÃô≥\6≥ÊÃ˛\3\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n£\1\0\1\b\1\b\0\18-\1\0\0009\1\0\1'\3\1\0'\4\2\0'\5\3\0'\6\4\0'\a\5\0B\1\6\2\18\3\0\0B\1\2\2\14\0\1\0X\2\5Ä-\1\0\0009\1\6\0019\1\a\1\18\3\0\0B\1\2\2L\1\2\0\0¿\fdirname\tpath\21requirements.txt\19pyproject.toml\14setup.cfg\rsetup.py\t.git\17root_patternà\2\1\0\4\0\14\0\0176\0\0\0'\2\1\0B\0\2\0023\1\2\0007\1\3\0005\1\4\0007\1\5\0005\1\6\0007\1\a\0005\1\v\0005\2\t\0005\3\b\0=\3\n\2=\2\f\0017\1\r\0002\0\0ÄK\0\1\0\rsettings\vpython\1\0\0\ranalysis\1\0\0\1\0\3\27useLibraryCodeForTypes\2\19diagnosticMode\14workspace\20autoSearchPaths\2\14filetypes\1\2\0\0\vpython\bcmd\1\3\0\0\23pyright-langserver\f--stdio\rroot_dir\0\19lspconfig.util\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
