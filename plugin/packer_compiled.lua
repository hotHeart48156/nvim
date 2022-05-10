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
  ["DAPInstall.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/DAPInstall.nvim",
    url = "https://github.com/ravenxrz/DAPInstall.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    config = { "\27LJ\2\2n\0\0\5\0\a\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\5\0004\2\3\0005\3\3\0004\4\0\0=\4\4\3>\3\1\2=\2\6\1B\0\2\1K\0\1\0\fsources\1\0\0\voption\1\0\1\tname\vbuffer\nsetup\bcmp\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-cmdline/after/plugin/cmp_cmdline.lua" },
    config = { "\27LJ\2\2y\0\0\5\0\b\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0009\0\3\0'\1\4\0005\2\6\0004\3\3\0005\4\5\0>\4\1\0034\4\0\0>\4\2\3=\3\a\2B\0\3\1K\0\1\0\fsources\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\nsetup\bcmp\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    config = { "\27LJ\2\2a\0\0\4\0\6\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0004\2\3\0005\3\3\0>\3\1\2=\2\5\1B\0\2\1K\0\1\0\fsources\1\0\0\1\0\1\tname\rnvim_lua\nsetup\bcmp\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    config = { "\27LJ\2\2l\0\0\5\0\a\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\5\0004\2\3\0005\3\3\0004\4\0\0=\4\4\3>\3\1\2=\2\6\1B\0\2\1K\0\1\0\fsources\1\0\0\voption\1\0\1\tname\tpath\nsetup\bcmp\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-spell/after/plugin/cmp-spell.lua" },
    config = { "\27LJ\2\2^\0\0\4\0\6\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0004\2\3\0005\3\3\0>\3\1\2=\2\5\1B\0\2\1K\0\1\0\fsources\1\0\0\1\0\1\tname\nspell\nsetup\bcmp\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["cmp-tabnine"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-tabnine/after/plugin/cmp-tabnine.lua" },
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  cmp_luasnip = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    config = { "\27LJ\2\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire[\1\0\4\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0003\3\3\0=\3\5\2=\2\a\1B\0\2\1K\0\1\0\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
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
    config = { "\27LJ\2\2Î\2\0\0\3\0\v\0\0196\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0006\1\0\0009\1\a\0019\1\b\1'\2\t\0B\1\2\2'\2\n\0&\1\2\1=\1\6\0K\0\1\0\r/session\ncache\fstdpath\afn dashboard_session_directory\1\0\a\rnew_file\fSPC c f\23change_colorscheme\fSPC f c\15book_marks\fSPC f m\17last_session\fSPC s l\17find_history\fSPC f h\14find_word\fSPC f q\14find_file\fSPC f f\30dashboard_custom_shortcut\1\2\0\0\26üê¨ Have A Good Day!\28dashboard_custom_footer\6g\bvim\0" },
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
  ["friendly-snippets"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\2—\3\0\0\4\0\f\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0006\2\4\0009\2\5\0029\2\6\2'\3\a\0B\2\2\2'\3\b\0&\2\3\2=\2\t\0015\2\n\0=\2\v\1B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\frounded\rlog_path\22lsp_signature.log\ncache\fstdpath\afn\bvim\1\0\17\14doc_lines\3\n\26floating_window_off_y\3\1\ndebug\2\16hint_scheme\vString\17shadow_guibg\nBlack\18time_interval\3»\1\16hint_enable\2\14max_width\3P\15max_height\3\f\20floating_window\2\ffix_pos\1\26floating_window_off_x\3\1\17hi_parameter LspSignatureActiveParameter\16hint_prefix\tüêº\16shadow_bled\3$\19always_trigger\1\tbing\2\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  material = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
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
  ["neovim-session-manager"] = {
    config = { "\27LJ\2\2ª\3\0\0\a\0\18\0\0286\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\1\3\0015\2\n\0\18\4\0\0009\3\4\0006\5\5\0009\5\6\0059\5\a\5'\6\b\0B\5\2\2'\6\t\0B\3\4\2=\3\v\0026\3\0\0'\4\f\0B\3\2\0029\3\r\0039\3\14\3=\3\15\0025\3\16\0=\3\17\2B\1\2\1K\0\1\0\30autosave_ignore_filetypes\1\2\0\0\14gitcommit\18autoload_mode\16LastSession\17AutoloadMode\27session_manager.config\17sessions_dir\1\0\6\31autosave_ignore_not_normal\2\20max_path_length\3P\26autosave_last_session\2\19colon_replacer\a++\29autosave_only_in_session\1\18path_replacer\a__\rsessions\tdata\fstdpath\afn\bvim\bnew\nsetup\20session_manager\17plenary.path\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  nerdcommenter = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nerdcommenter",
    url = "https://github.com/preservim/nerdcommenter"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2Ï\3\0\0\a\0\22\0\0266\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\a\0005\3\6\0=\3\b\0025\3\t\0=\3\n\2=\2\v\0015\2\f\0005\3\r\0=\3\14\0026\3\15\0009\3\16\3'\4\17\0'\5\18\0'\6\19\0B\3\4\2=\3\20\2=\2\21\1B\0\2\1K\0\1\0\14fast_wrap\fpattern\5\b%s+\25 [%'%\"%)%>%]%)%}%,] \tgsub\vstring\nchars\1\6\0\0\6{\6[\6(\6\"\6'\1\0\6\fend_key\6$\14highlight\vSearch\bmap\n<M-e>\tkeys\31qwertyuiopzxcvbnmasdfghjkl\19highlight_grey\fComment\16check_comma\2\14ts_config\15javascript\1\2\0\0\20template_string\blua\1\0\1\tjava\2\1\2\0\0\vstring\21disable_filetype\1\0\1\rcheck_ts\2\1\a\0\0\20TelescopePrompt\18spectre_panel\rdap-repl\vguihua\16guihua_rust\15clap_input\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2ô\2\0\2\a\2\14\2(6\2\0\0009\2\1\0029\2\2\2\b\2\0\0X\3\rÄ9\3\3\1\21\3\3\0\1\2\3\0X\3\tÄ6\3\4\0009\3\5\0039\4\3\1)\5\1\0\23\6\1\2B\3\4\2'\4\6\0&\3\4\3=\3\3\1-\3\0\0009\4\a\0018\3\4\3=\3\a\1-\3\1\0009\4\t\0009\4\n\0048\3\4\3=\3\b\0016\3\0\0009\3\1\0039\3\f\0039\4\t\0009\4\n\0048\3\4\3\14\0\3\0X\4\3Ä6\3\0\0009\3\1\0039\3\r\3=\3\v\1L\1\2\0\3¿\4¿\23duplicates_default\15duplicates\bdup\tname\vsource\tmenu\tkind\b‚Ä¶\bsub\vstring\tabbr\14max_width\15formatting\15cmp_config\0\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire¥\2\0\1\3\2\v\0/-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1%Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\28Ä6\1\4\0)\2\1\0B\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\5\1)\2\1\0B\1\2\1X\1\18Ä6\1\6\0B\1\1\2\15\0\1\0X\2\3Ä\18\1\0\0B\1\1\1X\1\vÄ6\1\a\0B\1\1\2\15\0\1\0X\2\5Ä6\1\b\0009\1\t\0019\1\n\1D\1\1\0X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\0¿\17cmp#complete\afn\bvim\20is_emmet_active\20check_backspace\tjump\rjumpable\vexpand\15expandable\21select_next_item\fvisibleä\1\0\1\3\2\4\0\22-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\fÄ6\1\2\0)\2ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\2ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\0¿\tjump\rjumpable\21select_prev_item\fvisible›\1\0\1\3\2\6\0'-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\17Ä-\1\0\0009\1\1\0016\2\2\0009\2\3\2B\1\2\2\15\0\1\0X\2\nÄ6\1\4\0)\2\1\0B\1\2\2\15\0\1\0X\2\4Ä-\1\1\0009\1\5\1)\2\1\0B\1\2\1K\0\1\0006\1\4\0)\2\1\0B\1\2\2\15\0\1\0X\2\tÄ-\1\1\0009\1\5\1)\2\1\0B\1\2\2\14\0\1\0X\1\5Ä\18\1\0\0B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\0¿\tjump\rjumpable\17confirm_opts\15cmp_config\fconfirm\fvisible¶\17\1\0\f\0W\0∏\0016\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\1\0X\2\1Ä2\0∞Ä6\2\1\0'\3\3\0B\2\2\0029\2\4\2B\2\1\0016\2\1\0'\3\5\0B\2\2\0025\3\6\0005\4\a\0005\5\f\0005\6\n\0009\a\b\0029\a\t\a=\a\v\6=\6\r\0055\6\14\0=\6\15\0055\6\16\0=\6\17\0055\6\19\0005\a\18\0=\a\20\0065\a\21\0=\a\22\0063\a\23\0=\a\24\6=\6\25\0055\6\27\0003\a\26\0=\a\28\6=\6\29\0055\6!\0009\a\30\0029\a\31\a9\a \aB\a\1\2=\a\15\0069\a\30\0029\a\31\a9\a \aB\a\1\2=\a\"\6=\6\31\0054\6\f\0005\a#\0>\a\1\0065\a$\0>\a\2\0065\a%\0>\a\3\0065\a&\0>\a\4\0065\a'\0>\a\5\0065\a(\0>\a\6\0065\a)\0>\a\a\0065\a*\0>\a\b\0065\a+\0>\a\t\0065\a,\0>\a\n\0065\a-\0>\a\v\6=\6.\0059\6/\0029\0060\0069\0061\0065\a3\0009\b/\0029\b2\bB\b\1\2=\b4\a9\b/\0029\b5\bB\b\1\2=\b6\a9\b/\0029\b7\b)\t¸ˇB\b\2\2=\b8\a9\b/\0029\b7\b)\t\4\0B\b\2\2=\b9\a9\b/\0023\t:\0005\n;\0B\b\3\2=\b<\a9\b/\0023\t=\0005\n>\0B\b\3\2=\b?\a9\b/\0029\b@\bB\b\1\2=\bA\a9\b/\0029\bB\bB\b\1\2=\bC\a9\b/\0023\tD\0B\b\2\2=\bE\aB\6\2\2=\6/\0057\5F\0009\5G\0029\5H\5'\6I\0005\aJ\0009\b/\0029\b0\b9\bH\bB\b\1\2=\b/\a4\b\3\0005\tK\0>\t\1\b=\b.\aB\5\3\0019\5G\0029\5H\5'\6L\0005\aM\0009\b/\0029\b0\b9\bH\bB\b\1\2=\b/\a4\b\3\0005\tN\0>\t\1\b=\b.\aB\5\3\0019\5G\0029\5H\5'\6O\0005\aP\0009\b/\0029\b0\b9\bH\bB\b\1\2=\b/\a9\b\30\0029\b.\b4\t\3\0005\nQ\0>\n\1\t4\n\3\0005\vR\0>\v\1\nB\b\3\2=\b.\aB\5\3\0016\5S\0009\5T\5'\6U\0B\5\2\0016\5S\0009\5T\5'\6V\0B\5\2\0019\5G\0026\6F\0B\5\2\0012\0\0ÄK\0\1\0K\0\1\0Uautocmd FileType guihua_rust lua require('cmp').setup.buffer { enabled = false }Pautocmd FileType guihua lua require('cmp').setup.buffer { enabled = false }\bcmd\bvim\1\0\1\tname\tpath\1\0\1\tname\fcmdline\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\6?\1\0\1\tname\vbuffer\1\0\0\6/\fcmdline\nsetup\15cmp_config\t<CR>\0\n<C-e>\nabort\n<C-p>\rcomplete\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-f>\n<C-d>\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\vinsert\vpreset\fmapping\fsources\1\0\1\tname\vcrates\1\0\1\tname\15treesitter\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\nspell\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lua\1\0\1\tname\16cmp_tabnine\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\18documentation\1\0\0\rbordered\vwindow\vconfig\fsnippet\vexpand\1\0\0\0\15formatting\vformat\0\15duplicates\1\0\4\tpath\3\1\fluasnip\3\1\rnvim_lsp\3\0\vbuffer\3\1\vfields\1\0\2\23duplicates_default\3\0\14max_width\3\0\1\4\0\0\tkind\tabbr\tmenu\17experimental\1\0\2\15ghost_text\1\16native_menu\1\15completion\1\0\1\19keyword_length\3\1\17confirm_opts\1\0\0\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\1\0\n\rnvim_lsp\n(LSP)\nvsnip\14(Snippet)\16cmp_tabnine\14(Tabnine)\15treesitter\t(TS)\tpath\v(Path)\nemoji\f(Emoji)\nspell\f(Spell)\vbuffer\r(Buffer)\tcalc\v(Calc)\fluasnip\14(Snippet)\1\0\25\tText\tÔùæ \vMethod\tÓÉå \rOperator\bÔöî\14Interface\tÔ∞Æ \nColor\tÓà´ \vModule\tÔô® \nEvent\tÔÉß \rFunction\tÔûî \16Constructor\tÔê• \15EnumMember\tÔÖù \rProperty\tÓò§ \rConstant\tÔ≤Ä \vStruct\tÔÉä \rVariable\tÔö¶ \fSnippet\tÔÉÑ \vFolder\tÔùä \tUnit\bÔ•¨\nValue\tÔ¢ü \18TypeParameter\tÔûÉ \tFile\bÔúò\nClass\tÔ†ñ \nField\tÓúñ \tEnum\bÔ©ó\fKeyword\tÔ†ä \14Reference\tÔúú \bcmp\14lazy_load luasnip.loaders.from_vscode\fluasnip\frequire\npcall\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer"] = {
    config = { "\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-colorizer",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\2Ì\2\0\0\4\0\r\0@6\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0B\0\3\2\a\0\4\0X\0\bÄ6\0\0\0009\0\1\0009\0\5\0)\1\0\0'\2\6\0'\3\a\0B\0\4\1X\0/Ä6\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0B\0\3\2\a\0\b\0X\0\bÄ6\0\0\0009\0\1\0009\0\5\0)\1\0\0'\2\6\0'\3\t\0B\0\4\1X\0\31Ä6\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0B\0\3\2\a\0\n\0X\0\bÄ6\0\0\0009\0\1\0009\0\5\0)\1\0\0'\2\6\0'\3\a\0B\0\4\1X\0\15Ä6\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0B\0\3\2\a\0\v\0X\0\aÄ6\0\0\0009\0\1\0009\0\5\0)\1\0\0'\2\6\0'\3\f\0B\0\4\1K\0\1\0\b#%s\nshell\ago\v/*%s*/\6c\t//%s\18commentstring\24nvim_buf_set_option\bcpp\rfiletype\24nvim_buf_get_option\bapi\bvim‡\1\1\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0003\2\4\0=\2\5\1B\0\2\1K\0\1\0\thook\0\1\0\a\20create_mappings\2\17line_mapping\bgcc\30comment_chunk_text_object\aic\"comment_empty_trim_whitespace\2\19marker_padding\2\21operator_mapping\agc\18comment_empty\2\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
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
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2Ô\2\0\0\4\0\14\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0005\3\t\0=\3\n\2=\2\v\0015\2\f\0=\2\r\1B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\19init_selection\bgnn\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\1\17sync_install\2\1\5\0\0\6c\blua\trust\bcpp\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/romgrk/nvim-treesitter-context"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
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
    config = { "\27LJ\2\2ÿ\5\0\0\5\0\28\0!6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0004\2\0\0=\2\4\0014\2\0\0=\2\5\0015\2\t\0005\3\a\0005\4\6\0=\4\b\3=\3\n\2=\2\v\0015\2\f\0=\2\r\0015\2\14\0=\2\15\0015\2\16\0=\2\17\0015\2\19\0005\3\18\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\2=\2\27\1B\0\2\1K\0\1\0\18snipruncolors\26SniprunFloatingWinErr\1\0\2\fctermfg\fDarkRed\afg\f#881515\26SniprunVirtualTextErr\1\0\4\fctermbg\fDarkRed\abg\f#881515\afg\f#000000\vcterfg\nBlack\25SniprunFloatingWinOk\1\0\2\fctermfg\tCyan\afg\f#66eeff\25SniprunVirtualTextOk\1\0\0\1\0\4\fctermbg\tCyan\abg\f#66eeff\afg\f#000000\vcterfg\nBlack\19show_no_output\1\3\0\0\fClassic\20TempFloatWindow\20display_options\1\0\2\19terminal_width\3-\25notification_timeout\3\5\fdisplay\1\3\0\0\fClassic\18VirtualTextOk\24interpreter_options\17GFM_original\1\0\0\21use_on_filetypes\1\0\0\1\2\0\0\20markdown.pandoc\16repl_enable\26selected_interpreters\1\0\3\20inline_messages\3\0\fborders\vsingle\21live_mode_toggle\aon\nsetup\fsniprun\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/sniprun",
    url = "https://github.com/michaelb/sniprun"
  },
  ["telescope-rg.nvim"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/telescope-rg.nvim",
    url = "https://github.com/nvim-telescope/telescope-rg.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope-vim-bookmarks.nvim"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/telescope-vim-bookmarks.nvim",
    url = "https://github.com/tom-anders/telescope-vim-bookmarks.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ultisnips = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/ultisnips/after/plugin/UltiSnips_after.vim" },
    config = { "\27LJ\2\2F\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\18<leader><tab>\27UltiSnipsExpandTrigger\6g\bvim\0" },
    loaded = true,
    needs_bufread = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-bookmarks"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/vim-bookmarks",
    url = "https://github.com/MattesGroeger/vim-bookmarks"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: lsp_signature.nvim
time([[Setup for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "lsp_signature.nvim")
time([[Setup for lsp_signature.nvim]], false)
time([[packadd for lsp_signature.nvim]], true)
vim.cmd [[packadd lsp_signature.nvim]]
time([[packadd for lsp_signature.nvim]], false)
-- Setup for: nvim-treesitter
time([[Setup for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-treesitter")
time([[Setup for nvim-treesitter]], false)
time([[packadd for nvim-treesitter]], true)
vim.cmd [[packadd nvim-treesitter]]
time([[packadd for nvim-treesitter]], false)
-- Setup for: nvim-cmp
time([[Setup for nvim-cmp]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-cmp")
time([[Setup for nvim-cmp]], false)
time([[packadd for nvim-cmp]], true)
vim.cmd [[packadd nvim-cmp]]
time([[packadd for nvim-cmp]], false)
-- Setup for: sniprun
time([[Setup for sniprun]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "sniprun")
time([[Setup for sniprun]], false)
time([[packadd for sniprun]], true)
vim.cmd [[packadd sniprun]]
time([[packadd for sniprun]], false)
-- Setup for: cmp-spell
time([[Setup for cmp-spell]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-spell")
time([[Setup for cmp-spell]], false)
time([[packadd for cmp-spell]], true)
vim.cmd [[packadd cmp-spell]]
time([[packadd for cmp-spell]], false)
-- Setup for: impatient.nvim
time([[Setup for impatient.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "impatient.nvim")
time([[Setup for impatient.nvim]], false)
time([[packadd for impatient.nvim]], true)
vim.cmd [[packadd impatient.nvim]]
time([[packadd for impatient.nvim]], false)
-- Setup for: material
time([[Setup for material]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "material")
time([[Setup for material]], false)
time([[packadd for material]], true)
vim.cmd [[packadd material]]
time([[packadd for material]], false)
-- Setup for: cmp-nvim-lsp
time([[Setup for cmp-nvim-lsp]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-nvim-lsp")
time([[Setup for cmp-nvim-lsp]], false)
time([[packadd for cmp-nvim-lsp]], true)
vim.cmd [[packadd cmp-nvim-lsp]]
time([[packadd for cmp-nvim-lsp]], false)
-- Setup for: neovim-session-manager
time([[Setup for neovim-session-manager]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "neovim-session-manager")
time([[Setup for neovim-session-manager]], false)
time([[packadd for neovim-session-manager]], true)
vim.cmd [[packadd neovim-session-manager]]
time([[packadd for neovim-session-manager]], false)
-- Setup for: ultisnips
time([[Setup for ultisnips]], true)
try_loadstring("\27LJ\2\2b\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\14Yang Biao\17snips_author\rvertical\21tiSnipsEditSplit\6g\bvim\0", "setup", "ultisnips")
time([[Setup for ultisnips]], false)
time([[packadd for ultisnips]], true)
vim.cmd [[packadd ultisnips]]
time([[packadd for ultisnips]], false)
-- Setup for: nvim-comment
time([[Setup for nvim-comment]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-comment")
time([[Setup for nvim-comment]], false)
time([[packadd for nvim-comment]], true)
vim.cmd [[packadd nvim-comment]]
time([[packadd for nvim-comment]], false)
-- Setup for: nvim-autopairs
time([[Setup for nvim-autopairs]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-autopairs")
time([[Setup for nvim-autopairs]], false)
time([[packadd for nvim-autopairs]], true)
vim.cmd [[packadd nvim-autopairs]]
time([[packadd for nvim-autopairs]], false)
-- Setup for: cmp-tabnine
time([[Setup for cmp-tabnine]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-tabnine")
time([[Setup for cmp-tabnine]], false)
time([[packadd for cmp-tabnine]], true)
vim.cmd [[packadd cmp-tabnine]]
time([[packadd for cmp-tabnine]], false)
-- Setup for: cmp-buffer
time([[Setup for cmp-buffer]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-buffer")
time([[Setup for cmp-buffer]], false)
time([[packadd for cmp-buffer]], true)
vim.cmd [[packadd cmp-buffer]]
time([[packadd for cmp-buffer]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
time([[Setup for telescope.nvim]], false)
time([[packadd for telescope.nvim]], true)
vim.cmd [[packadd telescope.nvim]]
time([[packadd for telescope.nvim]], false)
-- Setup for: cmp_luasnip
time([[Setup for cmp_luasnip]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp_luasnip")
time([[Setup for cmp_luasnip]], false)
time([[packadd for cmp_luasnip]], true)
vim.cmd [[packadd cmp_luasnip]]
time([[packadd for cmp_luasnip]], false)
-- Setup for: dashboard-nvim
time([[Setup for dashboard-nvim]], true)
try_loadstring("\27LJ\2\2Ç\2\0\0\2\0\n\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0)\1\n\0=\1\b\0006\0\0\0009\0\1\0)\1F\0=\1\t\0K\0\1\0!dashboard_preview_file_width\"dashboard_preview_file_height\vlolcat\31dashboard_preview_pipeline\bcat\30dashboard_preview_command\14telescope dashboard_default_executive\6g\bvim\0", "setup", "dashboard-nvim")
time([[Setup for dashboard-nvim]], false)
time([[packadd for dashboard-nvim]], true)
vim.cmd [[packadd dashboard-nvim]]
time([[packadd for dashboard-nvim]], false)
-- Setup for: telescope-rg.nvim
time([[Setup for telescope-rg.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "telescope-rg.nvim")
time([[Setup for telescope-rg.nvim]], false)
time([[packadd for telescope-rg.nvim]], true)
vim.cmd [[packadd telescope-rg.nvim]]
time([[packadd for telescope-rg.nvim]], false)
-- Setup for: nerdcommenter
time([[Setup for nerdcommenter]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nerdcommenter")
time([[Setup for nerdcommenter]], false)
time([[packadd for nerdcommenter]], true)
vim.cmd [[packadd nerdcommenter]]
time([[packadd for nerdcommenter]], false)
-- Setup for: cmp-nvim-lua
time([[Setup for cmp-nvim-lua]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-nvim-lua")
time([[Setup for cmp-nvim-lua]], false)
time([[packadd for cmp-nvim-lua]], true)
vim.cmd [[packadd cmp-nvim-lua]]
time([[packadd for cmp-nvim-lua]], false)
-- Setup for: cmp-path
time([[Setup for cmp-path]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-path")
time([[Setup for cmp-path]], false)
time([[packadd for cmp-path]], true)
vim.cmd [[packadd cmp-path]]
time([[packadd for cmp-path]], false)
-- Setup for: friendly-snippets
time([[Setup for friendly-snippets]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "friendly-snippets")
time([[Setup for friendly-snippets]], false)
time([[packadd for friendly-snippets]], true)
vim.cmd [[packadd friendly-snippets]]
time([[packadd for friendly-snippets]], false)
-- Setup for: nvim-colorizer
time([[Setup for nvim-colorizer]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-colorizer")
time([[Setup for nvim-colorizer]], false)
time([[packadd for nvim-colorizer]], true)
vim.cmd [[packadd nvim-colorizer]]
time([[packadd for nvim-colorizer]], false)
-- Setup for: telescope-vim-bookmarks.nvim
time([[Setup for telescope-vim-bookmarks.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "telescope-vim-bookmarks.nvim")
time([[Setup for telescope-vim-bookmarks.nvim]], false)
time([[packadd for telescope-vim-bookmarks.nvim]], true)
vim.cmd [[packadd telescope-vim-bookmarks.nvim]]
time([[packadd for telescope-vim-bookmarks.nvim]], false)
-- Setup for: vim-bookmarks
time([[Setup for vim-bookmarks]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "vim-bookmarks")
time([[Setup for vim-bookmarks]], false)
time([[packadd for vim-bookmarks]], true)
vim.cmd [[packadd vim-bookmarks]]
time([[packadd for vim-bookmarks]], false)
-- Setup for: LuaSnip
time([[Setup for LuaSnip]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "LuaSnip")
time([[Setup for LuaSnip]], false)
time([[packadd for LuaSnip]], true)
vim.cmd [[packadd LuaSnip]]
time([[packadd for LuaSnip]], false)
-- Setup for: lualine.nvim
time([[Setup for lualine.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "lualine.nvim")
time([[Setup for lualine.nvim]], false)
time([[packadd for lualine.nvim]], true)
vim.cmd [[packadd lualine.nvim]]
time([[packadd for lualine.nvim]], false)
-- Setup for: cmp-cmdline
time([[Setup for cmp-cmdline]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-cmdline")
time([[Setup for cmp-cmdline]], false)
time([[packadd for cmp-cmdline]], true)
vim.cmd [[packadd cmp-cmdline]]
time([[packadd for cmp-cmdline]], false)
-- Setup for: telescope-ui-select.nvim
time([[Setup for telescope-ui-select.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "telescope-ui-select.nvim")
time([[Setup for telescope-ui-select.nvim]], false)
time([[packadd for telescope-ui-select.nvim]], true)
vim.cmd [[packadd telescope-ui-select.nvim]]
time([[packadd for telescope-ui-select.nvim]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\2—\3\0\0\4\0\f\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0006\2\4\0009\2\5\0029\2\6\2'\3\a\0B\2\2\2'\3\b\0&\2\3\2=\2\t\0015\2\n\0=\2\v\1B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\frounded\rlog_path\22lsp_signature.log\ncache\fstdpath\afn\bvim\1\0\17\14doc_lines\3\n\26floating_window_off_y\3\1\ndebug\2\16hint_scheme\vString\17shadow_guibg\nBlack\18time_interval\3»\1\16hint_enable\2\14max_width\3P\15max_height\3\f\20floating_window\2\ffix_pos\1\26floating_window_off_x\3\1\17hi_parameter LspSignatureActiveParameter\16hint_prefix\tüêº\16shadow_bled\3$\19always_trigger\1\tbing\2\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2Ô\2\0\0\4\0\14\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0005\3\t\0=\3\n\2=\2\v\0015\2\f\0=\2\r\1B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\19init_selection\bgnn\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\1\17sync_install\2\1\5\0\0\6c\blua\trust\bcpp\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2ô\2\0\2\a\2\14\2(6\2\0\0009\2\1\0029\2\2\2\b\2\0\0X\3\rÄ9\3\3\1\21\3\3\0\1\2\3\0X\3\tÄ6\3\4\0009\3\5\0039\4\3\1)\5\1\0\23\6\1\2B\3\4\2'\4\6\0&\3\4\3=\3\3\1-\3\0\0009\4\a\0018\3\4\3=\3\a\1-\3\1\0009\4\t\0009\4\n\0048\3\4\3=\3\b\0016\3\0\0009\3\1\0039\3\f\0039\4\t\0009\4\n\0048\3\4\3\14\0\3\0X\4\3Ä6\3\0\0009\3\1\0039\3\r\3=\3\v\1L\1\2\0\3¿\4¿\23duplicates_default\15duplicates\bdup\tname\vsource\tmenu\tkind\b‚Ä¶\bsub\vstring\tabbr\14max_width\15formatting\15cmp_config\0\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire¥\2\0\1\3\2\v\0/-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1%Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\28Ä6\1\4\0)\2\1\0B\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\5\1)\2\1\0B\1\2\1X\1\18Ä6\1\6\0B\1\1\2\15\0\1\0X\2\3Ä\18\1\0\0B\1\1\1X\1\vÄ6\1\a\0B\1\1\2\15\0\1\0X\2\5Ä6\1\b\0009\1\t\0019\1\n\1D\1\1\0X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\0¿\17cmp#complete\afn\bvim\20is_emmet_active\20check_backspace\tjump\rjumpable\vexpand\15expandable\21select_next_item\fvisibleä\1\0\1\3\2\4\0\22-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\fÄ6\1\2\0)\2ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\2ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\0¿\tjump\rjumpable\21select_prev_item\fvisible›\1\0\1\3\2\6\0'-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\17Ä-\1\0\0009\1\1\0016\2\2\0009\2\3\2B\1\2\2\15\0\1\0X\2\nÄ6\1\4\0)\2\1\0B\1\2\2\15\0\1\0X\2\4Ä-\1\1\0009\1\5\1)\2\1\0B\1\2\1K\0\1\0006\1\4\0)\2\1\0B\1\2\2\15\0\1\0X\2\tÄ-\1\1\0009\1\5\1)\2\1\0B\1\2\2\14\0\1\0X\1\5Ä\18\1\0\0B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\0¿\tjump\rjumpable\17confirm_opts\15cmp_config\fconfirm\fvisible¶\17\1\0\f\0W\0∏\0016\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\1\0X\2\1Ä2\0∞Ä6\2\1\0'\3\3\0B\2\2\0029\2\4\2B\2\1\0016\2\1\0'\3\5\0B\2\2\0025\3\6\0005\4\a\0005\5\f\0005\6\n\0009\a\b\0029\a\t\a=\a\v\6=\6\r\0055\6\14\0=\6\15\0055\6\16\0=\6\17\0055\6\19\0005\a\18\0=\a\20\0065\a\21\0=\a\22\0063\a\23\0=\a\24\6=\6\25\0055\6\27\0003\a\26\0=\a\28\6=\6\29\0055\6!\0009\a\30\0029\a\31\a9\a \aB\a\1\2=\a\15\0069\a\30\0029\a\31\a9\a \aB\a\1\2=\a\"\6=\6\31\0054\6\f\0005\a#\0>\a\1\0065\a$\0>\a\2\0065\a%\0>\a\3\0065\a&\0>\a\4\0065\a'\0>\a\5\0065\a(\0>\a\6\0065\a)\0>\a\a\0065\a*\0>\a\b\0065\a+\0>\a\t\0065\a,\0>\a\n\0065\a-\0>\a\v\6=\6.\0059\6/\0029\0060\0069\0061\0065\a3\0009\b/\0029\b2\bB\b\1\2=\b4\a9\b/\0029\b5\bB\b\1\2=\b6\a9\b/\0029\b7\b)\t¸ˇB\b\2\2=\b8\a9\b/\0029\b7\b)\t\4\0B\b\2\2=\b9\a9\b/\0023\t:\0005\n;\0B\b\3\2=\b<\a9\b/\0023\t=\0005\n>\0B\b\3\2=\b?\a9\b/\0029\b@\bB\b\1\2=\bA\a9\b/\0029\bB\bB\b\1\2=\bC\a9\b/\0023\tD\0B\b\2\2=\bE\aB\6\2\2=\6/\0057\5F\0009\5G\0029\5H\5'\6I\0005\aJ\0009\b/\0029\b0\b9\bH\bB\b\1\2=\b/\a4\b\3\0005\tK\0>\t\1\b=\b.\aB\5\3\0019\5G\0029\5H\5'\6L\0005\aM\0009\b/\0029\b0\b9\bH\bB\b\1\2=\b/\a4\b\3\0005\tN\0>\t\1\b=\b.\aB\5\3\0019\5G\0029\5H\5'\6O\0005\aP\0009\b/\0029\b0\b9\bH\bB\b\1\2=\b/\a9\b\30\0029\b.\b4\t\3\0005\nQ\0>\n\1\t4\n\3\0005\vR\0>\v\1\nB\b\3\2=\b.\aB\5\3\0016\5S\0009\5T\5'\6U\0B\5\2\0016\5S\0009\5T\5'\6V\0B\5\2\0019\5G\0026\6F\0B\5\2\0012\0\0ÄK\0\1\0K\0\1\0Uautocmd FileType guihua_rust lua require('cmp').setup.buffer { enabled = false }Pautocmd FileType guihua lua require('cmp').setup.buffer { enabled = false }\bcmd\bvim\1\0\1\tname\tpath\1\0\1\tname\fcmdline\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\6?\1\0\1\tname\vbuffer\1\0\0\6/\fcmdline\nsetup\15cmp_config\t<CR>\0\n<C-e>\nabort\n<C-p>\rcomplete\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-f>\n<C-d>\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\vinsert\vpreset\fmapping\fsources\1\0\1\tname\vcrates\1\0\1\tname\15treesitter\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\nspell\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lua\1\0\1\tname\16cmp_tabnine\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\18documentation\1\0\0\rbordered\vwindow\vconfig\fsnippet\vexpand\1\0\0\0\15formatting\vformat\0\15duplicates\1\0\4\tpath\3\1\fluasnip\3\1\rnvim_lsp\3\0\vbuffer\3\1\vfields\1\0\2\23duplicates_default\3\0\14max_width\3\0\1\4\0\0\tkind\tabbr\tmenu\17experimental\1\0\2\15ghost_text\1\16native_menu\1\15completion\1\0\1\19keyword_length\3\1\17confirm_opts\1\0\0\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\1\0\n\rnvim_lsp\n(LSP)\nvsnip\14(Snippet)\16cmp_tabnine\14(Tabnine)\15treesitter\t(TS)\tpath\v(Path)\nemoji\f(Emoji)\nspell\f(Spell)\vbuffer\r(Buffer)\tcalc\v(Calc)\fluasnip\14(Snippet)\1\0\25\tText\tÔùæ \vMethod\tÓÉå \rOperator\bÔöî\14Interface\tÔ∞Æ \nColor\tÓà´ \vModule\tÔô® \nEvent\tÔÉß \rFunction\tÔûî \16Constructor\tÔê• \15EnumMember\tÔÖù \rProperty\tÓò§ \rConstant\tÔ≤Ä \vStruct\tÔÉä \rVariable\tÔö¶ \fSnippet\tÔÉÑ \vFolder\tÔùä \tUnit\bÔ•¨\nValue\tÔ¢ü \18TypeParameter\tÔûÉ \tFile\bÔúò\nClass\tÔ†ñ \nField\tÓúñ \tEnum\bÔ©ó\fKeyword\tÔ†ä \14Reference\tÔúú \bcmp\14lazy_load luasnip.loaders.from_vscode\fluasnip\frequire\npcall\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: sniprun
time([[Config for sniprun]], true)
try_loadstring("\27LJ\2\2ÿ\5\0\0\5\0\28\0!6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0004\2\0\0=\2\4\0014\2\0\0=\2\5\0015\2\t\0005\3\a\0005\4\6\0=\4\b\3=\3\n\2=\2\v\0015\2\f\0=\2\r\0015\2\14\0=\2\15\0015\2\16\0=\2\17\0015\2\19\0005\3\18\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\2=\2\27\1B\0\2\1K\0\1\0\18snipruncolors\26SniprunFloatingWinErr\1\0\2\fctermfg\fDarkRed\afg\f#881515\26SniprunVirtualTextErr\1\0\4\fctermbg\fDarkRed\abg\f#881515\afg\f#000000\vcterfg\nBlack\25SniprunFloatingWinOk\1\0\2\fctermfg\tCyan\afg\f#66eeff\25SniprunVirtualTextOk\1\0\0\1\0\4\fctermbg\tCyan\abg\f#66eeff\afg\f#000000\vcterfg\nBlack\19show_no_output\1\3\0\0\fClassic\20TempFloatWindow\20display_options\1\0\2\19terminal_width\3-\25notification_timeout\3\5\fdisplay\1\3\0\0\fClassic\18VirtualTextOk\24interpreter_options\17GFM_original\1\0\0\21use_on_filetypes\1\0\0\1\2\0\0\20markdown.pandoc\16repl_enable\26selected_interpreters\1\0\3\20inline_messages\3\0\fborders\vsingle\21live_mode_toggle\aon\nsetup\fsniprun\frequire\0", "config", "sniprun")
time([[Config for sniprun]], false)
-- Config for: cmp-spell
time([[Config for cmp-spell]], true)
try_loadstring("\27LJ\2\2^\0\0\4\0\6\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0004\2\3\0005\3\3\0>\3\1\2=\2\5\1B\0\2\1K\0\1\0\fsources\1\0\0\1\0\1\tname\nspell\nsetup\bcmp\frequire\0", "config", "cmp-spell")
time([[Config for cmp-spell]], false)
-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "impatient.nvim")
time([[Config for impatient.nvim]], false)
-- Config for: material
time([[Config for material]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "material")
time([[Config for material]], false)
-- Config for: cmp-nvim-lsp
time([[Config for cmp-nvim-lsp]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-nvim-lsp")
time([[Config for cmp-nvim-lsp]], false)
-- Config for: neovim-session-manager
time([[Config for neovim-session-manager]], true)
try_loadstring("\27LJ\2\2ª\3\0\0\a\0\18\0\0286\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\1\3\0015\2\n\0\18\4\0\0009\3\4\0006\5\5\0009\5\6\0059\5\a\5'\6\b\0B\5\2\2'\6\t\0B\3\4\2=\3\v\0026\3\0\0'\4\f\0B\3\2\0029\3\r\0039\3\14\3=\3\15\0025\3\16\0=\3\17\2B\1\2\1K\0\1\0\30autosave_ignore_filetypes\1\2\0\0\14gitcommit\18autoload_mode\16LastSession\17AutoloadMode\27session_manager.config\17sessions_dir\1\0\6\31autosave_ignore_not_normal\2\20max_path_length\3P\26autosave_last_session\2\19colon_replacer\a++\29autosave_only_in_session\1\18path_replacer\a__\rsessions\tdata\fstdpath\afn\bvim\bnew\nsetup\20session_manager\17plenary.path\frequire\0", "config", "neovim-session-manager")
time([[Config for neovim-session-manager]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
try_loadstring("\27LJ\2\2F\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\18<leader><tab>\27UltiSnipsExpandTrigger\6g\bvim\0", "config", "ultisnips")
time([[Config for ultisnips]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\2Ì\2\0\0\4\0\r\0@6\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0B\0\3\2\a\0\4\0X\0\bÄ6\0\0\0009\0\1\0009\0\5\0)\1\0\0'\2\6\0'\3\a\0B\0\4\1X\0/Ä6\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0B\0\3\2\a\0\b\0X\0\bÄ6\0\0\0009\0\1\0009\0\5\0)\1\0\0'\2\6\0'\3\t\0B\0\4\1X\0\31Ä6\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0B\0\3\2\a\0\n\0X\0\bÄ6\0\0\0009\0\1\0009\0\5\0)\1\0\0'\2\6\0'\3\a\0B\0\4\1X\0\15Ä6\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0B\0\3\2\a\0\v\0X\0\aÄ6\0\0\0009\0\1\0009\0\5\0)\1\0\0'\2\6\0'\3\f\0B\0\4\1K\0\1\0\b#%s\nshell\ago\v/*%s*/\6c\t//%s\18commentstring\24nvim_buf_set_option\bcpp\rfiletype\24nvim_buf_get_option\bapi\bvim‡\1\1\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0003\2\4\0=\2\5\1B\0\2\1K\0\1\0\thook\0\1\0\a\20create_mappings\2\17line_mapping\bgcc\30comment_chunk_text_object\aic\"comment_empty_trim_whitespace\2\19marker_padding\2\21operator_mapping\agc\18comment_empty\2\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\2Ï\3\0\0\a\0\22\0\0266\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\a\0005\3\6\0=\3\b\0025\3\t\0=\3\n\2=\2\v\0015\2\f\0005\3\r\0=\3\14\0026\3\15\0009\3\16\3'\4\17\0'\5\18\0'\6\19\0B\3\4\2=\3\20\2=\2\21\1B\0\2\1K\0\1\0\14fast_wrap\fpattern\5\b%s+\25 [%'%\"%)%>%]%)%}%,] \tgsub\vstring\nchars\1\6\0\0\6{\6[\6(\6\"\6'\1\0\6\fend_key\6$\14highlight\vSearch\bmap\n<M-e>\tkeys\31qwertyuiopzxcvbnmasdfghjkl\19highlight_grey\fComment\16check_comma\2\14ts_config\15javascript\1\2\0\0\20template_string\blua\1\0\1\tjava\2\1\2\0\0\vstring\21disable_filetype\1\0\1\rcheck_ts\2\1\a\0\0\20TelescopePrompt\18spectre_panel\rdap-repl\vguihua\16guihua_rust\15clap_input\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: cmp-tabnine
time([[Config for cmp-tabnine]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-tabnine")
time([[Config for cmp-tabnine]], false)
-- Config for: cmp-buffer
time([[Config for cmp-buffer]], true)
try_loadstring("\27LJ\2\2n\0\0\5\0\a\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\5\0004\2\3\0005\3\3\0004\4\0\0=\4\4\3>\3\1\2=\2\6\1B\0\2\1K\0\1\0\fsources\1\0\0\voption\1\0\1\tname\vbuffer\nsetup\bcmp\frequire\0", "config", "cmp-buffer")
time([[Config for cmp-buffer]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: cmp_luasnip
time([[Config for cmp_luasnip]], true)
try_loadstring("\27LJ\2\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire[\1\0\4\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0003\3\3\0=\3\5\2=\2\a\1B\0\2\1K\0\1\0\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "cmp_luasnip")
time([[Config for cmp_luasnip]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\2Î\2\0\0\3\0\v\0\0196\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0006\1\0\0009\1\a\0019\1\b\1'\2\t\0B\1\2\2'\2\n\0&\1\2\1=\1\6\0K\0\1\0\r/session\ncache\fstdpath\afn dashboard_session_directory\1\0\a\rnew_file\fSPC c f\23change_colorscheme\fSPC f c\15book_marks\fSPC f m\17last_session\fSPC s l\17find_history\fSPC f h\14find_word\fSPC f q\14find_file\fSPC f f\30dashboard_custom_shortcut\1\2\0\0\26üê¨ Have A Good Day!\28dashboard_custom_footer\6g\bvim\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: telescope-rg.nvim
time([[Config for telescope-rg.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "telescope-rg.nvim")
time([[Config for telescope-rg.nvim]], false)
-- Config for: nerdcommenter
time([[Config for nerdcommenter]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nerdcommenter")
time([[Config for nerdcommenter]], false)
-- Config for: cmp-nvim-lua
time([[Config for cmp-nvim-lua]], true)
try_loadstring("\27LJ\2\2a\0\0\4\0\6\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0004\2\3\0005\3\3\0>\3\1\2=\2\5\1B\0\2\1K\0\1\0\fsources\1\0\0\1\0\1\tname\rnvim_lua\nsetup\bcmp\frequire\0", "config", "cmp-nvim-lua")
time([[Config for cmp-nvim-lua]], false)
-- Config for: cmp-path
time([[Config for cmp-path]], true)
try_loadstring("\27LJ\2\2l\0\0\5\0\a\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\5\0004\2\3\0005\3\3\0004\4\0\0=\4\4\3>\3\1\2=\2\6\1B\0\2\1K\0\1\0\fsources\1\0\0\voption\1\0\1\tname\tpath\nsetup\bcmp\frequire\0", "config", "cmp-path")
time([[Config for cmp-path]], false)
-- Config for: friendly-snippets
time([[Config for friendly-snippets]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "friendly-snippets")
time([[Config for friendly-snippets]], false)
-- Config for: nvim-colorizer
time([[Config for nvim-colorizer]], true)
try_loadstring("\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer")
time([[Config for nvim-colorizer]], false)
-- Config for: telescope-vim-bookmarks.nvim
time([[Config for telescope-vim-bookmarks.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "telescope-vim-bookmarks.nvim")
time([[Config for telescope-vim-bookmarks.nvim]], false)
-- Config for: vim-bookmarks
time([[Config for vim-bookmarks]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "vim-bookmarks")
time([[Config for vim-bookmarks]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: cmp-cmdline
time([[Config for cmp-cmdline]], true)
try_loadstring("\27LJ\2\2y\0\0\5\0\b\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0009\0\3\0'\1\4\0005\2\6\0004\3\3\0005\4\5\0>\4\1\0034\4\0\0>\4\2\3=\3\a\2B\0\3\1K\0\1\0\fsources\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\nsetup\bcmp\frequire\0", "config", "cmp-cmdline")
time([[Config for cmp-cmdline]], false)
-- Config for: telescope-ui-select.nvim
time([[Config for telescope-ui-select.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "telescope-ui-select.nvim")
time([[Config for telescope-ui-select.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
