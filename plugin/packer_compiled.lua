-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

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
    config = { "\27LJ\2\n∑\4\0\0\a\0\21\0(6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\b\0006\4\3\0009\4\4\0049\4\5\4'\6\6\0B\4\2\2'\5\a\0&\4\5\4=\4\t\3B\1\2\0015\1\v\0005\2\n\0=\2\f\0015\2\r\0=\2\14\0015\2\15\0=\2\16\0016\2\3\0009\2\4\0029\2\17\2'\4\18\0009\5\f\1B\2\3\0016\2\3\0009\2\4\0029\2\17\2'\4\19\0009\5\16\1B\2\3\0016\2\3\0009\2\4\0029\2\17\2'\4\20\0009\5\14\1B\2\3\1K\0\1\0\26DapBreakpointRejected\15DapStopped\18DapBreakpoint\16sign_define\fstopped\1\0\4\ttext\v‚≠êÔ∏è\nnumhl\"LspDiagnosticsSignInformation\vtexthl\"LspDiagnosticsSignInformation\vlinehl\28DiagnosticUnderlineInfo\rrejected\1\0\4\ttext\b‚èß\nnumhl\5\vtexthl\27LspDiagnosticsSignHint\vlinehl\5\nerror\1\0\0\1\0\4\ttext\tüõë\nnumhl\5\vtexthl\28LspDiagnosticsSignError\vlinehl\5\22installation_path\1\0\0\17/dapinstall/\tdata\fstdpath\afn\bvim\nsetup\16dap-install\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/DAPInstall.nvim",
    url = "https://github.com/ravenxrz/DAPInstall.nvim"
  },
  ["FixCursorHold.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\næ\1\0\0\a\0\v\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0005\2\t\0004\3\3\0006\4\4\0009\4\5\0049\4\6\4'\6\a\0B\4\2\2'\5\b\0&\4\5\4>\4\1\3=\3\n\2B\0\2\1K\0\1\0\npaths\1\0\0\17/my-snippets\vconfig\fstdpath\afn\bvim\tload\14lazy_load luasnip.loaders.from_vscode\frequire\0" },
    loaded = true,
    needs_bufread = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["aerial.nvim"] = {
    config = { "\27LJ\2\n\v\0\1\1\0\0\0\1L\0\2\0’\b\1\0\5\0\30\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\0025\3\n\0=\3\v\0024\3\0\0=\3\f\0025\3\r\0004\4\0\0=\4\14\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0005\4\19\0=\4\20\0033\4\21\0=\4\22\3=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\28\0=\3\29\2B\0\2\1K\0\1\0\rmarkdown\1\0\1\17update_delay\3¨\2\15treesitter\1\0\1\17update_delay\3¨\2\blsp\1\0\3\17update_delay\3¨\2\23update_when_errors\2\31diagnostics_trigger_update\2\nfloat\roverride\0\15min_height\1\3\0\0\3\b\4ö≥ÊÃ\tô≥Ê˝\3\1\0\3\15max_height\4Õô≥Ê\fÃô≥ˇ\3\vborder\frounded\rrelative\vcursor\vguides\1\0\4\15nested_top\t‚îÇ \14last_item\v‚îî‚îÄ\15whitespace\a  \rmid_item\v‚îú‚îÄ\vignore\14filetypes\1\0\3\21unlisted_buffers\2\rwintypes\fspecial\rbuftypes\fspecial\nicons\16filter_kind\1\t\0\0\nClass\16Constructor\tEnum\rFunction\14Interface\vModule\vMethod\vStruct\vlayout\14max_width\1\0\3\14placement\vwindow\22default_direction\17prefer_right\14min_width\3\n\1\3\0\0\3(\4ö≥ÊÃ\tô≥¶˛\3\rbackends\1\0\17\22highlight_on_jump\3¨\2\23highlight_on_hover\1\22highlight_closest\2\19highlight_mode\16split_width\21disable_max_size\3Äâz\22disable_max_lines\3êN\21default_bindings\2\19close_behavior\tauto\18update_events\28TextChanged,InsertLeave\16show_guides\1\20close_on_select\1\18post_jump_cmd\15normal! zz\19open_automatic\1\14nerd_font\tauto\17manage_folds\1\23link_tree_to_folds\2\23link_folds_to_tree\1\1\4\0\0\15treesitter\blsp\rmarkdown\nsetup\vaerial\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/aerial.nvim",
    url = "https://github.com/stevearc/aerial.nvim"
  },
  ["bufdelete.nvim"] = {
    config = { "\27LJ\2\n]\0\0\3\0\6\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0006\1\0\0009\1\1\0019\1\4\1'\2\5\0&\1\2\1=\1\4\0K\0\1\0\aL0\15cinoptions\bcpp\rfiletype\abo\bvimà\1\0\0\a\0\n\0\0186\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0006\4\0\0009\4\4\0049\4\b\4'\6\t\0B\4\2\2'\5\a\0&\2\5\2B\0\2\1K\0\1\0\6%\vexpand\6\"\18open -a skim \rjobstart\afn\bpdf\rfiletype\abo\bvim.\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\15syntax off\bcmd\bvim0\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\17iabbrev $ $$\bcmd\bvim¡\3\1\0\b\0 \0(6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\4\5\0B\2\2\0012\0\28Ä9\2\6\0015\4\30\0005\5\b\0005\6\a\0=\6\t\0055\6\n\0=\6\v\0055\6\f\0=\6\r\0055\6\15\0003\a\14\0=\a\16\0063\a\17\0=\a\18\6=\6\19\0055\6\21\0003\a\20\0=\a\22\6=\6\23\0055\6\25\0003\a\24\0=\a\26\6=\6\27\0055\6\28\0=\6\29\5=\5\31\4B\2\2\1K\0\1\0K\0\1\0\14overrides\1\0\0\fshebang\1\0\1\tdash\ash\21function_complex\21*.math_notes/%w+\1\0\0\0\21function_literal\rBrewfile\1\0\0\0\24function_extensions\bpdf\0\bcpp\1\0\0\0\fcomplex\1\0\1\17.*git/config\14gitconfig\fliteral\1\0\1\17MyBackupFile\blua\15extensions\1\0\0\1\0\1\apn\vpotion\nsetup\24filetype not found!\vnotify\bvim\rfiletype\frequire\npcall\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\ng\0\1\5\0\a\0\0149\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\15\0\1\0X\2\6Ä6\1\3\0009\1\4\0019\1\5\0019\3\0\0'\4\6\0D\1\3\0K\0\1\0\t:t:r\16fnamemodify\afn\bvim\t%.md\nmatch\tname\31\0\4\a\0\2\0\5'\4\0\0\18\5\0\0'\6\1\0&\4\6\4L\4\2\0\6)\6(Ç\2\0\2\5\0\n\0%6\2\0\0009\2\1\0028\2\0\0029\2\2\2\6\2\3\0X\2\2Ä+\2\2\0L\2\2\0006\2\0\0009\2\4\0029\2\5\2\18\4\0\0B\2\2\2\6\2\6\0X\2\2Ä+\2\2\0L\2\2\0006\2\0\0009\2\4\0029\2\a\2B\2\1\2\a\2\b\0X\2\bÄ6\2\0\0009\2\1\0028\2\0\0029\2\2\2\6\2\t\0X\2\2Ä+\2\2\0L\2\2\0:\2\1\1\4\2\0\0X\2\2Ä+\2\2\0L\2\2\0K\0\1\0\twiki\16<work-repo>\vgetcwd\30<buffer-name-I-dont-want>\fbufname\afn\30<i-dont-want-to-see-this>\rfiletype\abo\bvim¨\n\1\0\b\0'\0L6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\4\5\0B\2\2\0012\0@Ä9\2\6\0015\4\16\0005\5\a\0003\6\b\0=\6\t\0053\6\n\0=\6\v\0053\6\f\0=\6\r\0054\6\3\0005\a\14\0>\a\1\6=\6\15\5=\5\17\4B\2\2\0016\2\3\0009\2\18\0029\2\19\2'\4\20\0'\5\21\0'\6\22\0005\a\23\0B\2\5\0016\2\3\0009\2\18\0029\2\19\2'\4\24\0'\5\25\0'\6\26\0005\a\27\0B\2\5\0016\2\3\0009\2\18\0029\2\19\2'\4\20\0'\5\28\0'\6\29\0005\a\30\0B\2\5\0016\2\3\0009\2\18\0029\2\19\2'\4\24\0'\5\31\0'\6 \0005\a!\0B\2\5\0016\2\3\0009\2\18\0029\2\19\2'\4\20\0'\5\"\0'\6#\0005\a$\0B\2\5\0016\2\3\0009\2\18\0029\2\19\2'\4\20\0'\5%\0'\6#\0005\a&\0B\2\5\1K\0\1\0K\0\1\0\1\0\2\fnoremap\2\vsilent\2\abd\1\0\2\fnoremap\2\vsilent\2#:BufferLineSortByExtension<CR>\abe\1\0\2\fnoremap\2\vsilent\2#<ESC>:BufferLineCyclePrev<CR>i\14<leader>p\1\0\2\fnoremap\2\vsilent\2\29:BufferLineCyclePrev<CR>\abp\1\0\2\fnoremap\2\vsilent\2#<ESC>:BufferLineCycleNext<CR>i\14<leader>n\6i\1\0\2\fnoremap\2\vsilent\2\29:BufferLineCycleNext<CR>\abn\6n\20nvim_set_keymap\bapi\foptions\1\0\0\foffsets\1\0\3\15text_align\vcenter\ttext\18File Explorer\rfiletype\rNvimTree\18custom_filter\0\26diagnostics_indicator\0\19name_formatter\0\1\0\24\22left_trunc_marker\bÔÇ®!diagnostics_update_in_insert\1\15close_icon\bÔÄç\18modified_icon\b‚óè\20show_close_icon\2\22buffer_close_icon\bÔôï\24show_tab_indicators\2\23left_mouse_command\14buffer %d\24right_mouse_command\16bdelete! %d\18close_command\16bdelete! %d\fnumbers\fordinal\16diagnostics\1\rtab_size\3\18\fsort_by\14directory\27always_show_bufferline\2\25enforce_regular_tabs\1\20separator_style\tthin\24persist_buffer_sort\2\22max_prefix_length\3\15\20max_name_length\3\18\28show_buffer_close_icons\2\22show_buffer_icons\2\23right_trunc_marker\bÔÇ©\tmode\fbuffers\nsetup\26bufferline not found!\vnotify\bvim\15bufferline\frequire\npcall\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-cmdline/after/plugin/cmp_cmdline.lua" },
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
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
    config = { "\27LJ\2\nª\1\0\0\6\0\5\0\n6\0\0\0'\2\1\0B\0\2\2\18\3\0\0009\1\2\0005\4\3\0004\5\0\0=\5\4\4B\1\3\1K\0\1\0\23ignored_file_types\1\0\5\24snippet_placeholder\a..\29show_prediction_strength\1\tsort\2\20max_num_results\3\20\14max_lines\3d\nsetup\23cmp_tabnine.config\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  cmp_luasnip = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\nÎ\2\0\0\4\0\v\0\0196\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0006\1\0\0009\1\a\0019\1\b\1'\3\t\0B\1\2\2'\2\n\0&\1\2\1=\1\6\0K\0\1\0\r/session\ncache\fstdpath\afn dashboard_session_directory\1\0\a\23change_colorscheme\fSPC f c\17find_history\fSPC f h\14find_word\fSPC f q\17last_session\fSPC s l\15book_marks\fSPC f m\rnew_file\fSPC c f\14find_file\fSPC f f\30dashboard_custom_shortcut\1\2\0\0\26üê¨ Have A Good Day!\28dashboard_custom_footer\6g\bvim\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["filetype.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["friendly-snippets"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n⁄\a\0\0\5\0\24\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\2B\0\2\1K\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\brow\3\0\bcol\3\1\vborder\vsingle\nstyle\fminimal\rrelative\vcursor\28current_line_blame_opts\1\0\4\14virt_text\2\22ignore_whitespace\1\ndelay\3Ë\a\18virt_text_pos\beol\17watch_gitdir\1\0\2\17follow_files\2\rinterval\3Ë\a\nsigns\1\0\n\24attach_to_untracked\2\nnumhl\1\14word_diff\1\vlinehl\1\18sign_priority\3\6!current_line_blame_formatter1<author>, <author_time:%Y-%m-%d> - <summary>\20max_file_length\3¿∏\2\20update_debounce\3d\23current_line_blame\1\15signcolumn\2\17changedelete\1\0\4\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ttext\6~\ahl\19GitSignsChange\14topdelete\1\0\4\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ttext\b‚Äæ\ahl\19GitSignsDelete\vdelete\1\0\4\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ttext\6_\ahl\19GitSignsDelete\vchange\1\0\4\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ttext\b‚îÇ\ahl\19GitSignsChange\badd\1\0\0\1\0\4\vlinehl\18GitSignsAddLn\nnumhl\18GitSignsAddNr\ttext\b‚îÇ\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n‚\t\0\0\6\0\27\0w6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\n\0'\4\v\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\f\0'\3\b\0'\4\r\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\f\0'\3\n\0'\4\14\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\15\0'\3\16\0'\4\t\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\15\0'\3\17\0'\4\v\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\18\0'\4\19\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\20\0'\4\21\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\22\0'\4\21\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\23\0'\4\24\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\25\0'\3\23\0'\4\24\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\25\0'\3\18\0'\4\19\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\26\0'\3\23\0'\4\24\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\26\0'\3\18\0'\4\19\0004\5\0\0B\0\5\1K\0\1\0\6i\6v\22<cmd>HopChar1<cr>\22<leader><leader>s\22<leader><leader>k\21<cmd>HopLine<cr>\22<leader><leader>j\21<cmd>HopWord<cr>\22<leader><leader>w\6T\6t\5ô\1<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>ò\1<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>\6oÇ\1<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>\6FÅ\1<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>\6f\6n\20nvim_set_keymap\bapi\bvim\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\19enable_profile\14impatient\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\ná\a\0\0\5\0\23\00036\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0006\2\3\0009\2\4\0025\3\6\0=\3\5\0026\2\3\0009\2\4\0025\3\b\0=\3\a\0026\2\3\0009\2\4\2)\3\1\0=\3\t\0026\2\3\0009\2\4\2'\3\v\0=\3\n\0026\2\3\0009\2\4\2+\3\1\0=\3\f\0026\2\3\0009\2\4\2+\3\2\0=\3\r\0026\2\3\0009\2\4\2+\3\2\0=\3\14\0026\2\3\0009\2\4\2+\3\2\0=\3\15\0026\2\3\0009\2\4\0025\3\17\0=\3\16\0026\2\3\0009\2\18\2'\3\20\0=\3\19\0029\2\21\0015\4\22\0B\2\2\1K\0\1\0\1\0\1\25show_current_context\2\nsetup\n99999\16colorcolumn\awo\1\21\0\0\nclass\vreturn\rfunction\vmethod\b^if\v^while\16jsx_element\t^for\f^object\v^table\nblock\14arguments\17if_statement\16else_clause\16jsx_element\29jsx_self_closing_element\18try_statement\17catch_clause\21import_statement\19operation_type&indent_blankline_context_patterns*indent_blankline_show_current_context$indent_blankline_use_treesitter-indent_blankline_show_first_indent_level4indent_blankline_show_trailing_blankline_indent\b‚ñè\26indent_blankline_char\23indentLine_enabled\1\b\0\0\thelp\rstartify\14dashboard\vpacker\17neogitstatus\rNvimTree\fTrouble&indent_blankline_filetype_exclude\1\3\0\0\rterminal\vnofile%indent_blankline_buftype_exclude\6g\bvim\21indent_blankline\frequire\npcall\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\nƒ\4\0\0\6\0\r\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3'\5\a\0B\3\2\2'\4\b\0&\3\4\3=\3\t\0025\3\n\0=\3\v\0024\3\0\0=\3\f\2B\0\2\1K\0\1\0\24extra_trigger_chars\17handler_opts\1\0\1\vborder\frounded\rlog_path\23/lsp_signature.log\ncache\fstdpath\afn\bvim\1\0\23\16hint_prefix\nüêº \tbind\2\17hi_parameter LspSignatureActiveParameter\twrap\2\16hint_scheme\vString\ndebug\1\16hint_enable\2\ffix_pos\1\18close_timeout\3†\31\26floating_window_off_y\3\0\26floating_window_off_x\3\1#floating_window_above_cur_line\2\20floating_window\2\14max_width\3P\15max_height\3\f\14doc_lines\3\n\fverbose\1\19timer_interval\3»\1\17shadow_guibg\nBlack\17shadow_blend\3$\fpadding\5\vzindex\3»\1\19always_trigger\1\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nG\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvim#\0\1\4\0\2\0\5'\1\0\0\18\2\0\0'\3\1\0&\1\3\1L\1\2\0\b --\b-- ´\1\0\0\a\0\b\0\0196\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\2\1'\3\4\0B\1\2\0025\2\5\0#\3\1\0006\4\6\0009\4\a\4\21\6\2\0\"\6\6\3B\4\2\0028\5\4\2L\5\2\0\tceil\tmath\1\n\0\0\v‚ñà‚ñà\v‚ñá‚ñá\v‚ñÜ‚ñÜ\v‚ñÖ‚ñÖ\v‚ñÑ‚ñÑ\v‚ñÉ‚ñÉ\v‚ñÇ‚ñÇ\v‚ñÅ‚ñÅ\6 \6$\6.\tline\afn\bvim[\0\0\5\0\5\0\t'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\2&\0\1\0L\0\2\0\15shiftwidth\24nvim_buf_get_option\bapi\bvim\rspaces: Ö\n\1\0\17\0:\0a6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\4\5\0B\2\2\0012\0UÄ3\2\6\0005\3\a\0005\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0005\5\15\0=\5\r\0045\5\17\0005\6\16\0=\6\18\0055\6\19\0=\6\20\0055\6\21\0=\6\22\5=\5\23\4=\2\24\0045\5\25\0003\6\26\0=\6\27\0055\6\28\0005\a\29\0=\a\r\0065\a\30\0005\b\31\0005\t \0003\n!\0003\v\"\0009\f#\0015\14+\0005\15$\0005\16%\0=\16&\0155\16'\0=\16(\0155\16)\0=\16*\15=\15,\0145\15-\0004\16\3\0>\b\1\16>\3\2\16=\16.\0154\16\3\0>\5\1\16=\16/\0154\16\3\0>\6\1\16=\0160\0155\0161\0>\4\1\16>\v\2\16>\a\4\16=\0162\0154\16\3\0>\t\1\16=\0163\0154\16\3\0>\n\1\16=\0164\15=\15\v\0145\0155\0004\16\0\0=\16.\0154\16\0\0=\16/\0154\16\3\0>\6\1\16=\0160\0155\0166\0=\0162\0154\16\0\0=\0163\0154\16\0\0=\0164\15=\0157\0144\15\0\0=\0158\0144\15\0\0=\0159\14B\f\2\1K\0\1\0K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\0\0\14lualine_z\14lualine_y\14lualine_x\1\6\0\0\0\0\rencoding\0\15fileformat\14lualine_c\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\23disabled_filetypes\1\5\0\0\nalpha\14dashboard\rNvimTree\fOutline\23section_separators\1\0\2\tleft\b‚Üê\nright\b‚Üí\25component_separators\1\0\2\tleft\b‚Üê\nright\b‚Üí\1\0\3\ntheme\tauto\25always_divide_middle\2\18icons_enabled\2\nsetup\0\0\1\2\1\0\rlocation\fpadding\3\0\1\2\2\0\vbranch\ticon\b·õ¶\18icons_enabled\2\1\2\1\0\rfiletype\18icons_enabled\1\1\0\3\funnamed\14[No Name]\rmodified\b[+]\rreadonly\b[-]\1\2\3\0\rfilename\20shorting_target\3(\16file_status\2\tpath\3\1\bfmt\0\1\2\0\0\tmode\tcond\15diff_color\fremoved\1\0\1\afg\f#ec5f67\rmodified\1\0\1\afg\f#ecbe7b\nadded\1\0\0\1\0\1\afg\f#98be65\1\0\3\nadded\a+ \fremoved\t‚ê° \rmodified\b÷é \1\2\1\0\tdiff\fcolored\2\fsymbols\1\0\2\twarn\f‚ö†Ô∏è \nerror\t‚õî \rsections\1\3\0\0\nerror\twarn\fsources\1\2\0\0\20nvim_diagnostic\1\2\3\0\16diagnostics\19always_visible\2\21update_in_insert\1\fcolored\1\0\23lualine not found!\vnotify\bvim\flualine\frequire\npcall\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["material.nvim"] = {
    config = { "\27LJ\2\nÃ\a\0\0\6\0#\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0024\3\0\0=\3\14\2B\0\2\0016\0\15\0009\0\16\0009\0\17\0\a\0\18\0X\0\5Ä6\0\15\0009\0\16\0'\1\20\0=\1\19\0X\0\14Ä6\0\15\0009\0\16\0009\0\17\0\a\0\21\0X\0\5Ä6\0\15\0009\0\16\0'\1\22\0=\1\19\0X\0\4Ä6\0\15\0009\0\16\0'\1\23\0=\1\19\0006\0\15\0009\0\24\0'\2\25\0B\0\2\0016\0\15\0009\0\26\0009\0\27\0'\2\28\0'\3\29\0'\4\30\0005\5\31\0B\0\5\0016\0\15\0009\0\26\0009\0\27\0'\2\28\0'\3 \0'\4!\0005\5\"\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2F<Cmd>lua require('material.functions').change_style('darker')<CR>\15<leader>md\1\0\2\fnoremap\2\vsilent\2G<Cmd>lua require('material.functions').change_style('lighter')<CR>\15<leader>ml\6n\20nvim_set_keymap\bapi\25colorscheme material\bcmd\vdarker\14palenight\vmidium\flighter\19material_style\nlight\ntheme\6g\bvim\22custom_highlights\fdisable\1\0\5\19colored_cursor\1\16term_colors\1\14eob_lines\1\15background\1\fborders\1\20high_visibility\1\0\2\flighter\1\vdarker\1\23contrast_filetypes\1\4\0\0\rterminal\vpacker\aqf\fitalics\1\0\5\fstrings\1\14functions\1\rkeywords\1\14variables\1\rcomments\2\rcontrast\1\0\2\18async_loading\2\18lualine_style\fdefault\1\0\a\17line_numbers\1\21floating_windows\1\rsidebars\1\15popup_menu\1\24non_current_windows\1\16cursor_line\1\16sign_column\1\nsetup\rmaterial\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["mathjax-support-for-mkdp"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/mathjax-support-for-mkdp",
    url = "https://github.com/iamcco/mathjax-support-for-mkdp"
  },
  ["md-img-paste.vim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/md-img-paste.vim",
    url = "https://github.com/ferrine/md-img-paste.vim"
  },
  ["neovim-session-manager"] = {
    config = { "\27LJ\2\nÓ\4\0\0\n\0\20\0 6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\n\0\18\6\0\0009\4\4\0006\a\5\0009\a\6\a9\a\a\a'\t\b\0B\a\2\2'\b\t\0B\4\4\2=\4\v\0036\4\0\0'\6\f\0B\4\2\0029\4\r\0049\4\14\4=\4\15\0035\4\16\0=\4\17\3B\1\2\0016\1\5\0009\1\18\1'\3\19\0B\1\2\1K\0\1\0£\1    augroup _open_nvim_tree\n      autocmd! * <buffer>\n      autocmd SessionLoadPost * silent! lua require(\"nvim-tree\").toggle(false,true)\n    augroup end\n    \bcmd\30autosave_ignore_filetypes\1\2\0\0\14gitcommit\18autoload_mode\15CurrentDir\17AutoloadMode\27session_manager.config\17sessions_dir\1\0\6\19colon_replacer\a++\18path_replacer\a__\20max_path_length\3P\29autosave_only_in_session\1\31autosave_ignore_not_normal\2\26autosave_last_session\2\rsessions\tdata\fstdpath\afn\bvim\bnew\nsetup\20session_manager\17plenary.path\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nÏ\3\0\0\t\0\22\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\3=\3\v\0025\3\f\0005\4\r\0=\4\14\0036\4\15\0009\4\16\4'\6\17\0'\a\18\0'\b\19\0B\4\4\2=\4\20\3=\3\21\2B\0\2\1K\0\1\0\14fast_wrap\fpattern\5\b%s+\25 [%'%\"%)%>%]%)%}%,] \tgsub\vstring\nchars\1\6\0\0\6{\6[\6(\6\"\6'\1\0\6\16check_comma\2\tkeys\31qwertyuiopzxcvbnmasdfghjkl\fend_key\6$\14highlight\vSearch\19highlight_grey\fComment\bmap\n<M-e>\14ts_config\15javascript\1\2\0\0\20template_string\blua\1\0\1\tjava\2\1\2\0\0\vstring\21disable_filetype\1\0\1\rcheck_ts\2\1\a\0\0\20TelescopePrompt\18spectre_panel\rdap-repl\vguihua\16guihua_rust\15clap_input\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nó\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17Ä6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0Í\1\0\0\6\3\6\1)-\0\0\0009\0\0\0009\0\1\0\14\0\0\0X\0\2Ä+\0\1\0L\0\2\0-\0\0\0009\0\0\0009\0\1\0-\1\1\0B\1\1\0028\0\1\0\14\0\0\0X\1\2Ä+\1\1\0L\1\2\0009\1\2\0009\1\3\0019\1\4\1\18\3\1\0009\1\5\1B\1\2\3-\3\2\0)\5\0\0B\3\2\2:\4\1\3\23\4\0\4>\4\1\3:\4\1\3:\5\1\1\3\5\4\0X\4\4Ä:\4\1\3:\5\1\2\2\4\5\0X\4\2Ä+\4\1\0X\5\1Ä+\4\2\0L\4\2\0\2¿\4¿\3¿\18pos_begin_end\tmark\fsnippet\vparent\18current_nodes\fsession\2ƒ\6\0\0\14\3\14\1´\1-\0\0\0009\0\0\0009\0\1\0\14\0\0\0X\0\2Ä+\0\1\0L\0\2\0-\0\1\0)\2\0\0B\0\2\2:\1\1\0\23\1\0\1>\1\1\0-\1\0\0009\1\0\0019\1\1\1-\2\2\0B\2\1\0028\1\2\1\14\0\1\0X\2\2Ä+\2\1\0L\2\2\0009\2\2\0019\2\3\0029\3\4\2:\3\0\3\15\0\3\0X\4\28Ä9\4\5\3\18\6\4\0009\4\6\4B\4\2\2:\5\1\0:\6\1\4\0\6\5\0X\5\bÄ:\5\1\0:\6\1\4\5\5\6\0X\5\16Ä:\5\2\0:\6\2\4\1\6\5\0X\5\fÄ\18\a\2\0009\5\a\2B\5\2\1-\5\0\0009\5\0\0059\5\1\5-\6\2\0B\6\1\2+\a\0\0<\a\6\5+\5\1\0L\5\2\0009\4\b\2\18\6\4\0009\4\t\4)\a\1\0+\b\2\0B\4\4\2\18\1\4\0\n\1\0\0X\4SÄ9\4\n\1\n\4\0\0X\4PÄ\4\1\2\0X\4NÄU\4MÄ9\4\n\1\r\5\4\0X\5\4Ä9\5\5\4\18\a\5\0009\5\v\5B\5\2\2\4\4\2\0X\6\6Ä\15\0\5\0X\6\4Ä:\6\1\0:\a\1\5\0\6\a\0X\6\nÄ:\6\1\0:\a\1\5\5\6\a\0X\6\4Ä:\6\2\0:\a\2\5\0\6\a\0X\6\2Ä+\6\1\0X\a\1Ä+\6\2\0\n\4\0\0X\a\3Ä9\a\n\2\5\4\a\0X\a\fÄ\18\t\2\0009\a\a\2B\a\2\1-\a\0\0009\a\0\a9\a\1\a-\b\2\0B\b\1\2+\t\0\0<\t\b\a+\a\1\0L\a\2\0\15\0\6\0X\a\bÄ-\a\0\0009\a\0\a9\a\1\a-\b\2\0B\b\1\2<\1\b\a+\a\2\0L\a\2\0+\a\0\0006\b\f\0009\n\r\1\18\v\1\0)\f\1\0+\r\2\0B\b\5\3\18\1\t\0\18\a\b\0\14\0\a\0X\b∏\18\n\2\0009\b\a\2B\b\2\1-\b\0\0009\b\0\b9\b\1\b-\t\2\0B\t\1\2+\n\0\0<\n\t\b+\b\1\0L\b\2\0X\4´\15\0\3\0X\4\bÄ-\4\0\0009\4\0\0049\4\1\4-\5\2\0B\5\1\2<\2\5\4+\4\2\0L\4\2\0\18\6\2\0009\4\a\2B\4\2\1-\4\0\0009\4\0\0049\4\1\4-\5\2\0B\5\1\2+\6\0\0<\6\5\4+\4\1\0L\4\2\0\2¿\3¿\4¿\14jump_from\npcall\14pos_begin\tnext\14jump_into\16inner_first\25remove_from_jumplist\fpos_end\tmark\17insert_nodes\fsnippet\vparent\18current_nodes\fsession\2Ü\2\1\1\n\0\n\1*6\1\0\0006\3\1\0'\4\2\0B\1\3\3\14\0\1\0X\3\1Ä2\0\"Ä6\3\3\0009\3\4\0039\3\5\0036\4\3\0009\4\4\0049\4\6\0043\5\a\0003\6\b\0\t\0\0\0X\a\nÄ\18\a\5\0B\a\1\2\15\0\a\0X\b\3Ä9\a\t\2)\tˇˇB\a\2\0022\0\0ÄL\a\2\0X\a\fÄ\18\a\5\0B\a\1\2\15\0\a\0X\b\6Ä\18\a\6\0B\a\1\2\15\0\a\0X\b\2Ä9\a\t\2B\a\1\0022\0\0ÄL\a\2\0002\0\0ÄK\0\1\0K\0\1\0\rjumpable\0\0\25nvim_get_current_buf\24nvim_win_get_cursor\bapi\bvim\fluasnip\frequire\npcall˛ˇˇˇ\31w\0\0\b\0\6\0\0176\0\0\0009\0\1\0009\0\2\0B\0\1\0026\1\3\0\18\3\0\0B\1\2\4H\4\5Ä9\6\4\5\a\6\5\0X\6\2Ä+\6\2\0L\6\2\0F\4\3\3R\4˘+\1\1\0L\1\2\0\remmet_ls\tname\npairs\20buf_get_clients\blsp\bvimj\0\2\a\2\a\0\0146\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\5B\2\3\2=\2\0\1-\2\1\0009\3\5\0009\3\6\0038\2\3\2=\2\4\1L\1\2\0\3¿\5¿\tname\vsource\tmenu\a%s\vformat\vstring\tkindC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire•\2\0\1\6\3\v\00006\1\0\0'\3\1\0B\1\2\0026\2\0\0'\4\2\0B\2\2\0029\3\3\1B\3\1\2\15\0\3\0X\4\3Ä9\3\4\1B\3\1\1X\3\"Ä9\3\5\2B\3\1\2\15\0\3\0X\4\3Ä9\3\6\2B\3\1\1X\3\27Ä-\3\0\0)\5\1\0B\3\2\2\15\0\3\0X\4\4Ä9\3\a\2)\5\1\0B\3\2\1X\3\18Ä-\3\1\0B\3\1\2\15\0\3\0X\4\3Ä\18\3\0\0B\3\1\1X\3\vÄ-\3\2\0B\3\1\2\15\0\3\0X\4\5Ä6\3\b\0009\3\t\0039\3\n\3D\3\1\0X\3\2Ä\18\3\0\0B\3\1\1K\0\1\0\a¿\6¿\b¿\17cmp#complete\afn\bvim\tjump\vexpand\15expandable\21select_next_item\fvisible\fluasnip\bcmp\frequireü\1\0\1\6\1\6\0\0256\1\0\0'\3\1\0B\1\2\0026\2\0\0'\4\2\0B\2\2\0029\3\3\1B\3\1\2\15\0\3\0X\4\3Ä9\3\4\1B\3\1\1X\3\vÄ-\3\0\0)\5ˇˇB\3\2\2\15\0\3\0X\4\4Ä9\3\5\2)\5ˇˇB\3\2\1X\3\2Ä\18\3\0\0B\3\1\1K\0\1\0\a¿\tjump\21select_prev_item\fvisible\fluasnip\bcmp\frequireÜ\2\0\1\6\1\n\0-6\1\0\0'\3\1\0B\1\2\0026\2\0\0'\4\2\0B\2\2\0029\3\3\1B\3\1\2\15\0\3\0X\4\15Ä9\3\4\0016\5\5\0009\5\6\5B\3\2\2\15\0\3\0X\4\tÄ-\3\0\0)\5\1\0B\3\2\2\15\0\3\0X\4\3Ä9\3\a\2)\5\1\0B\3\2\1K\0\1\0-\3\0\0)\5\1\0B\3\2\2\15\0\3\0X\4\fÄ9\3\a\2)\5\1\0B\3\2\2\14\0\3\0X\3\2Ä\18\3\0\0B\3\1\0016\3\b\0'\5\t\0B\3\2\1K\0\1\0X\3\2Ä\18\3\0\0B\3\1\1K\0\1\0\a¿\6c\nprint\tjump\17confirm_opts\15cmp_config\fconfirm\fvisible\fluasnip\bcmp\frequire}\0\0\4\0\6\0\0176\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\0027\0\3\0006\0\3\0\a\0\4\0X\0\6Ä6\0\0\0009\0\5\0006\2\3\0B\0\2\1+\0\1\0L\0\2\0K\0\1\0\vnotify\vprompt\fbuftype\24nvim_buf_get_option\bapi\bvimª\17\1\0\18\0\\\0ø\0016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\1\0X\2\1Ä2\0∑Ä6\2\1\0'\4\3\0B\2\2\0029\2\4\2B\2\1\0016\2\1\0'\4\5\0B\2\2\0025\3\6\0005\4\a\0005\5\b\0003\6\t\0003\a\n\0003\b\v\0005\t\16\0005\n\14\0009\v\f\0029\v\r\v=\v\15\n=\n\17\t5\n\18\0=\n\19\t5\n\21\0005\v\20\0=\v\22\n5\v\23\0=\v\24\n3\v\25\0=\v\26\n=\n\27\t5\n\29\0003\v\28\0=\v\30\n=\n\31\t5\n#\0009\v \0029\v!\v9\v\"\vB\v\1\2=\v$\n9\v \0029\v!\v9\v\"\vB\v\1\2=\v%\n=\n!\t5\n(\0009\v&\0029\v'\vB\v\1\2=\v)\n9\v&\0029\v*\vB\v\1\2=\v+\n9\v&\0029\v,\v)\r¸ˇB\v\2\2=\v-\n9\v&\0029\v,\v)\r\4\0B\v\2\2=\v.\n9\v&\0023\r/\0005\0140\0B\v\3\2=\v1\n9\v&\0023\r2\0005\0143\0B\v\3\2=\v4\n9\v&\0029\v5\vB\v\1\2=\v6\n9\v&\0023\r7\0B\v\2\2=\v8\n=\n&\t9\n \0029\n9\n4\f\r\0005\r:\0>\r\1\f5\r;\0>\r\2\f5\r<\0>\r\3\f5\r=\0>\r\4\f5\r>\0>\r\5\f5\r?\0>\r\6\f5\r@\0>\r\a\f5\rA\0>\r\b\f5\rB\0>\r\t\f5\rC\0>\r\n\f5\rD\0>\r\v\f5\rE\0>\r\f\fB\n\2\2=\n9\t7\tF\0009\tG\0029\tH\t5\vI\0005\fL\0004\r\3\0005\14J\0>\14\1\r5\14K\0>\14\2\r=\r9\fB\t\3\0019\tG\0029\tM\t'\vN\0005\fP\0009\r&\0029\rO\r9\rM\rB\r\1\2=\r&\f4\r\3\0005\14Q\0>\14\1\r=\r9\fB\t\3\0019\tG\0029\tM\t'\vR\0005\fS\0009\r&\0029\rO\r9\rM\rB\r\1\2=\r&\f4\r\3\0005\14T\0>\14\1\r=\r9\fB\t\3\0019\tG\0029\tM\t'\vU\0005\fV\0009\r&\0029\rO\r9\rM\rB\r\1\2=\r&\f9\r \0029\r9\r4\15\3\0005\16W\0>\16\1\0154\16\3\0005\17X\0>\17\1\16B\r\3\2=\r9\fB\t\3\0019\tG\0025\vZ\0003\fY\0=\f[\vB\t\2\0019\tG\0026\vF\0B\t\2\0012\0\0ÄK\0\1\0K\0\1\0\fenabled\1\0\0\0\1\0\1\tname\tpath\1\0\1\tname\fcmdline\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\6?\1\0\1\tname\vbuffer\1\0\0\vpreset\6/\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\3\0\0\rmarkdown\thelp\rfiletype\nsetup\15cmp_config\1\0\1\tname\vcrates\1\0\1\tname\15treesitter\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\nspell\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lua\1\0\1\tname\16cmp_tabnine\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\forgmode\1\0\1\tname\rnvim_lsp\fsources\t<CR>\0\n<C-e>\nabort\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-f>\n<C-d>\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\vexpand\1\0\0\0\15formatting\vformat\0\15duplicates\1\0\4\rnvim_lsp\3\1\fluasnip\3\1\vbuffer\3\1\tpath\3\1\vfields\1\0\1\23duplicates_default\3\1\1\4\0\0\tkind\tabbr\tmenu\17experimental\1\0\2\16native_menu\1\15ghost_text\2\17confirm_opts\1\0\1\fenabled\2\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\0\0\0\1\0\a\fluasnip\15[Snippets]\nspell\f[Spell]\vbuffer\r[Buffer]\rnvim_lsp\n{LSP}\rnvim_lua\n[LUA]\16cmp_tabnine\14[TabNine]\tpath\v[Path]\1\0\n\fluasnip\14(Snippet)\nspell\f(Spell)\15treesitter\t(TS)\nemoji\f(Emoji)\tcalc\v(Calc)\tpath\v(Path)\rnvim_lsp\n(LSP)\vbuffer\r(Buffer)\nvsnip\14(Snippet)\16cmp_tabnine\14(Tabnine)\1\0\25\rProperty\t‚ò™ \vMethod\aM \14Reference\t‚ò¨ \fKeyword\t‚ò£ \fSnippet\t‚ò´ \14Interface\t‚èß \vStruct\t‰∑¶ \rFunction\t‚Ñò \tText\aT \vFolder\tüìÅ\18TypeParameter\tÔûÉ \tFile\t‚õ∂ \tUnit\t‚Ñ´ \nField\t‚Ω• \nValue\t·ç≤ \nEvent\aE \rVariable\t‚öù \15EnumMember\t‚öú \tEnum\t‚öö \16Constructor\t‚öô \rConstant\t‚õ≠ \nColor\t‚õØ \nClass\t‚ùÇ \rOperator\t‚ò© \vModule\t‚®ä \bcmp\14lazy_load luasnip.loaders.from_vscode\fluasnip\frequire\npcall\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer"] = {
    config = { "\27LJ\2\no\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\thtml\1\0\1\nnames\1\bcss\1\0\1\vrgb_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-colorizer",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\nÌ\2\0\0\5\0\r\0@6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\4\0X\0\bÄ6\0\0\0009\0\1\0009\0\5\0)\2\0\0'\3\6\0'\4\a\0B\0\4\1X\0/Ä6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\b\0X\0\bÄ6\0\0\0009\0\1\0009\0\5\0)\2\0\0'\3\6\0'\4\t\0B\0\4\1X\0\31Ä6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\n\0X\0\bÄ6\0\0\0009\0\1\0009\0\5\0)\2\0\0'\3\6\0'\4\a\0B\0\4\1X\0\15Ä6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\v\0X\0\aÄ6\0\0\0009\0\1\0009\0\5\0)\2\0\0'\3\6\0'\4\f\0B\0\4\1K\0\1\0\b#%s\nshell\ago\v/*%s*/\6c\t//%s\18commentstring\24nvim_buf_set_option\bcpp\rfiletype\24nvim_buf_get_option\bapi\bvim‡\1\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\2B\0\2\1K\0\1\0\thook\0\1\0\a\30comment_chunk_text_object\aic\21operator_mapping\agc\17line_mapping\bgcc\20create_mappings\2\"comment_empty_trim_whitespace\2\18comment_empty\2\19marker_padding\2\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\n˚\6\0\0\b\0\25\0A5\0\0\0006\1\1\0009\1\2\0019\1\3\1\18\2\1\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\a\0'\6\b\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\t\0'\6\n\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\v\0'\6\f\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\r\0'\6\14\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\15\0'\6\16\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\17\0'\6\18\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\19\0'\6\20\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\21\0'\6\22\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\23\0'\6\24\0\18\a\0\0B\2\5\1K\0\1\0'<cmd>lua require'dapui'.eval()<cr>\6K)<cmd>lua require'dap'.step_out()<cr>\t<F8>*<cmd>lua require'dap'.step_into()<cr>\t<F7>*<cmd>lua require'dap'.step_over()<cr>\t<F6>)<cmd>lua require'dap'.continue()<cr>\t<F5>*<cmd>lua require'dap'.terminate()<cr>\t<F4>M<cmd>lua require\"configure.debug.config._dap_util\".reload_continue()<CR>\n<F10>)<cmd>lua require'dap'.run_last()<cr>\t<F9>L<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>\15<leader>dBu<cmd>lua require'dap'.toggle_breakpoint(); require'configure.debug.config._dap_util'.store_breakpoints(true)<cr>\15<leader>db\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-dap",
    url = "https://github.com/ravenxrz/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n\\\0\0\3\1\5\0\t-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0009\0\3\0'\2\4\0B\0\2\1K\0\1\0\1¿\25DapVirtualTextEnable\17nvim_command\bapi\bvim\topenu\0\0\3\2\6\0\r-\0\0\0009\0\0\0009\0\1\0B\0\1\1-\0\1\0009\0\1\0B\0\1\0016\0\2\0009\0\3\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0\0¿\1¿\26DapVirtualTextDisable\17nvim_command\bapi\bvim\nclose\trepl\21\0\0\2\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\2¿\21\0\0\2\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\3¿\21\0\0\2\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\3¿\21\0\0\2\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\3¿€\4\1\0\t\0 \0:6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0003\3\4\0009\4\5\0009\4\6\0049\4\a\0043\5\t\0=\5\b\0049\4\5\0009\4\n\0049\4\v\0043\5\f\0=\5\b\0049\4\5\0009\4\n\0049\4\r\0043\5\14\0=\5\b\0049\4\5\0009\4\n\0049\4\15\0043\5\16\0=\5\b\0049\4\17\0009\4\18\4'\5\20\0=\5\19\0049\4\21\0'\6\22\0B\4\2\0016\4\0\0'\6\23\0B\4\2\0029\4\24\4+\6\0\0005\a\26\0005\b\25\0=\b\27\aB\4\3\0016\4\0\0'\6\28\0B\4\2\0016\4\0\0'\6\29\0B\4\2\0016\4\0\0'\6\30\0B\4\2\0016\4\0\0'\6\31\0B\4\2\0012\0\0ÄK\0\1\0$configure.debug.config._dap_lua'configure.debug.config._dap_python#configure.debug.config._dap_go$configure.debug.config._dap_cpp\vcppdbg\1\0\0\1\2\0\0\bcpp\18load_launchjs\19dap.ext.vscode\nDEBUG\18set_log_level\01730vsplit new\21terminal_win_cmd\rfallback\rdefaults\0\15disconnect\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\0\0\ndapui\bdap\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    config = { "\27LJ\2\n„\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\t\29highlight_new_as_changed\2 highlight_changed_variables\2\21enabled_commands\2\15virt_lines\1\18virt_text_pos\beol\fenabled\2\15all_frames\1\14commented\1\21show_stop_reason\2\nsetup\26nvim-dap-virtual-text\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lightbulb"] = {
    config = { "\27LJ\2\n˛\2\0\0\5\0\20\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\5\0=\3\6\0025\3\a\0004\4\0\0=\4\b\3=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0005\4\15\0=\4\16\0035\4\17\0=\4\18\3=\3\19\2B\0\2\1K\0\1\0\fautocmd\vevents\1\3\0\0\15CursorHold\16CursorHoldI\fpattern\1\2\0\0\6*\1\0\1\fenabled\1\16status_text\1\0\3\fenabled\1\ttext\tüí°\21text_unavailable\5\17virtual_text\1\0\3\fenabled\1\fhl_mode\freplace\ttext\tüí°\nfloat\rwin_opts\1\0\2\fenabled\1\ttext\tüí°\tsign\1\0\2\fenabled\2\rpriority\3\n\vignore\1\0\0\nsetup\19nvim-lightbulb\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-lightbulb",
    url = "https://github.com/kosayoda/nvim-lightbulb"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nﬂ\3\0\0\15\0\20\0>6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0026\1\5\0006\3\6\0B\1\2\4H\4)Ä5\6\b\0006\a\0\0'\t\3\0B\a\2\0029\a\a\a=\a\a\0066\a\0\0'\t\3\0B\a\2\0029\a\t\a=\a\t\0065\a\n\0=\a\v\0066\a\f\0006\t\0\0'\n\r\0\18\v\5\0&\n\v\nB\a\3\3\15\0\a\0X\t\aÄ6\t\14\0009\t\15\t'\v\16\0\18\f\b\0\18\r\6\0B\t\4\2\18\6\t\0008\t\5\0009\t\2\t\18\v\6\0B\t\2\0019\t\17\0009\t\2\t5\v\19\0006\f\0\0'\14\18\0B\f\2\0029\f\a\f=\f\a\vB\t\2\1F\4\3\3R\4’K\0\1\0\1\0\0\vaerial\nvimls\nforce\20tbl_deep_extend\bvim\"configure.nvim_cmp.language._\npcall\nflags\1\0\1\26debounce_text_changes\3ñ\1\17capabilities\1\0\0\14on_attach\fSERVERS\npairs\14lspconfig!configure.nvim_cmp._handlers\nsetup\23nvim-lsp-installer\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n†\1\0\0\5\0\a\0\0176\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\2\2'\4\4\0B\2\2\1K\0\1\0009\2\5\0015\4\6\0B\2\2\0016\2\3\0=\1\2\2K\0\1\0\1\0\1\22background_colour\f#000000\nsetup\29notify module not found!\bvim\vnotify\frequire\npcall\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n7\0\1\5\0\4\0\a6\1\0\0009\1\1\1'\3\2\0009\4\3\0&\3\4\3B\1\2\1K\0\1\0\nfname\nedit \bcmd\bvimá\16\1\0\n\0Q\0Ä\0016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\4\5\0B\2\2\0012\0tÄ9\2\6\0015\4\a\0005\5\b\0005\6\t\0006\a\n\0=\a\n\6=\6\v\5=\5\f\0045\5\16\0005\6\r\0005\a\14\0=\a\15\6=\6\17\0055\6\18\0=\6\15\5=\5\19\0045\5\20\0=\5\21\0045\5\22\0004\6\0\0=\6\23\5=\5\24\0044\5\0\0=\5\25\0045\5\26\0004\6\0\0=\6\27\5=\5\28\0045\5\29\0005\6\30\0=\6\15\5=\5\31\0045\5 \0004\6\0\0=\6!\0054\6\0\0=\6\"\5=\5#\0045\5$\0=\5%\0045\5&\0005\6'\0=\6(\0055\6)\0005\a*\0005\b,\0005\t+\0=\t-\b5\t.\0=\t/\b=\b\"\a=\a0\6=\0061\5=\0052\0045\0053\0=\0054\0045\0055\0005\0066\0=\0067\5=\0058\4B\2\2\0016\2\1\0'\0049\0B\2\2\0029\2:\0023\4;\0B\2\2\0016\2\3\0009\2<\0029\2=\2'\4>\0'\5?\0'\6@\0005\aA\0B\2\5\0016\2\3\0009\2<\0029\2=\2'\4>\0'\5B\0'\6C\0005\aD\0B\2\5\0016\2\3\0009\2<\0029\2=\2'\4>\0'\5E\0'\6F\0005\aG\0B\2\5\0016\2\3\0009\2<\0029\2=\2'\4>\0'\5H\0'\6I\0005\aJ\0B\2\5\0016\2\3\0009\2<\0029\2=\2'\4>\0'\5K\0'\6L\0005\aM\0B\2\5\0016\2\3\0009\2<\0029\2=\2'\4>\0'\5N\0'\6O\0005\aP\0B\2\5\1K\0\1\0K\0\1\0\1\0\2\fnoremap\2\vsilent\2\26:NvimTreeFindFile<CR>\atf\1\0\2\fnoremap\2\vsilent\2\25:NvimTreeRefresh<CR>\atr\1\0\2\fnoremap\2\vsilent\2\24:NvimTreeResize<CR>\ats\1\0\2\fnoremap\2\vsilent\2\23:NvimTreeFocus<CR>\btfo\1\0\2\fnoremap\2\vsilent\2\23:NvimTreeClose<CR>\atc\1\0\2\fnoremap\2\vsilent\2\22:NvimTreeOpen<CR>\ato\6n\20nvim_set_keymap\bapi\0\20on_file_created\21nvim-tree.events\blog\ntypes\1\0\6\bgit\1\15copy_paste\1\fprofile\1\vconfig\1\ball\1\16diagnostics\1\1\0\2\rtruncate\1\venable\1\ntrash\1\0\2\20require_confirm\2\bcmd\ntrash\factions\14open_file\18window_picker\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\venable\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\1\0\2\18resize_window\1\17quit_on_open\1\15change_dir\1\0\3\vglobal\1\venable\2\23restrict_above_cwd\1\1\0\1\25use_system_clipboard\2\bgit\1\0\3\venable\2\ftimeout\3ê\3\vignore\2\ffilters\fexclude\vcustom\1\0\1\rdotfiles\1\16diagnostics\1\0\4\nerror\b‚õî\thint\b‚ö°\fwarning\v‚ö†Ô∏è\tinfo\b‚öõ\1\0\2\venable\2\17show_on_dirs\2\16system_open\targs\1\0\1\bcmd\5\23ignore_ft_on_setup\24update_focused_file\16ignore_list\1\0\2\venable\2\15update_cwd\2\23hijack_directories\1\0\2\venable\2\14auto_open\2\rrenderer\1\0\2\18git_placement\vbefore\18webdev_colors\2\19indent_markers\1\0\0\nicons\1\0\3\vcorner\t‚îî \tnone\a  \tedge\t‚îÇ \1\0\1\venable\1\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\b\tside\tleft preserve_window_proportions\1\vnumber\1\21hide_root_folder\1\vheight\3\30\nwidth\3\30\19relativenumber\1\15signcolumn\byes\1\0\n\16open_on_tab\1\23open_on_setup_file\1\18open_on_setup\1\27ignore_buffer_on_setup\1'hijack_unnamed_buffer_when_opening\1\17hijack_netrw\2\18hijack_cursor\1\18disable_netrw\1\fsort_by\tname\25auto_reload_on_write\2\nsetup\25nvim-tree not found!\vnotify\bvim\14nvim-tree\frequire\npcall\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n«\f\0\0\6\0009\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\16\0005\4\17\0=\4\18\3=\3\19\0025\3\21\0005\4\20\0=\4\22\0035\4\23\0005\5\24\0=\5\f\4=\4\25\0035\4\26\0005\5\27\0=\5\28\0045\5\29\0=\5\30\0045\5\31\0=\5 \0045\5!\0=\5\"\4=\4#\0035\4$\0005\5%\0=\5&\4=\4'\3=\3(\0025\3)\0005\4*\0=\4\f\3=\3+\0025\3,\0004\4\0\0=\4-\0035\4.\0=\4/\3=\0030\0025\0031\0=\0032\0025\0033\0=\0034\0025\0035\0=\0036\0025\0037\0=\0038\2B\0\2\1K\0\1\0\14autopairs\1\0\1\venable\1\fmatchup\1\0\1\venable\1\fautotag\1\0\1\venable\1\frainbow\1\0\3\19max_file_lines\3Ë\a\venable\1\18extended_mode\2\15playground\16keybindings\1\0\n\vupdate\6R\14show_help\6?\14goto_node\t<cr>\21unfocus_language\6F\19focus_language\6f\28toggle_language_display\6I\27toggle_anonymous_nodes\6a\30toggle_injected_languages\6t\21toggle_hl_groups\6i\24toggle_query_editor\6o\fdisable\1\0\3\20persist_queries\1\15updatetime\3\25\venable\1\17textsubjects\1\0\2\6.\23textsubjects-smart\6;\21textsubjects-big\1\0\1\venable\1\16textobjects\16lsp_interop\25peek_definition_code\1\0\2\15<leader>pF\17@class.outer\15<leader>pf\20@function.outer\1\0\2\venable\1\vborder\tnone\tmove\22goto_previous_end\1\0\1\a[]\20@function.outer\24goto_previous_start\1\0\1\a[[\20@function.outer\18goto_next_end\1\0\1\a][\20@function.outer\20goto_next_start\1\0\1\a]]\20@function.outer\1\0\2\14set_jumps\1\venable\2\vselect\1\0\4\aaf\20@function.outer\aac\17@class.outer\aif\20@function.inner\aic\17@class.inner\1\0\2\14lookahead\2\venable\2\tswap\1\0\0\1\0\1\venable\1\26context_commentstring\vconfig\1\0\a\tjson\5\bcss\r/* %s */\15typescript\n// %s\thtml\16<!-- %s -->\bvue\16<!-- %s -->\vsvelte\16<!-- %s -->\tscss\r/* %s */\1\0\1\venable\2\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\19init_selection\bgnn\1\0\1\venable\2\14highlight&additional_vim_regex_highlighting\1\2\0\0\borg\1\0\1\venable\2\21ensure_installed\1\0\1\17sync_install\2\1\v\0\0\bcpp\6c\vpython\ago\rmarkdown\tjson\tyaml\thtml\blua\borg\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-context",
    url = "https://github.com/romgrk/nvim-treesitter-context"
  },
  ["nvim-treesitter-textobjects"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  orgmode = {
    config = { "\27LJ\2\nº\1\0\0\4\0\a\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0005\2\5\0005\3\4\0=\3\6\2B\0\2\1K\0\1\0\21org_agenda_files\1\0\1\27org_default_notes_file\22~/.org/refile.org\1\3\0\0\r~/.org/*\16~/.org/**/*\nsetup\21setup_ts_grammar\forgmode\frequire\0" },
    loaded = true,
    needs_bufread = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/orgmode",
    url = "https://github.com/nvim-orgmode/orgmode"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\n¶\3\0\0\b\0\19\0#6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\0044\5\0\0=\5\t\0044\5\0\0=\5\n\0046\5\v\0009\5\f\0059\5\r\5'\a\14\0B\5\2\2=\5\15\4B\2\2\0016\2\0\0006\4\1\0'\5\16\0B\2\3\3\14\0\2\0X\4\1ÄK\0\1\0009\4\17\3'\6\18\0B\4\2\1K\0\1\0\rprojects\19load_extension\14telescope\rdatapath\tdata\fstdpath\afn\bvim\17exclude_dirs\15ignore_lsp\rpatterns\1\n\0\0\t.git\nbuild\v_darcs\b.hg\t.bzr\t.svn\rMakefile\19CMakeLists.txt\17package.json\22detection_methods\1\2\0\0\fpattern\1\0\3\16show_hidden\2\16manual_mode\1\17silent_chdir\2\nsetup\17project_nvim\frequire\npcall\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  sniprun = {
    config = { "\27LJ\2\nÿ\5\0\0\6\0\28\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0024\3\0\0=\3\5\0025\3\t\0005\4\a\0005\5\6\0=\5\b\4=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\19\0005\4\18\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\3=\3\27\2B\0\2\1K\0\1\0\18snipruncolors\26SniprunFloatingWinErr\1\0\2\afg\f#881515\fctermfg\fDarkRed\26SniprunVirtualTextErr\1\0\4\afg\f#000000\abg\f#881515\fctermbg\fDarkRed\vcterfg\nBlack\25SniprunFloatingWinOk\1\0\2\afg\f#66eeff\fctermfg\tCyan\25SniprunVirtualTextOk\1\0\0\1\0\4\afg\f#000000\abg\f#66eeff\fctermbg\tCyan\vcterfg\nBlack\19show_no_output\1\3\0\0\fClassic\20TempFloatWindow\20display_options\1\0\2\25notification_timeout\3\5\19terminal_width\3-\fdisplay\1\3\0\0\fClassic\18VirtualTextOk\24interpreter_options\17GFM_original\1\0\0\21use_on_filetypes\1\0\0\1\2\0\0\20markdown.pandoc\16repl_enable\26selected_interpreters\1\0\3\20inline_messages\3\0\21live_mode_toggle\aon\fborders\vsingle\nsetup\fsniprun\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/sniprun",
    url = "https://github.com/michaelb/sniprun"
  },
  ["telescope-dap.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/telescope-dap.nvim",
    url = "https://github.com/nvim-telescope/telescope-dap.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-live-grep-args.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/telescope-live-grep-args.nvim",
    url = "https://github.com/nvim-telescope/telescope-live-grep-args.nvim"
  },
  ["telescope-media-files.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope-project.nvim"] = {
    config = { "\27LJ\2\nò\1\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2=:lua require'telescope'.extensions.project.project{}<CR>\n<C-p>\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/telescope-project.nvim",
    url = "https://github.com/nvim-telescope/telescope-project.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope-vim-bookmarks.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/telescope-vim-bookmarks.nvim",
    url = "https://github.com/tom-anders/telescope-vim-bookmarks.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nW\0\0\a\1\4\0\n6\0\0\0009\0\1\0009\0\2\0-\2\0\0)\3\0\0)\4ˇˇ+\5\1\0005\6\3\0B\0\6\1K\0\1\0\2\0\1\2\0\0\vBINARY\23nvim_buf_set_lines\bapi\bvim§\1\1\1\a\4\b\0\0236\1\0\0009\1\1\1\18\5\0\0009\3\2\0B\3\2\2:\3\1\3'\4\3\0B\1\3\2:\1\1\1\a\1\4\0X\2\aÄ-\2\0\0009\2\5\2-\4\1\0-\5\2\0-\6\3\0B\2\4\1X\2\4Ä6\2\0\0009\2\6\0023\4\a\0B\2\2\1K\0\1\0\1\0\0Ä\1¿\2¿\0\rschedule\27buffer_previewer_maker\ttext\6/\vresult\nsplit\bvimß\1\1\3\b\2\n\0\0216\3\0\0009\3\1\0039\3\2\3\18\5\0\0B\3\2\2\18\0\3\0-\3\0\0\18\5\3\0009\3\3\0035\6\4\0005\a\5\0>\0\3\a=\a\6\0063\a\a\0=\a\b\6B\3\3\2\18\5\3\0009\3\t\3B\3\2\0012\0\0ÄK\0\1\0\4¿\3¿\tsync\fon_exit\0\targs\1\3\0\0\16--mime-type\a-b\1\0\1\fcommand\tfile\bnew\vexpand\afn\bvim‹\19\1\0\14\0y\1‰\0016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\4\5\0B\2\2\0012\0ÿÄ6\2\1\0'\4\6\0B\2\2\0026\3\1\0'\5\a\0B\3\2\0026\4\1\0'\6\b\0B\4\2\0023\5\t\0009\6\n\0015\bO\0005\t\v\0=\5\f\t5\n\16\0005\v\r\0005\f\14\0=\f\15\v=\v\17\n=\n\18\t5\n>\0005\v\20\0009\f\19\2=\f\21\v9\f\22\2=\f\23\v9\f\24\2=\f\25\v9\f\26\2=\f\27\v9\f\28\2=\f\29\v9\f\24\2=\f\30\v9\f\26\2=\f\31\v9\f \2=\f!\v9\f\"\2=\f#\v9\f$\2=\f%\v9\f&\2=\f'\v9\f(\2=\f)\v9\f*\2=\f+\v9\f,\2=\f-\v9\f.\2=\f/\v9\f0\0029\r1\2 \f\r\f=\f2\v9\f0\0029\r3\2 \f\r\f=\f4\v9\f5\0029\r6\2 \f\r\f=\f7\v9\f8\0029\r6\2 \f\r\f=\f9\v9\f:\2=\f;\v9\f<\2=\f=\v=\v?\n5\v@\0009\f\28\2=\fA\v9\f \2=\f!\v9\f\"\2=\f#\v9\f$\2=\f%\v9\f&\2=\f'\v9\f0\0029\r1\2 \f\r\f=\f2\v9\f0\0029\r3\2 \f\r\f=\f4\v9\f5\0029\r6\2 \f\r\f=\f7\v9\f8\0029\r6\2 \f\r\f=\f9\v9\f\24\2=\fB\v9\f\26\2=\fC\v9\fD\2=\fE\v9\fF\2=\fG\v9\fH\2=\fI\v9\f\24\2=\f\30\v9\f\26\2=\f\31\v9\fD\2=\fJ\v9\fH\2=\fK\v9\f(\2=\f)\v9\f*\2=\f+\v9\f,\2=\f-\v9\f.\2=\f/\v9\f<\2=\fL\v=\vM\n=\nN\t=\tP\b5\tT\0005\nQ\0005\vR\0=\vS\n=\nU\t=\tV\b5\tZ\0005\nX\0005\vW\0=\vY\n=\n[\t5\n]\0005\v\\\0=\v^\n=\n_\t5\n`\0=\na\t4\n\3\0006\v\1\0'\rb\0B\v\2\0029\vc\v4\r\0\0B\v\2\0?\v\0\0=\nd\t5\ne\0=\nf\t=\tg\bB\6\2\0016\6\3\0009\6h\0069\6i\6'\bM\0'\tj\0'\nk\0005\vl\0B\6\5\0016\6\3\0009\6h\0069\6i\6'\bM\0'\tm\0'\nn\0005\vo\0B\6\5\0016\6\3\0009\6h\0069\6i\6'\bM\0'\tp\0'\nq\0005\vr\0B\6\5\0016\6\3\0009\6h\0069\6i\6'\bM\0'\ts\0'\nt\0005\vu\0B\6\5\0019\6v\1'\bw\0B\6\2\0019\6v\1'\bf\0B\6\2\0019\6v\1'\ba\0B\6\2\0019\6v\1'\bd\0B\6\2\0019\6v\1'\bx\0B\6\2\0019\6v\1'\b[\0B\6\2\0019\6v\1'\b_\0B\6\2\0012\0\0ÄK\0\1\0K\0\1\0\18vim_bookmarks\bdap\19load_extension\1\0\2\fnoremap\2\vsilent\2:<Cmd>lua require('telescope.builtin').help_tags()<CR>\15<leader>fh\1\0\2\fnoremap\2\vsilent\0028<Cmd>lua require('telescope.builtin').buffers()<CR>\15<leader>fb\1\0\2\fnoremap\2\vsilent\2:<Cmd>lua require('telescope.builtin').live_grep()<CR>\15<leader>fg\1\0\2\fnoremap\2\vsilent\2;<Cmd>lua require('telescope.builtin').find_files()<CR>\15<leader>ff\20nvim_set_keymap\bapi\15extensions\19live_grep_args\1\0\1\17auto_quoting\1\14ui-select\17get_dropdown\21telescope.themes\bfzf\1\0\4\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\16media_files\14filetypes\1\0\1\rfind_cmd\arg\1\5\0\0\bpng\twebp\bjpg\tjpeg\fproject\1\0\0\14base_dirs\1\0\2\17hidden_files\2\ntheme\rdropdown\1\2\0\0\v~/pro/\fpickers\15find_files\1\0\0\17find_command\1\4\0\0\tfind\n-type\6f\1\0\2\ntheme\rdropdown\14previewer\1\rdefaults\1\0\0\rmappings\6n\6?\6G\agg\6L\19move_to_bottom\6M\19move_to_middle\6H\16move_to_top\6k\6j\n<esc>\1\0\0\6i\1\0\0\n<C-_>\14which_key\n<C-l>\17complete_tag\n<M-q>\28send_selected_to_qflist\n<C-q>\16open_qflist\19send_to_qflist\f<S-Tab>\26move_selection_better\n<Tab>\25move_selection_worse\21toggle_selection\15<PageDown>\27results_scrolling_down\r<PageUp>\25results_scrolling_up\n<C-d>\27preview_scrolling_down\n<C-u>\25preview_scrolling_up\n<C-t>\15select_tab\n<C-v>\20select_vertical\n<C-x>\22select_horizontal\t<CR>\19select_default\t<Up>\v<Down>\n<C-c>\nclose\n<C-k>\28move_selection_previous\n<C-j>\24move_selection_next\n<C-p>\23cycle_history_prev\n<C-n>\1\0\0\23cycle_history_next\17path_display\fshorten\1\0\0\fexclude\1\3\0\0\3\1\3ˇˇˇˇ\15\1\0\1\blen\3\3\27buffer_previewer_maker\1\0\2\20selection_caret\tÔÅ§ \18prompt_prefix\tÔë´ \nsetup\0\16plenary.job\25telescope.previewers\22telescope.actions\25telescope not found!\vnotify\bvim\14telescope\frequire\npcall\3ÄÄ¿ô\4\0" },
    loaded = true,
    needs_bufread = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nÍ\1\0\0\b\0\v\0\0295\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\a\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\t\0'\6\n\0\18\a\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\21<C-\\><C-n><C-W>h\n<C-h>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2$\0\0\3\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0B\0\2\1K\0\1\0\3¿\vtoggle$\0\0\3\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0B\0\2\1K\0\1\0\4¿\vtoggle$\0\0\3\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0B\0\2\1K\0\1\0\5¿\vtoggle$\0\0\3\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0B\0\2\1K\0\1\0\6¿\vtoggle$\0\0\3\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0B\0\2\1K\0\1\0\a¿\vtoggle€\6\1\0\v\0$\0@6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0008Ä9\2\3\0015\4\4\0004\5\0\0=\5\5\0046\5\6\0009\5\a\0059\5\b\5=\5\b\0045\5\t\0005\6\n\0=\6\v\5=\5\f\4B\2\2\0016\2\r\0003\3\15\0=\3\14\0026\2\6\0009\2\16\2'\4\17\0B\2\2\0016\2\1\0'\4\18\0B\2\2\0029\2\19\2\18\5\2\0009\3\20\0025\6\21\0B\3\3\0023\4\22\0007\4\23\0\18\6\2\0009\4\20\0025\a\24\0B\4\3\0023\5\25\0007\5\26\0\18\a\2\0009\5\20\0025\b\27\0B\5\3\0023\6\28\0007\6\29\0\18\b\2\0009\6\20\0025\t\30\0B\6\3\0023\a\31\0007\a \0\18\t\2\0009\a\20\0025\n!\0B\a\3\0023\b\"\0007\b#\0002\0\0ÄK\0\1\0K\0\1\0\19_PYTHON_TOGGLE\0\1\0\2\vhidden\2\bcmd\vpython\17_HTOP_TOGGLE\0\1\0\2\vhidden\2\bcmd\thtop\17_NCDU_TOGGLE\0\1\0\2\vhidden\2\bcmd\tncdu\17_NODE_TOGGLE\0\1\0\2\vhidden\2\bcmd\tnode\20_LAZYGIT_TOGGLE\0\1\0\2\vhidden\2\bcmd\flazygit\bnew\rTerminal\24toggleterm.terminal:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\2\rwinblend\3\3\vborder\vcurved\nshell\6o\bvim\20shade_filetypes\1\0\n\17open_mapping\n<c-\\>\tsize\3\20\18close_on_exit\2\14direction\nfloat\17persist_size\2\20insert_mappings\2\20start_in_insert\2\19shading_factor\3\3\20shade_terminals\2\17hide_numbers\1\nsetup\15toggleterm\frequire\npcall\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-bookmarks"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/vim-bookmarks",
    url = "https://github.com/MattesGroeger/vim-bookmarks"
  },
  ["vim-markdown"] = {
    config = { "\27LJ\2\n\\\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0K\0\1\0\29vim_markdown_toc_autofi1\22vim_markdown_math\6g\bvim\0" },
    loaded = true,
    needs_bufread = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/vim-markdown",
    url = "https://github.com/preservim/vim-markdown"
  },
  ["vim-repeat"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-surround"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: hop.nvim
time([[Setup for hop.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "hop.nvim")
time([[Setup for hop.nvim]], false)
time([[packadd for hop.nvim]], true)
vim.cmd [[packadd hop.nvim]]
time([[packadd for hop.nvim]], false)
-- Setup for: aerial.nvim
time([[Setup for aerial.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "aerial.nvim")
time([[Setup for aerial.nvim]], false)
time([[packadd for aerial.nvim]], true)
vim.cmd [[packadd aerial.nvim]]
time([[packadd for aerial.nvim]], false)
-- Setup for: vim-bookmarks
time([[Setup for vim-bookmarks]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "vim-bookmarks")
time([[Setup for vim-bookmarks]], false)
time([[packadd for vim-bookmarks]], true)
vim.cmd [[packadd vim-bookmarks]]
time([[packadd for vim-bookmarks]], false)
-- Setup for: orgmode
time([[Setup for orgmode]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "orgmode")
time([[Setup for orgmode]], false)
time([[packadd for orgmode]], true)
vim.cmd [[packadd orgmode]]
time([[packadd for orgmode]], false)
-- Setup for: bufdelete.nvim
time([[Setup for bufdelete.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "bufdelete.nvim")
time([[Setup for bufdelete.nvim]], false)
time([[packadd for bufdelete.nvim]], true)
vim.cmd [[packadd bufdelete.nvim]]
time([[packadd for bufdelete.nvim]], false)
-- Setup for: vim-markdown
time([[Setup for vim-markdown]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "vim-markdown")
time([[Setup for vim-markdown]], false)
time([[packadd for vim-markdown]], true)
vim.cmd [[packadd vim-markdown]]
time([[packadd for vim-markdown]], false)
-- Setup for: nvim-tree.lua
time([[Setup for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-tree.lua")
time([[Setup for nvim-tree.lua]], false)
time([[packadd for nvim-tree.lua]], true)
vim.cmd [[packadd nvim-tree.lua]]
time([[packadd for nvim-tree.lua]], false)
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)
time([[packadd for indent-blankline.nvim]], true)
vim.cmd [[packadd indent-blankline.nvim]]
time([[packadd for indent-blankline.nvim]], false)
-- Setup for: bufferline.nvim
time([[Setup for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "bufferline.nvim")
time([[Setup for bufferline.nvim]], false)
time([[packadd for bufferline.nvim]], true)
vim.cmd [[packadd bufferline.nvim]]
time([[packadd for bufferline.nvim]], false)
-- Setup for: vim-repeat
time([[Setup for vim-repeat]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "vim-repeat")
time([[Setup for vim-repeat]], false)
time([[packadd for vim-repeat]], true)
vim.cmd [[packadd vim-repeat]]
time([[packadd for vim-repeat]], false)
-- Setup for: nvim-treesitter
time([[Setup for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-treesitter")
time([[Setup for nvim-treesitter]], false)
time([[packadd for nvim-treesitter]], true)
vim.cmd [[packadd nvim-treesitter]]
time([[packadd for nvim-treesitter]], false)
-- Setup for: lsp_signature.nvim
time([[Setup for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "lsp_signature.nvim")
time([[Setup for lsp_signature.nvim]], false)
time([[packadd for lsp_signature.nvim]], true)
vim.cmd [[packadd lsp_signature.nvim]]
time([[packadd for lsp_signature.nvim]], false)
-- Setup for: cmp-buffer
time([[Setup for cmp-buffer]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-buffer")
time([[Setup for cmp-buffer]], false)
time([[packadd for cmp-buffer]], true)
vim.cmd [[packadd cmp-buffer]]
time([[packadd for cmp-buffer]], false)
-- Setup for: nvim-treesitter-context
time([[Setup for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-treesitter-context")
time([[Setup for nvim-treesitter-context]], false)
time([[packadd for nvim-treesitter-context]], true)
vim.cmd [[packadd nvim-treesitter-context]]
time([[packadd for nvim-treesitter-context]], false)
-- Setup for: which-key.nvim
time([[Setup for which-key.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "which-key.nvim")
time([[Setup for which-key.nvim]], false)
time([[packadd for which-key.nvim]], true)
vim.cmd [[packadd which-key.nvim]]
time([[packadd for which-key.nvim]], false)
-- Setup for: nvim-treesitter-textobjects
time([[Setup for nvim-treesitter-textobjects]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-treesitter-textobjects")
time([[Setup for nvim-treesitter-textobjects]], false)
time([[packadd for nvim-treesitter-textobjects]], true)
vim.cmd [[packadd nvim-treesitter-textobjects]]
time([[packadd for nvim-treesitter-textobjects]], false)
-- Setup for: nvim-colorizer
time([[Setup for nvim-colorizer]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-colorizer")
time([[Setup for nvim-colorizer]], false)
time([[packadd for nvim-colorizer]], true)
vim.cmd [[packadd nvim-colorizer]]
time([[packadd for nvim-colorizer]], false)
-- Setup for: nvim-web-devicons
time([[Setup for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-web-devicons")
time([[Setup for nvim-web-devicons]], false)
time([[packadd for nvim-web-devicons]], true)
vim.cmd [[packadd nvim-web-devicons]]
time([[packadd for nvim-web-devicons]], false)
-- Setup for: cmp-nvim-lsp
time([[Setup for cmp-nvim-lsp]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-nvim-lsp")
time([[Setup for cmp-nvim-lsp]], false)
time([[packadd for cmp-nvim-lsp]], true)
vim.cmd [[packadd cmp-nvim-lsp]]
time([[packadd for cmp-nvim-lsp]], false)
-- Setup for: material.nvim
time([[Setup for material.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "material.nvim")
time([[Setup for material.nvim]], false)
time([[packadd for material.nvim]], true)
vim.cmd [[packadd material.nvim]]
time([[packadd for material.nvim]], false)
-- Setup for: md-img-paste.vim
time([[Setup for md-img-paste.vim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "md-img-paste.vim")
time([[Setup for md-img-paste.vim]], false)
time([[packadd for md-img-paste.vim]], true)
vim.cmd [[packadd md-img-paste.vim]]
time([[packadd for md-img-paste.vim]], false)
-- Setup for: cmp-nvim-lua
time([[Setup for cmp-nvim-lua]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-nvim-lua")
time([[Setup for cmp-nvim-lua]], false)
time([[packadd for cmp-nvim-lua]], true)
vim.cmd [[packadd cmp-nvim-lua]]
time([[packadd for cmp-nvim-lua]], false)
-- Setup for: mathjax-support-for-mkdp
time([[Setup for mathjax-support-for-mkdp]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "mathjax-support-for-mkdp")
time([[Setup for mathjax-support-for-mkdp]], false)
time([[packadd for mathjax-support-for-mkdp]], true)
vim.cmd [[packadd mathjax-support-for-mkdp]]
time([[packadd for mathjax-support-for-mkdp]], false)
-- Setup for: nvim-notify
time([[Setup for nvim-notify]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-notify")
time([[Setup for nvim-notify]], false)
time([[packadd for nvim-notify]], true)
vim.cmd [[packadd nvim-notify]]
time([[packadd for nvim-notify]], false)
-- Setup for: sniprun
time([[Setup for sniprun]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "sniprun")
time([[Setup for sniprun]], false)
time([[packadd for sniprun]], true)
vim.cmd [[packadd sniprun]]
time([[packadd for sniprun]], false)
-- Setup for: cmp-path
time([[Setup for cmp-path]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-path")
time([[Setup for cmp-path]], false)
time([[packadd for cmp-path]], true)
vim.cmd [[packadd cmp-path]]
time([[packadd for cmp-path]], false)
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
time([[packadd for markdown-preview.nvim]], true)
vim.cmd [[packadd markdown-preview.nvim]]
time([[packadd for markdown-preview.nvim]], false)
-- Setup for: cmp_luasnip
time([[Setup for cmp_luasnip]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp_luasnip")
time([[Setup for cmp_luasnip]], false)
time([[packadd for cmp_luasnip]], true)
vim.cmd [[packadd cmp_luasnip]]
time([[packadd for cmp_luasnip]], false)
-- Setup for: neovim-session-manager
time([[Setup for neovim-session-manager]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "neovim-session-manager")
time([[Setup for neovim-session-manager]], false)
time([[packadd for neovim-session-manager]], true)
vim.cmd [[packadd neovim-session-manager]]
time([[packadd for neovim-session-manager]], false)
-- Setup for: cmp-spell
time([[Setup for cmp-spell]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-spell")
time([[Setup for cmp-spell]], false)
time([[packadd for cmp-spell]], true)
vim.cmd [[packadd cmp-spell]]
time([[packadd for cmp-spell]], false)
-- Setup for: lualine.nvim
time([[Setup for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "lualine.nvim")
time([[Setup for lualine.nvim]], false)
time([[packadd for lualine.nvim]], true)
vim.cmd [[packadd lualine.nvim]]
time([[packadd for lualine.nvim]], false)
-- Setup for: friendly-snippets
time([[Setup for friendly-snippets]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "friendly-snippets")
time([[Setup for friendly-snippets]], false)
time([[packadd for friendly-snippets]], true)
vim.cmd [[packadd friendly-snippets]]
time([[packadd for friendly-snippets]], false)
-- Setup for: telescope-dap.nvim
time([[Setup for telescope-dap.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "telescope-dap.nvim")
time([[Setup for telescope-dap.nvim]], false)
time([[packadd for telescope-dap.nvim]], true)
vim.cmd [[packadd telescope-dap.nvim]]
time([[packadd for telescope-dap.nvim]], false)
-- Setup for: cmp-tabnine
time([[Setup for cmp-tabnine]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-tabnine")
time([[Setup for cmp-tabnine]], false)
time([[packadd for cmp-tabnine]], true)
vim.cmd [[packadd cmp-tabnine]]
time([[packadd for cmp-tabnine]], false)
-- Setup for: diffview.nvim
time([[Setup for diffview.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "diffview.nvim")
time([[Setup for diffview.nvim]], false)
time([[packadd for diffview.nvim]], true)
vim.cmd [[packadd diffview.nvim]]
time([[packadd for diffview.nvim]], false)
-- Setup for: telescope-fzf-native.nvim
time([[Setup for telescope-fzf-native.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "telescope-fzf-native.nvim")
time([[Setup for telescope-fzf-native.nvim]], false)
time([[packadd for telescope-fzf-native.nvim]], true)
vim.cmd [[packadd telescope-fzf-native.nvim]]
time([[packadd for telescope-fzf-native.nvim]], false)
-- Setup for: vim-surround
time([[Setup for vim-surround]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "vim-surround")
time([[Setup for vim-surround]], false)
time([[packadd for vim-surround]], true)
vim.cmd [[packadd vim-surround]]
time([[packadd for vim-surround]], false)
-- Setup for: impatient.nvim
time([[Setup for impatient.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "impatient.nvim")
time([[Setup for impatient.nvim]], false)
time([[packadd for impatient.nvim]], true)
vim.cmd [[packadd impatient.nvim]]
time([[packadd for impatient.nvim]], false)
-- Setup for: telescope-live-grep-args.nvim
time([[Setup for telescope-live-grep-args.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "telescope-live-grep-args.nvim")
time([[Setup for telescope-live-grep-args.nvim]], false)
time([[packadd for telescope-live-grep-args.nvim]], true)
vim.cmd [[packadd telescope-live-grep-args.nvim]]
time([[packadd for telescope-live-grep-args.nvim]], false)
-- Setup for: dashboard-nvim
time([[Setup for dashboard-nvim]], true)
try_loadstring("\27LJ\2\nÇ\2\0\0\2\0\n\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0)\1\n\0=\1\b\0006\0\0\0009\0\1\0)\1F\0=\1\t\0K\0\1\0!dashboard_preview_file_width\"dashboard_preview_file_height\vlolcat\31dashboard_preview_pipeline\bcat\30dashboard_preview_command\14telescope dashboard_default_executive\6g\bvim\0", "setup", "dashboard-nvim")
time([[Setup for dashboard-nvim]], false)
time([[packadd for dashboard-nvim]], true)
vim.cmd [[packadd dashboard-nvim]]
time([[packadd for dashboard-nvim]], false)
-- Setup for: project.nvim
time([[Setup for project.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "project.nvim")
time([[Setup for project.nvim]], false)
time([[packadd for project.nvim]], true)
vim.cmd [[packadd project.nvim]]
time([[packadd for project.nvim]], false)
-- Setup for: telescope-media-files.nvim
time([[Setup for telescope-media-files.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "telescope-media-files.nvim")
time([[Setup for telescope-media-files.nvim]], false)
time([[packadd for telescope-media-files.nvim]], true)
vim.cmd [[packadd telescope-media-files.nvim]]
time([[packadd for telescope-media-files.nvim]], false)
-- Setup for: nvim-dap
time([[Setup for nvim-dap]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-dap")
time([[Setup for nvim-dap]], false)
time([[packadd for nvim-dap]], true)
vim.cmd [[packadd nvim-dap]]
time([[packadd for nvim-dap]], false)
-- Setup for: nvim-lightbulb
time([[Setup for nvim-lightbulb]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-lightbulb")
time([[Setup for nvim-lightbulb]], false)
time([[packadd for nvim-lightbulb]], true)
vim.cmd [[packadd nvim-lightbulb]]
time([[packadd for nvim-lightbulb]], false)
-- Setup for: telescope-project.nvim
time([[Setup for telescope-project.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "telescope-project.nvim")
time([[Setup for telescope-project.nvim]], false)
time([[packadd for telescope-project.nvim]], true)
vim.cmd [[packadd telescope-project.nvim]]
time([[packadd for telescope-project.nvim]], false)
-- Setup for: nvim-autopairs
time([[Setup for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-autopairs")
time([[Setup for nvim-autopairs]], false)
time([[packadd for nvim-autopairs]], true)
vim.cmd [[packadd nvim-autopairs]]
time([[packadd for nvim-autopairs]], false)
-- Setup for: nvim-dap-ui
time([[Setup for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-dap-ui")
time([[Setup for nvim-dap-ui]], false)
time([[packadd for nvim-dap-ui]], true)
vim.cmd [[packadd nvim-dap-ui]]
time([[packadd for nvim-dap-ui]], false)
-- Setup for: DAPInstall.nvim
time([[Setup for DAPInstall.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "DAPInstall.nvim")
time([[Setup for DAPInstall.nvim]], false)
time([[packadd for DAPInstall.nvim]], true)
vim.cmd [[packadd DAPInstall.nvim]]
time([[packadd for DAPInstall.nvim]], false)
-- Setup for: telescope-ui-select.nvim
time([[Setup for telescope-ui-select.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "telescope-ui-select.nvim")
time([[Setup for telescope-ui-select.nvim]], false)
time([[packadd for telescope-ui-select.nvim]], true)
vim.cmd [[packadd telescope-ui-select.nvim]]
time([[packadd for telescope-ui-select.nvim]], false)
-- Setup for: filetype.nvim
time([[Setup for filetype.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "filetype.nvim")
time([[Setup for filetype.nvim]], false)
time([[packadd for filetype.nvim]], true)
vim.cmd [[packadd filetype.nvim]]
time([[packadd for filetype.nvim]], false)
-- Setup for: nvim-comment
time([[Setup for nvim-comment]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-comment")
time([[Setup for nvim-comment]], false)
time([[packadd for nvim-comment]], true)
vim.cmd [[packadd nvim-comment]]
time([[packadd for nvim-comment]], false)
-- Setup for: telescope-vim-bookmarks.nvim
time([[Setup for telescope-vim-bookmarks.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "telescope-vim-bookmarks.nvim")
time([[Setup for telescope-vim-bookmarks.nvim]], false)
time([[packadd for telescope-vim-bookmarks.nvim]], true)
vim.cmd [[packadd telescope-vim-bookmarks.nvim]]
time([[packadd for telescope-vim-bookmarks.nvim]], false)
-- Setup for: FixCursorHold.nvim
time([[Setup for FixCursorHold.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "FixCursorHold.nvim")
time([[Setup for FixCursorHold.nvim]], false)
time([[packadd for FixCursorHold.nvim]], true)
vim.cmd [[packadd FixCursorHold.nvim]]
time([[packadd for FixCursorHold.nvim]], false)
-- Setup for: cmp-cmdline
time([[Setup for cmp-cmdline]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-cmdline")
time([[Setup for cmp-cmdline]], false)
time([[packadd for cmp-cmdline]], true)
vim.cmd [[packadd cmp-cmdline]]
time([[packadd for cmp-cmdline]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
time([[Setup for telescope.nvim]], false)
time([[packadd for telescope.nvim]], true)
vim.cmd [[packadd telescope.nvim]]
time([[packadd for telescope.nvim]], false)
-- Setup for: gitsigns.nvim
time([[Setup for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "gitsigns.nvim")
time([[Setup for gitsigns.nvim]], false)
time([[packadd for gitsigns.nvim]], true)
vim.cmd [[packadd gitsigns.nvim]]
time([[packadd for gitsigns.nvim]], false)
-- Setup for: LuaSnip
time([[Setup for LuaSnip]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "LuaSnip")
time([[Setup for LuaSnip]], false)
time([[packadd for LuaSnip]], true)
vim.cmd [[packadd LuaSnip]]
time([[packadd for LuaSnip]], false)
-- Setup for: nvim-dap-virtual-text
time([[Setup for nvim-dap-virtual-text]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-dap-virtual-text")
time([[Setup for nvim-dap-virtual-text]], false)
time([[packadd for nvim-dap-virtual-text]], true)
vim.cmd [[packadd nvim-dap-virtual-text]]
time([[packadd for nvim-dap-virtual-text]], false)
-- Setup for: toggleterm.nvim
time([[Setup for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "toggleterm.nvim")
time([[Setup for toggleterm.nvim]], false)
time([[packadd for toggleterm.nvim]], true)
vim.cmd [[packadd toggleterm.nvim]]
time([[packadd for toggleterm.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n‚\t\0\0\6\0\27\0w6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\n\0'\4\v\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\f\0'\3\b\0'\4\r\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\f\0'\3\n\0'\4\14\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\15\0'\3\16\0'\4\t\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\15\0'\3\17\0'\4\v\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\18\0'\4\19\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\20\0'\4\21\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\22\0'\4\21\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\23\0'\4\24\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\25\0'\3\23\0'\4\24\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\25\0'\3\18\0'\4\19\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\26\0'\3\23\0'\4\24\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\26\0'\3\18\0'\4\19\0004\5\0\0B\0\5\1K\0\1\0\6i\6v\22<cmd>HopChar1<cr>\22<leader><leader>s\22<leader><leader>k\21<cmd>HopLine<cr>\22<leader><leader>j\21<cmd>HopWord<cr>\22<leader><leader>w\6T\6t\5ô\1<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>ò\1<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>\6oÇ\1<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>\6FÅ\1<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>\6f\6n\20nvim_set_keymap\bapi\bvim\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: aerial.nvim
time([[Config for aerial.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\1\1\0\0\0\1L\0\2\0’\b\1\0\5\0\30\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\0025\3\n\0=\3\v\0024\3\0\0=\3\f\0025\3\r\0004\4\0\0=\4\14\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0005\4\19\0=\4\20\0033\4\21\0=\4\22\3=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\28\0=\3\29\2B\0\2\1K\0\1\0\rmarkdown\1\0\1\17update_delay\3¨\2\15treesitter\1\0\1\17update_delay\3¨\2\blsp\1\0\3\17update_delay\3¨\2\23update_when_errors\2\31diagnostics_trigger_update\2\nfloat\roverride\0\15min_height\1\3\0\0\3\b\4ö≥ÊÃ\tô≥Ê˝\3\1\0\3\15max_height\4Õô≥Ê\fÃô≥ˇ\3\vborder\frounded\rrelative\vcursor\vguides\1\0\4\15nested_top\t‚îÇ \14last_item\v‚îî‚îÄ\15whitespace\a  \rmid_item\v‚îú‚îÄ\vignore\14filetypes\1\0\3\21unlisted_buffers\2\rwintypes\fspecial\rbuftypes\fspecial\nicons\16filter_kind\1\t\0\0\nClass\16Constructor\tEnum\rFunction\14Interface\vModule\vMethod\vStruct\vlayout\14max_width\1\0\3\14placement\vwindow\22default_direction\17prefer_right\14min_width\3\n\1\3\0\0\3(\4ö≥ÊÃ\tô≥¶˛\3\rbackends\1\0\17\22highlight_on_jump\3¨\2\23highlight_on_hover\1\22highlight_closest\2\19highlight_mode\16split_width\21disable_max_size\3Äâz\22disable_max_lines\3êN\21default_bindings\2\19close_behavior\tauto\18update_events\28TextChanged,InsertLeave\16show_guides\1\20close_on_select\1\18post_jump_cmd\15normal! zz\19open_automatic\1\14nerd_font\tauto\17manage_folds\1\23link_tree_to_folds\2\23link_folds_to_tree\1\1\4\0\0\15treesitter\blsp\rmarkdown\nsetup\vaerial\frequire\0", "config", "aerial.nvim")
time([[Config for aerial.nvim]], false)
-- Config for: vim-bookmarks
time([[Config for vim-bookmarks]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "vim-bookmarks")
time([[Config for vim-bookmarks]], false)
-- Config for: orgmode
time([[Config for orgmode]], true)
try_loadstring("\27LJ\2\nº\1\0\0\4\0\a\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0005\2\5\0005\3\4\0=\3\6\2B\0\2\1K\0\1\0\21org_agenda_files\1\0\1\27org_default_notes_file\22~/.org/refile.org\1\3\0\0\r~/.org/*\16~/.org/**/*\nsetup\21setup_ts_grammar\forgmode\frequire\0", "config", "orgmode")
time([[Config for orgmode]], false)
-- Config for: bufdelete.nvim
time([[Config for bufdelete.nvim]], true)
try_loadstring("\27LJ\2\n]\0\0\3\0\6\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0006\1\0\0009\1\1\0019\1\4\1'\2\5\0&\1\2\1=\1\4\0K\0\1\0\aL0\15cinoptions\bcpp\rfiletype\abo\bvimà\1\0\0\a\0\n\0\0186\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0006\4\0\0009\4\4\0049\4\b\4'\6\t\0B\4\2\2'\5\a\0&\2\5\2B\0\2\1K\0\1\0\6%\vexpand\6\"\18open -a skim \rjobstart\afn\bpdf\rfiletype\abo\bvim.\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\15syntax off\bcmd\bvim0\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\17iabbrev $ $$\bcmd\bvim¡\3\1\0\b\0 \0(6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\4\5\0B\2\2\0012\0\28Ä9\2\6\0015\4\30\0005\5\b\0005\6\a\0=\6\t\0055\6\n\0=\6\v\0055\6\f\0=\6\r\0055\6\15\0003\a\14\0=\a\16\0063\a\17\0=\a\18\6=\6\19\0055\6\21\0003\a\20\0=\a\22\6=\6\23\0055\6\25\0003\a\24\0=\a\26\6=\6\27\0055\6\28\0=\6\29\5=\5\31\4B\2\2\1K\0\1\0K\0\1\0\14overrides\1\0\0\fshebang\1\0\1\tdash\ash\21function_complex\21*.math_notes/%w+\1\0\0\0\21function_literal\rBrewfile\1\0\0\0\24function_extensions\bpdf\0\bcpp\1\0\0\0\fcomplex\1\0\1\17.*git/config\14gitconfig\fliteral\1\0\1\17MyBackupFile\blua\15extensions\1\0\0\1\0\1\apn\vpotion\nsetup\24filetype not found!\vnotify\bvim\rfiletype\frequire\npcall\0", "config", "bufdelete.nvim")
time([[Config for bufdelete.nvim]], false)
-- Config for: vim-markdown
time([[Config for vim-markdown]], true)
try_loadstring("\27LJ\2\n\\\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0K\0\1\0\29vim_markdown_toc_autofi1\22vim_markdown_math\6g\bvim\0", "config", "vim-markdown")
time([[Config for vim-markdown]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n7\0\1\5\0\4\0\a6\1\0\0009\1\1\1'\3\2\0009\4\3\0&\3\4\3B\1\2\1K\0\1\0\nfname\nedit \bcmd\bvimá\16\1\0\n\0Q\0Ä\0016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\4\5\0B\2\2\0012\0tÄ9\2\6\0015\4\a\0005\5\b\0005\6\t\0006\a\n\0=\a\n\6=\6\v\5=\5\f\0045\5\16\0005\6\r\0005\a\14\0=\a\15\6=\6\17\0055\6\18\0=\6\15\5=\5\19\0045\5\20\0=\5\21\0045\5\22\0004\6\0\0=\6\23\5=\5\24\0044\5\0\0=\5\25\0045\5\26\0004\6\0\0=\6\27\5=\5\28\0045\5\29\0005\6\30\0=\6\15\5=\5\31\0045\5 \0004\6\0\0=\6!\0054\6\0\0=\6\"\5=\5#\0045\5$\0=\5%\0045\5&\0005\6'\0=\6(\0055\6)\0005\a*\0005\b,\0005\t+\0=\t-\b5\t.\0=\t/\b=\b\"\a=\a0\6=\0061\5=\0052\0045\0053\0=\0054\0045\0055\0005\0066\0=\0067\5=\0058\4B\2\2\0016\2\1\0'\0049\0B\2\2\0029\2:\0023\4;\0B\2\2\0016\2\3\0009\2<\0029\2=\2'\4>\0'\5?\0'\6@\0005\aA\0B\2\5\0016\2\3\0009\2<\0029\2=\2'\4>\0'\5B\0'\6C\0005\aD\0B\2\5\0016\2\3\0009\2<\0029\2=\2'\4>\0'\5E\0'\6F\0005\aG\0B\2\5\0016\2\3\0009\2<\0029\2=\2'\4>\0'\5H\0'\6I\0005\aJ\0B\2\5\0016\2\3\0009\2<\0029\2=\2'\4>\0'\5K\0'\6L\0005\aM\0B\2\5\0016\2\3\0009\2<\0029\2=\2'\4>\0'\5N\0'\6O\0005\aP\0B\2\5\1K\0\1\0K\0\1\0\1\0\2\fnoremap\2\vsilent\2\26:NvimTreeFindFile<CR>\atf\1\0\2\fnoremap\2\vsilent\2\25:NvimTreeRefresh<CR>\atr\1\0\2\fnoremap\2\vsilent\2\24:NvimTreeResize<CR>\ats\1\0\2\fnoremap\2\vsilent\2\23:NvimTreeFocus<CR>\btfo\1\0\2\fnoremap\2\vsilent\2\23:NvimTreeClose<CR>\atc\1\0\2\fnoremap\2\vsilent\2\22:NvimTreeOpen<CR>\ato\6n\20nvim_set_keymap\bapi\0\20on_file_created\21nvim-tree.events\blog\ntypes\1\0\6\bgit\1\15copy_paste\1\fprofile\1\vconfig\1\ball\1\16diagnostics\1\1\0\2\rtruncate\1\venable\1\ntrash\1\0\2\20require_confirm\2\bcmd\ntrash\factions\14open_file\18window_picker\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\venable\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\1\0\2\18resize_window\1\17quit_on_open\1\15change_dir\1\0\3\vglobal\1\venable\2\23restrict_above_cwd\1\1\0\1\25use_system_clipboard\2\bgit\1\0\3\venable\2\ftimeout\3ê\3\vignore\2\ffilters\fexclude\vcustom\1\0\1\rdotfiles\1\16diagnostics\1\0\4\nerror\b‚õî\thint\b‚ö°\fwarning\v‚ö†Ô∏è\tinfo\b‚öõ\1\0\2\venable\2\17show_on_dirs\2\16system_open\targs\1\0\1\bcmd\5\23ignore_ft_on_setup\24update_focused_file\16ignore_list\1\0\2\venable\2\15update_cwd\2\23hijack_directories\1\0\2\venable\2\14auto_open\2\rrenderer\1\0\2\18git_placement\vbefore\18webdev_colors\2\19indent_markers\1\0\0\nicons\1\0\3\vcorner\t‚îî \tnone\a  \tedge\t‚îÇ \1\0\1\venable\1\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\b\tside\tleft preserve_window_proportions\1\vnumber\1\21hide_root_folder\1\vheight\3\30\nwidth\3\30\19relativenumber\1\15signcolumn\byes\1\0\n\16open_on_tab\1\23open_on_setup_file\1\18open_on_setup\1\27ignore_buffer_on_setup\1'hijack_unnamed_buffer_when_opening\1\17hijack_netrw\2\18hijack_cursor\1\18disable_netrw\1\fsort_by\tname\25auto_reload_on_write\2\nsetup\25nvim-tree not found!\vnotify\bvim\14nvim-tree\frequire\npcall\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\ná\a\0\0\5\0\23\00036\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0006\2\3\0009\2\4\0025\3\6\0=\3\5\0026\2\3\0009\2\4\0025\3\b\0=\3\a\0026\2\3\0009\2\4\2)\3\1\0=\3\t\0026\2\3\0009\2\4\2'\3\v\0=\3\n\0026\2\3\0009\2\4\2+\3\1\0=\3\f\0026\2\3\0009\2\4\2+\3\2\0=\3\r\0026\2\3\0009\2\4\2+\3\2\0=\3\14\0026\2\3\0009\2\4\2+\3\2\0=\3\15\0026\2\3\0009\2\4\0025\3\17\0=\3\16\0026\2\3\0009\2\18\2'\3\20\0=\3\19\0029\2\21\0015\4\22\0B\2\2\1K\0\1\0\1\0\1\25show_current_context\2\nsetup\n99999\16colorcolumn\awo\1\21\0\0\nclass\vreturn\rfunction\vmethod\b^if\v^while\16jsx_element\t^for\f^object\v^table\nblock\14arguments\17if_statement\16else_clause\16jsx_element\29jsx_self_closing_element\18try_statement\17catch_clause\21import_statement\19operation_type&indent_blankline_context_patterns*indent_blankline_show_current_context$indent_blankline_use_treesitter-indent_blankline_show_first_indent_level4indent_blankline_show_trailing_blankline_indent\b‚ñè\26indent_blankline_char\23indentLine_enabled\1\b\0\0\thelp\rstartify\14dashboard\vpacker\17neogitstatus\rNvimTree\fTrouble&indent_blankline_filetype_exclude\1\3\0\0\rterminal\vnofile%indent_blankline_buftype_exclude\6g\bvim\21indent_blankline\frequire\npcall\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\ng\0\1\5\0\a\0\0149\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\15\0\1\0X\2\6Ä6\1\3\0009\1\4\0019\1\5\0019\3\0\0'\4\6\0D\1\3\0K\0\1\0\t:t:r\16fnamemodify\afn\bvim\t%.md\nmatch\tname\31\0\4\a\0\2\0\5'\4\0\0\18\5\0\0'\6\1\0&\4\6\4L\4\2\0\6)\6(Ç\2\0\2\5\0\n\0%6\2\0\0009\2\1\0028\2\0\0029\2\2\2\6\2\3\0X\2\2Ä+\2\2\0L\2\2\0006\2\0\0009\2\4\0029\2\5\2\18\4\0\0B\2\2\2\6\2\6\0X\2\2Ä+\2\2\0L\2\2\0006\2\0\0009\2\4\0029\2\a\2B\2\1\2\a\2\b\0X\2\bÄ6\2\0\0009\2\1\0028\2\0\0029\2\2\2\6\2\t\0X\2\2Ä+\2\2\0L\2\2\0:\2\1\1\4\2\0\0X\2\2Ä+\2\2\0L\2\2\0K\0\1\0\twiki\16<work-repo>\vgetcwd\30<buffer-name-I-dont-want>\fbufname\afn\30<i-dont-want-to-see-this>\rfiletype\abo\bvim¨\n\1\0\b\0'\0L6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\4\5\0B\2\2\0012\0@Ä9\2\6\0015\4\16\0005\5\a\0003\6\b\0=\6\t\0053\6\n\0=\6\v\0053\6\f\0=\6\r\0054\6\3\0005\a\14\0>\a\1\6=\6\15\5=\5\17\4B\2\2\0016\2\3\0009\2\18\0029\2\19\2'\4\20\0'\5\21\0'\6\22\0005\a\23\0B\2\5\0016\2\3\0009\2\18\0029\2\19\2'\4\24\0'\5\25\0'\6\26\0005\a\27\0B\2\5\0016\2\3\0009\2\18\0029\2\19\2'\4\20\0'\5\28\0'\6\29\0005\a\30\0B\2\5\0016\2\3\0009\2\18\0029\2\19\2'\4\24\0'\5\31\0'\6 \0005\a!\0B\2\5\0016\2\3\0009\2\18\0029\2\19\2'\4\20\0'\5\"\0'\6#\0005\a$\0B\2\5\0016\2\3\0009\2\18\0029\2\19\2'\4\20\0'\5%\0'\6#\0005\a&\0B\2\5\1K\0\1\0K\0\1\0\1\0\2\fnoremap\2\vsilent\2\abd\1\0\2\fnoremap\2\vsilent\2#:BufferLineSortByExtension<CR>\abe\1\0\2\fnoremap\2\vsilent\2#<ESC>:BufferLineCyclePrev<CR>i\14<leader>p\1\0\2\fnoremap\2\vsilent\2\29:BufferLineCyclePrev<CR>\abp\1\0\2\fnoremap\2\vsilent\2#<ESC>:BufferLineCycleNext<CR>i\14<leader>n\6i\1\0\2\fnoremap\2\vsilent\2\29:BufferLineCycleNext<CR>\abn\6n\20nvim_set_keymap\bapi\foptions\1\0\0\foffsets\1\0\3\15text_align\vcenter\ttext\18File Explorer\rfiletype\rNvimTree\18custom_filter\0\26diagnostics_indicator\0\19name_formatter\0\1\0\24\22left_trunc_marker\bÔÇ®!diagnostics_update_in_insert\1\15close_icon\bÔÄç\18modified_icon\b‚óè\20show_close_icon\2\22buffer_close_icon\bÔôï\24show_tab_indicators\2\23left_mouse_command\14buffer %d\24right_mouse_command\16bdelete! %d\18close_command\16bdelete! %d\fnumbers\fordinal\16diagnostics\1\rtab_size\3\18\fsort_by\14directory\27always_show_bufferline\2\25enforce_regular_tabs\1\20separator_style\tthin\24persist_buffer_sort\2\22max_prefix_length\3\15\20max_name_length\3\18\28show_buffer_close_icons\2\22show_buffer_icons\2\23right_trunc_marker\bÔÇ©\tmode\fbuffers\nsetup\26bufferline not found!\vnotify\bvim\15bufferline\frequire\npcall\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: vim-repeat
time([[Config for vim-repeat]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "vim-repeat")
time([[Config for vim-repeat]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n«\f\0\0\6\0009\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\16\0005\4\17\0=\4\18\3=\3\19\0025\3\21\0005\4\20\0=\4\22\0035\4\23\0005\5\24\0=\5\f\4=\4\25\0035\4\26\0005\5\27\0=\5\28\0045\5\29\0=\5\30\0045\5\31\0=\5 \0045\5!\0=\5\"\4=\4#\0035\4$\0005\5%\0=\5&\4=\4'\3=\3(\0025\3)\0005\4*\0=\4\f\3=\3+\0025\3,\0004\4\0\0=\4-\0035\4.\0=\4/\3=\0030\0025\0031\0=\0032\0025\0033\0=\0034\0025\0035\0=\0036\0025\0037\0=\0038\2B\0\2\1K\0\1\0\14autopairs\1\0\1\venable\1\fmatchup\1\0\1\venable\1\fautotag\1\0\1\venable\1\frainbow\1\0\3\19max_file_lines\3Ë\a\venable\1\18extended_mode\2\15playground\16keybindings\1\0\n\vupdate\6R\14show_help\6?\14goto_node\t<cr>\21unfocus_language\6F\19focus_language\6f\28toggle_language_display\6I\27toggle_anonymous_nodes\6a\30toggle_injected_languages\6t\21toggle_hl_groups\6i\24toggle_query_editor\6o\fdisable\1\0\3\20persist_queries\1\15updatetime\3\25\venable\1\17textsubjects\1\0\2\6.\23textsubjects-smart\6;\21textsubjects-big\1\0\1\venable\1\16textobjects\16lsp_interop\25peek_definition_code\1\0\2\15<leader>pF\17@class.outer\15<leader>pf\20@function.outer\1\0\2\venable\1\vborder\tnone\tmove\22goto_previous_end\1\0\1\a[]\20@function.outer\24goto_previous_start\1\0\1\a[[\20@function.outer\18goto_next_end\1\0\1\a][\20@function.outer\20goto_next_start\1\0\1\a]]\20@function.outer\1\0\2\14set_jumps\1\venable\2\vselect\1\0\4\aaf\20@function.outer\aac\17@class.outer\aif\20@function.inner\aic\17@class.inner\1\0\2\14lookahead\2\venable\2\tswap\1\0\0\1\0\1\venable\1\26context_commentstring\vconfig\1\0\a\tjson\5\bcss\r/* %s */\15typescript\n// %s\thtml\16<!-- %s -->\bvue\16<!-- %s -->\vsvelte\16<!-- %s -->\tscss\r/* %s */\1\0\1\venable\2\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\19init_selection\bgnn\1\0\1\venable\2\14highlight&additional_vim_regex_highlighting\1\2\0\0\borg\1\0\1\venable\2\21ensure_installed\1\0\1\17sync_install\2\1\v\0\0\bcpp\6c\vpython\ago\rmarkdown\tjson\tyaml\thtml\blua\borg\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\nƒ\4\0\0\6\0\r\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3'\5\a\0B\3\2\2'\4\b\0&\3\4\3=\3\t\0025\3\n\0=\3\v\0024\3\0\0=\3\f\2B\0\2\1K\0\1\0\24extra_trigger_chars\17handler_opts\1\0\1\vborder\frounded\rlog_path\23/lsp_signature.log\ncache\fstdpath\afn\bvim\1\0\23\16hint_prefix\nüêº \tbind\2\17hi_parameter LspSignatureActiveParameter\twrap\2\16hint_scheme\vString\ndebug\1\16hint_enable\2\ffix_pos\1\18close_timeout\3†\31\26floating_window_off_y\3\0\26floating_window_off_x\3\1#floating_window_above_cur_line\2\20floating_window\2\14max_width\3P\15max_height\3\f\14doc_lines\3\n\fverbose\1\19timer_interval\3»\1\17shadow_guibg\nBlack\17shadow_blend\3$\fpadding\5\vzindex\3»\1\19always_trigger\1\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: cmp-buffer
time([[Config for cmp-buffer]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-buffer")
time([[Config for cmp-buffer]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-treesitter-textobjects
time([[Config for nvim-treesitter-textobjects]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nvim-treesitter-textobjects")
time([[Config for nvim-treesitter-textobjects]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\nÍ\1\0\0\b\0\v\0\0295\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\a\0'\6\b\0\18\a\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0'\5\t\0'\6\n\0\18\a\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\21<C-\\><C-n><C-W>h\n<C-h>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2$\0\0\3\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0B\0\2\1K\0\1\0\3¿\vtoggle$\0\0\3\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0B\0\2\1K\0\1\0\4¿\vtoggle$\0\0\3\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0B\0\2\1K\0\1\0\5¿\vtoggle$\0\0\3\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0B\0\2\1K\0\1\0\6¿\vtoggle$\0\0\3\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0B\0\2\1K\0\1\0\a¿\vtoggle€\6\1\0\v\0$\0@6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0008Ä9\2\3\0015\4\4\0004\5\0\0=\5\5\0046\5\6\0009\5\a\0059\5\b\5=\5\b\0045\5\t\0005\6\n\0=\6\v\5=\5\f\4B\2\2\0016\2\r\0003\3\15\0=\3\14\0026\2\6\0009\2\16\2'\4\17\0B\2\2\0016\2\1\0'\4\18\0B\2\2\0029\2\19\2\18\5\2\0009\3\20\0025\6\21\0B\3\3\0023\4\22\0007\4\23\0\18\6\2\0009\4\20\0025\a\24\0B\4\3\0023\5\25\0007\5\26\0\18\a\2\0009\5\20\0025\b\27\0B\5\3\0023\6\28\0007\6\29\0\18\b\2\0009\6\20\0025\t\30\0B\6\3\0023\a\31\0007\a \0\18\t\2\0009\a\20\0025\n!\0B\a\3\0023\b\"\0007\b#\0002\0\0ÄK\0\1\0K\0\1\0\19_PYTHON_TOGGLE\0\1\0\2\vhidden\2\bcmd\vpython\17_HTOP_TOGGLE\0\1\0\2\vhidden\2\bcmd\thtop\17_NCDU_TOGGLE\0\1\0\2\vhidden\2\bcmd\tncdu\17_NODE_TOGGLE\0\1\0\2\vhidden\2\bcmd\tnode\20_LAZYGIT_TOGGLE\0\1\0\2\vhidden\2\bcmd\flazygit\bnew\rTerminal\24toggleterm.terminal:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\2\rwinblend\3\3\vborder\vcurved\nshell\6o\bvim\20shade_filetypes\1\0\n\17open_mapping\n<c-\\>\tsize\3\20\18close_on_exit\2\14direction\nfloat\17persist_size\2\20insert_mappings\2\20start_in_insert\2\19shading_factor\3\3\20shade_terminals\2\17hide_numbers\1\nsetup\15toggleterm\frequire\npcall\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-colorizer
time([[Config for nvim-colorizer]], true)
try_loadstring("\27LJ\2\no\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\thtml\1\0\1\nnames\1\bcss\1\0\1\vrgb_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer")
time([[Config for nvim-colorizer]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: cmp-nvim-lsp
time([[Config for cmp-nvim-lsp]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-nvim-lsp")
time([[Config for cmp-nvim-lsp]], false)
-- Config for: material.nvim
time([[Config for material.nvim]], true)
try_loadstring("\27LJ\2\nÃ\a\0\0\6\0#\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0024\3\0\0=\3\14\2B\0\2\0016\0\15\0009\0\16\0009\0\17\0\a\0\18\0X\0\5Ä6\0\15\0009\0\16\0'\1\20\0=\1\19\0X\0\14Ä6\0\15\0009\0\16\0009\0\17\0\a\0\21\0X\0\5Ä6\0\15\0009\0\16\0'\1\22\0=\1\19\0X\0\4Ä6\0\15\0009\0\16\0'\1\23\0=\1\19\0006\0\15\0009\0\24\0'\2\25\0B\0\2\0016\0\15\0009\0\26\0009\0\27\0'\2\28\0'\3\29\0'\4\30\0005\5\31\0B\0\5\0016\0\15\0009\0\26\0009\0\27\0'\2\28\0'\3 \0'\4!\0005\5\"\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2F<Cmd>lua require('material.functions').change_style('darker')<CR>\15<leader>md\1\0\2\fnoremap\2\vsilent\2G<Cmd>lua require('material.functions').change_style('lighter')<CR>\15<leader>ml\6n\20nvim_set_keymap\bapi\25colorscheme material\bcmd\vdarker\14palenight\vmidium\flighter\19material_style\nlight\ntheme\6g\bvim\22custom_highlights\fdisable\1\0\5\19colored_cursor\1\16term_colors\1\14eob_lines\1\15background\1\fborders\1\20high_visibility\1\0\2\flighter\1\vdarker\1\23contrast_filetypes\1\4\0\0\rterminal\vpacker\aqf\fitalics\1\0\5\fstrings\1\14functions\1\rkeywords\1\14variables\1\rcomments\2\rcontrast\1\0\2\18async_loading\2\18lualine_style\fdefault\1\0\a\17line_numbers\1\21floating_windows\1\rsidebars\1\15popup_menu\1\24non_current_windows\1\16cursor_line\1\16sign_column\1\nsetup\rmaterial\frequire\0", "config", "material.nvim")
time([[Config for material.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n†\1\0\0\5\0\a\0\0176\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\2\2'\4\4\0B\2\2\1K\0\1\0009\2\5\0015\4\6\0B\2\2\0016\2\3\0=\1\2\2K\0\1\0\1\0\1\22background_colour\f#000000\nsetup\29notify module not found!\bvim\vnotify\frequire\npcall\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: nvim-dap-virtual-text
time([[Config for nvim-dap-virtual-text]], true)
try_loadstring("\27LJ\2\n„\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\t\29highlight_new_as_changed\2 highlight_changed_variables\2\21enabled_commands\2\15virt_lines\1\18virt_text_pos\beol\fenabled\2\15all_frames\1\14commented\1\21show_stop_reason\2\nsetup\26nvim-dap-virtual-text\frequire\0", "config", "nvim-dap-virtual-text")
time([[Config for nvim-dap-virtual-text]], false)
-- Config for: cmp-nvim-lua
time([[Config for cmp-nvim-lua]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-nvim-lua")
time([[Config for cmp-nvim-lua]], false)
-- Config for: mathjax-support-for-mkdp
time([[Config for mathjax-support-for-mkdp]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "mathjax-support-for-mkdp")
time([[Config for mathjax-support-for-mkdp]], false)
-- Config for: sniprun
time([[Config for sniprun]], true)
try_loadstring("\27LJ\2\nÿ\5\0\0\6\0\28\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0024\3\0\0=\3\5\0025\3\t\0005\4\a\0005\5\6\0=\5\b\4=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\19\0005\4\18\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\3=\3\27\2B\0\2\1K\0\1\0\18snipruncolors\26SniprunFloatingWinErr\1\0\2\afg\f#881515\fctermfg\fDarkRed\26SniprunVirtualTextErr\1\0\4\afg\f#000000\abg\f#881515\fctermbg\fDarkRed\vcterfg\nBlack\25SniprunFloatingWinOk\1\0\2\afg\f#66eeff\fctermfg\tCyan\25SniprunVirtualTextOk\1\0\0\1\0\4\afg\f#000000\abg\f#66eeff\fctermbg\tCyan\vcterfg\nBlack\19show_no_output\1\3\0\0\fClassic\20TempFloatWindow\20display_options\1\0\2\25notification_timeout\3\5\19terminal_width\3-\fdisplay\1\3\0\0\fClassic\18VirtualTextOk\24interpreter_options\17GFM_original\1\0\0\21use_on_filetypes\1\0\0\1\2\0\0\20markdown.pandoc\16repl_enable\26selected_interpreters\1\0\3\20inline_messages\3\0\21live_mode_toggle\aon\fborders\vsingle\nsetup\fsniprun\frequire\0", "config", "sniprun")
time([[Config for sniprun]], false)
-- Config for: md-img-paste.vim
time([[Config for md-img-paste.vim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "md-img-paste.vim")
time([[Config for md-img-paste.vim]], false)
-- Config for: cmp-path
time([[Config for cmp-path]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-path")
time([[Config for cmp-path]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nG\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvim#\0\1\4\0\2\0\5'\1\0\0\18\2\0\0'\3\1\0&\1\3\1L\1\2\0\b --\b-- ´\1\0\0\a\0\b\0\0196\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\2\1'\3\4\0B\1\2\0025\2\5\0#\3\1\0006\4\6\0009\4\a\4\21\6\2\0\"\6\6\3B\4\2\0028\5\4\2L\5\2\0\tceil\tmath\1\n\0\0\v‚ñà‚ñà\v‚ñá‚ñá\v‚ñÜ‚ñÜ\v‚ñÖ‚ñÖ\v‚ñÑ‚ñÑ\v‚ñÉ‚ñÉ\v‚ñÇ‚ñÇ\v‚ñÅ‚ñÅ\6 \6$\6.\tline\afn\bvim[\0\0\5\0\5\0\t'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\2&\0\1\0L\0\2\0\15shiftwidth\24nvim_buf_get_option\bapi\bvim\rspaces: Ö\n\1\0\17\0:\0a6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\4\5\0B\2\2\0012\0UÄ3\2\6\0005\3\a\0005\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0005\5\15\0=\5\r\0045\5\17\0005\6\16\0=\6\18\0055\6\19\0=\6\20\0055\6\21\0=\6\22\5=\5\23\4=\2\24\0045\5\25\0003\6\26\0=\6\27\0055\6\28\0005\a\29\0=\a\r\0065\a\30\0005\b\31\0005\t \0003\n!\0003\v\"\0009\f#\0015\14+\0005\15$\0005\16%\0=\16&\0155\16'\0=\16(\0155\16)\0=\16*\15=\15,\0145\15-\0004\16\3\0>\b\1\16>\3\2\16=\16.\0154\16\3\0>\5\1\16=\16/\0154\16\3\0>\6\1\16=\0160\0155\0161\0>\4\1\16>\v\2\16>\a\4\16=\0162\0154\16\3\0>\t\1\16=\0163\0154\16\3\0>\n\1\16=\0164\15=\15\v\0145\0155\0004\16\0\0=\16.\0154\16\0\0=\16/\0154\16\3\0>\6\1\16=\0160\0155\0166\0=\0162\0154\16\0\0=\0163\0154\16\0\0=\0164\15=\0157\0144\15\0\0=\0158\0144\15\0\0=\0159\14B\f\2\1K\0\1\0K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\0\0\14lualine_z\14lualine_y\14lualine_x\1\6\0\0\0\0\rencoding\0\15fileformat\14lualine_c\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\23disabled_filetypes\1\5\0\0\nalpha\14dashboard\rNvimTree\fOutline\23section_separators\1\0\2\tleft\b‚Üê\nright\b‚Üí\25component_separators\1\0\2\tleft\b‚Üê\nright\b‚Üí\1\0\3\ntheme\tauto\25always_divide_middle\2\18icons_enabled\2\nsetup\0\0\1\2\1\0\rlocation\fpadding\3\0\1\2\2\0\vbranch\ticon\b·õ¶\18icons_enabled\2\1\2\1\0\rfiletype\18icons_enabled\1\1\0\3\funnamed\14[No Name]\rmodified\b[+]\rreadonly\b[-]\1\2\3\0\rfilename\20shorting_target\3(\16file_status\2\tpath\3\1\bfmt\0\1\2\0\0\tmode\tcond\15diff_color\fremoved\1\0\1\afg\f#ec5f67\rmodified\1\0\1\afg\f#ecbe7b\nadded\1\0\0\1\0\1\afg\f#98be65\1\0\3\nadded\a+ \fremoved\t‚ê° \rmodified\b÷é \1\2\1\0\tdiff\fcolored\2\fsymbols\1\0\2\twarn\f‚ö†Ô∏è \nerror\t‚õî \rsections\1\3\0\0\nerror\twarn\fsources\1\2\0\0\20nvim_diagnostic\1\2\3\0\16diagnostics\19always_visible\2\21update_in_insert\1\fcolored\1\0\23lualine not found!\vnotify\bvim\flualine\frequire\npcall\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: friendly-snippets
time([[Config for friendly-snippets]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "friendly-snippets")
time([[Config for friendly-snippets]], false)
-- Config for: neovim-session-manager
time([[Config for neovim-session-manager]], true)
try_loadstring("\27LJ\2\nÓ\4\0\0\n\0\20\0 6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\n\0\18\6\0\0009\4\4\0006\a\5\0009\a\6\a9\a\a\a'\t\b\0B\a\2\2'\b\t\0B\4\4\2=\4\v\0036\4\0\0'\6\f\0B\4\2\0029\4\r\0049\4\14\4=\4\15\0035\4\16\0=\4\17\3B\1\2\0016\1\5\0009\1\18\1'\3\19\0B\1\2\1K\0\1\0£\1    augroup _open_nvim_tree\n      autocmd! * <buffer>\n      autocmd SessionLoadPost * silent! lua require(\"nvim-tree\").toggle(false,true)\n    augroup end\n    \bcmd\30autosave_ignore_filetypes\1\2\0\0\14gitcommit\18autoload_mode\15CurrentDir\17AutoloadMode\27session_manager.config\17sessions_dir\1\0\6\19colon_replacer\a++\18path_replacer\a__\20max_path_length\3P\29autosave_only_in_session\1\31autosave_ignore_not_normal\2\26autosave_last_session\2\rsessions\tdata\fstdpath\afn\bvim\bnew\nsetup\20session_manager\17plenary.path\frequire\0", "config", "neovim-session-manager")
time([[Config for neovim-session-manager]], false)
-- Config for: cmp-spell
time([[Config for cmp-spell]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-spell")
time([[Config for cmp-spell]], false)
-- Config for: cmp-cmdline
time([[Config for cmp-cmdline]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-cmdline")
time([[Config for cmp-cmdline]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nó\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17Ä6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0Í\1\0\0\6\3\6\1)-\0\0\0009\0\0\0009\0\1\0\14\0\0\0X\0\2Ä+\0\1\0L\0\2\0-\0\0\0009\0\0\0009\0\1\0-\1\1\0B\1\1\0028\0\1\0\14\0\0\0X\1\2Ä+\1\1\0L\1\2\0009\1\2\0009\1\3\0019\1\4\1\18\3\1\0009\1\5\1B\1\2\3-\3\2\0)\5\0\0B\3\2\2:\4\1\3\23\4\0\4>\4\1\3:\4\1\3:\5\1\1\3\5\4\0X\4\4Ä:\4\1\3:\5\1\2\2\4\5\0X\4\2Ä+\4\1\0X\5\1Ä+\4\2\0L\4\2\0\2¿\4¿\3¿\18pos_begin_end\tmark\fsnippet\vparent\18current_nodes\fsession\2ƒ\6\0\0\14\3\14\1´\1-\0\0\0009\0\0\0009\0\1\0\14\0\0\0X\0\2Ä+\0\1\0L\0\2\0-\0\1\0)\2\0\0B\0\2\2:\1\1\0\23\1\0\1>\1\1\0-\1\0\0009\1\0\0019\1\1\1-\2\2\0B\2\1\0028\1\2\1\14\0\1\0X\2\2Ä+\2\1\0L\2\2\0009\2\2\0019\2\3\0029\3\4\2:\3\0\3\15\0\3\0X\4\28Ä9\4\5\3\18\6\4\0009\4\6\4B\4\2\2:\5\1\0:\6\1\4\0\6\5\0X\5\bÄ:\5\1\0:\6\1\4\5\5\6\0X\5\16Ä:\5\2\0:\6\2\4\1\6\5\0X\5\fÄ\18\a\2\0009\5\a\2B\5\2\1-\5\0\0009\5\0\0059\5\1\5-\6\2\0B\6\1\2+\a\0\0<\a\6\5+\5\1\0L\5\2\0009\4\b\2\18\6\4\0009\4\t\4)\a\1\0+\b\2\0B\4\4\2\18\1\4\0\n\1\0\0X\4SÄ9\4\n\1\n\4\0\0X\4PÄ\4\1\2\0X\4NÄU\4MÄ9\4\n\1\r\5\4\0X\5\4Ä9\5\5\4\18\a\5\0009\5\v\5B\5\2\2\4\4\2\0X\6\6Ä\15\0\5\0X\6\4Ä:\6\1\0:\a\1\5\0\6\a\0X\6\nÄ:\6\1\0:\a\1\5\5\6\a\0X\6\4Ä:\6\2\0:\a\2\5\0\6\a\0X\6\2Ä+\6\1\0X\a\1Ä+\6\2\0\n\4\0\0X\a\3Ä9\a\n\2\5\4\a\0X\a\fÄ\18\t\2\0009\a\a\2B\a\2\1-\a\0\0009\a\0\a9\a\1\a-\b\2\0B\b\1\2+\t\0\0<\t\b\a+\a\1\0L\a\2\0\15\0\6\0X\a\bÄ-\a\0\0009\a\0\a9\a\1\a-\b\2\0B\b\1\2<\1\b\a+\a\2\0L\a\2\0+\a\0\0006\b\f\0009\n\r\1\18\v\1\0)\f\1\0+\r\2\0B\b\5\3\18\1\t\0\18\a\b\0\14\0\a\0X\b∏\18\n\2\0009\b\a\2B\b\2\1-\b\0\0009\b\0\b9\b\1\b-\t\2\0B\t\1\2+\n\0\0<\n\t\b+\b\1\0L\b\2\0X\4´\15\0\3\0X\4\bÄ-\4\0\0009\4\0\0049\4\1\4-\5\2\0B\5\1\2<\2\5\4+\4\2\0L\4\2\0\18\6\2\0009\4\a\2B\4\2\1-\4\0\0009\4\0\0049\4\1\4-\5\2\0B\5\1\2+\6\0\0<\6\5\4+\4\1\0L\4\2\0\2¿\3¿\4¿\14jump_from\npcall\14pos_begin\tnext\14jump_into\16inner_first\25remove_from_jumplist\fpos_end\tmark\17insert_nodes\fsnippet\vparent\18current_nodes\fsession\2Ü\2\1\1\n\0\n\1*6\1\0\0006\3\1\0'\4\2\0B\1\3\3\14\0\1\0X\3\1Ä2\0\"Ä6\3\3\0009\3\4\0039\3\5\0036\4\3\0009\4\4\0049\4\6\0043\5\a\0003\6\b\0\t\0\0\0X\a\nÄ\18\a\5\0B\a\1\2\15\0\a\0X\b\3Ä9\a\t\2)\tˇˇB\a\2\0022\0\0ÄL\a\2\0X\a\fÄ\18\a\5\0B\a\1\2\15\0\a\0X\b\6Ä\18\a\6\0B\a\1\2\15\0\a\0X\b\2Ä9\a\t\2B\a\1\0022\0\0ÄL\a\2\0002\0\0ÄK\0\1\0K\0\1\0\rjumpable\0\0\25nvim_get_current_buf\24nvim_win_get_cursor\bapi\bvim\fluasnip\frequire\npcall˛ˇˇˇ\31w\0\0\b\0\6\0\0176\0\0\0009\0\1\0009\0\2\0B\0\1\0026\1\3\0\18\3\0\0B\1\2\4H\4\5Ä9\6\4\5\a\6\5\0X\6\2Ä+\6\2\0L\6\2\0F\4\3\3R\4˘+\1\1\0L\1\2\0\remmet_ls\tname\npairs\20buf_get_clients\blsp\bvimj\0\2\a\2\a\0\0146\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\5B\2\3\2=\2\0\1-\2\1\0009\3\5\0009\3\6\0038\2\3\2=\2\4\1L\1\2\0\3¿\5¿\tname\vsource\tmenu\a%s\vformat\vstring\tkindC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire•\2\0\1\6\3\v\00006\1\0\0'\3\1\0B\1\2\0026\2\0\0'\4\2\0B\2\2\0029\3\3\1B\3\1\2\15\0\3\0X\4\3Ä9\3\4\1B\3\1\1X\3\"Ä9\3\5\2B\3\1\2\15\0\3\0X\4\3Ä9\3\6\2B\3\1\1X\3\27Ä-\3\0\0)\5\1\0B\3\2\2\15\0\3\0X\4\4Ä9\3\a\2)\5\1\0B\3\2\1X\3\18Ä-\3\1\0B\3\1\2\15\0\3\0X\4\3Ä\18\3\0\0B\3\1\1X\3\vÄ-\3\2\0B\3\1\2\15\0\3\0X\4\5Ä6\3\b\0009\3\t\0039\3\n\3D\3\1\0X\3\2Ä\18\3\0\0B\3\1\1K\0\1\0\a¿\6¿\b¿\17cmp#complete\afn\bvim\tjump\vexpand\15expandable\21select_next_item\fvisible\fluasnip\bcmp\frequireü\1\0\1\6\1\6\0\0256\1\0\0'\3\1\0B\1\2\0026\2\0\0'\4\2\0B\2\2\0029\3\3\1B\3\1\2\15\0\3\0X\4\3Ä9\3\4\1B\3\1\1X\3\vÄ-\3\0\0)\5ˇˇB\3\2\2\15\0\3\0X\4\4Ä9\3\5\2)\5ˇˇB\3\2\1X\3\2Ä\18\3\0\0B\3\1\1K\0\1\0\a¿\tjump\21select_prev_item\fvisible\fluasnip\bcmp\frequireÜ\2\0\1\6\1\n\0-6\1\0\0'\3\1\0B\1\2\0026\2\0\0'\4\2\0B\2\2\0029\3\3\1B\3\1\2\15\0\3\0X\4\15Ä9\3\4\0016\5\5\0009\5\6\5B\3\2\2\15\0\3\0X\4\tÄ-\3\0\0)\5\1\0B\3\2\2\15\0\3\0X\4\3Ä9\3\a\2)\5\1\0B\3\2\1K\0\1\0-\3\0\0)\5\1\0B\3\2\2\15\0\3\0X\4\fÄ9\3\a\2)\5\1\0B\3\2\2\14\0\3\0X\3\2Ä\18\3\0\0B\3\1\0016\3\b\0'\5\t\0B\3\2\1K\0\1\0X\3\2Ä\18\3\0\0B\3\1\1K\0\1\0\a¿\6c\nprint\tjump\17confirm_opts\15cmp_config\fconfirm\fvisible\fluasnip\bcmp\frequire}\0\0\4\0\6\0\0176\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\0027\0\3\0006\0\3\0\a\0\4\0X\0\6Ä6\0\0\0009\0\5\0006\2\3\0B\0\2\1+\0\1\0L\0\2\0K\0\1\0\vnotify\vprompt\fbuftype\24nvim_buf_get_option\bapi\bvimª\17\1\0\18\0\\\0ø\0016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\1\0X\2\1Ä2\0∑Ä6\2\1\0'\4\3\0B\2\2\0029\2\4\2B\2\1\0016\2\1\0'\4\5\0B\2\2\0025\3\6\0005\4\a\0005\5\b\0003\6\t\0003\a\n\0003\b\v\0005\t\16\0005\n\14\0009\v\f\0029\v\r\v=\v\15\n=\n\17\t5\n\18\0=\n\19\t5\n\21\0005\v\20\0=\v\22\n5\v\23\0=\v\24\n3\v\25\0=\v\26\n=\n\27\t5\n\29\0003\v\28\0=\v\30\n=\n\31\t5\n#\0009\v \0029\v!\v9\v\"\vB\v\1\2=\v$\n9\v \0029\v!\v9\v\"\vB\v\1\2=\v%\n=\n!\t5\n(\0009\v&\0029\v'\vB\v\1\2=\v)\n9\v&\0029\v*\vB\v\1\2=\v+\n9\v&\0029\v,\v)\r¸ˇB\v\2\2=\v-\n9\v&\0029\v,\v)\r\4\0B\v\2\2=\v.\n9\v&\0023\r/\0005\0140\0B\v\3\2=\v1\n9\v&\0023\r2\0005\0143\0B\v\3\2=\v4\n9\v&\0029\v5\vB\v\1\2=\v6\n9\v&\0023\r7\0B\v\2\2=\v8\n=\n&\t9\n \0029\n9\n4\f\r\0005\r:\0>\r\1\f5\r;\0>\r\2\f5\r<\0>\r\3\f5\r=\0>\r\4\f5\r>\0>\r\5\f5\r?\0>\r\6\f5\r@\0>\r\a\f5\rA\0>\r\b\f5\rB\0>\r\t\f5\rC\0>\r\n\f5\rD\0>\r\v\f5\rE\0>\r\f\fB\n\2\2=\n9\t7\tF\0009\tG\0029\tH\t5\vI\0005\fL\0004\r\3\0005\14J\0>\14\1\r5\14K\0>\14\2\r=\r9\fB\t\3\0019\tG\0029\tM\t'\vN\0005\fP\0009\r&\0029\rO\r9\rM\rB\r\1\2=\r&\f4\r\3\0005\14Q\0>\14\1\r=\r9\fB\t\3\0019\tG\0029\tM\t'\vR\0005\fS\0009\r&\0029\rO\r9\rM\rB\r\1\2=\r&\f4\r\3\0005\14T\0>\14\1\r=\r9\fB\t\3\0019\tG\0029\tM\t'\vU\0005\fV\0009\r&\0029\rO\r9\rM\rB\r\1\2=\r&\f9\r \0029\r9\r4\15\3\0005\16W\0>\16\1\0154\16\3\0005\17X\0>\17\1\16B\r\3\2=\r9\fB\t\3\0019\tG\0025\vZ\0003\fY\0=\f[\vB\t\2\0019\tG\0026\vF\0B\t\2\0012\0\0ÄK\0\1\0K\0\1\0\fenabled\1\0\0\0\1\0\1\tname\tpath\1\0\1\tname\fcmdline\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\6?\1\0\1\tname\vbuffer\1\0\0\vpreset\6/\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\3\0\0\rmarkdown\thelp\rfiletype\nsetup\15cmp_config\1\0\1\tname\vcrates\1\0\1\tname\15treesitter\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\nspell\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lua\1\0\1\tname\16cmp_tabnine\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\forgmode\1\0\1\tname\rnvim_lsp\fsources\t<CR>\0\n<C-e>\nabort\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-f>\n<C-d>\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\vexpand\1\0\0\0\15formatting\vformat\0\15duplicates\1\0\4\rnvim_lsp\3\1\fluasnip\3\1\vbuffer\3\1\tpath\3\1\vfields\1\0\1\23duplicates_default\3\1\1\4\0\0\tkind\tabbr\tmenu\17experimental\1\0\2\16native_menu\1\15ghost_text\2\17confirm_opts\1\0\1\fenabled\2\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\0\0\0\1\0\a\fluasnip\15[Snippets]\nspell\f[Spell]\vbuffer\r[Buffer]\rnvim_lsp\n{LSP}\rnvim_lua\n[LUA]\16cmp_tabnine\14[TabNine]\tpath\v[Path]\1\0\n\fluasnip\14(Snippet)\nspell\f(Spell)\15treesitter\t(TS)\nemoji\f(Emoji)\tcalc\v(Calc)\tpath\v(Path)\rnvim_lsp\n(LSP)\vbuffer\r(Buffer)\nvsnip\14(Snippet)\16cmp_tabnine\14(Tabnine)\1\0\25\rProperty\t‚ò™ \vMethod\aM \14Reference\t‚ò¨ \fKeyword\t‚ò£ \fSnippet\t‚ò´ \14Interface\t‚èß \vStruct\t‰∑¶ \rFunction\t‚Ñò \tText\aT \vFolder\tüìÅ\18TypeParameter\tÔûÉ \tFile\t‚õ∂ \tUnit\t‚Ñ´ \nField\t‚Ω• \nValue\t·ç≤ \nEvent\aE \rVariable\t‚öù \15EnumMember\t‚öú \tEnum\t‚öö \16Constructor\t‚öô \rConstant\t‚õ≠ \nColor\t‚õØ \nClass\t‚ùÇ \rOperator\t‚ò© \vModule\t‚®ä \bcmp\14lazy_load luasnip.loaders.from_vscode\fluasnip\frequire\npcall\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: telescope-dap.nvim
time([[Config for telescope-dap.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "telescope-dap.nvim")
time([[Config for telescope-dap.nvim]], false)
-- Config for: cmp-tabnine
time([[Config for cmp-tabnine]], true)
try_loadstring("\27LJ\2\nª\1\0\0\6\0\5\0\n6\0\0\0'\2\1\0B\0\2\2\18\3\0\0009\1\2\0005\4\3\0004\5\0\0=\5\4\4B\1\3\1K\0\1\0\23ignored_file_types\1\0\5\24snippet_placeholder\a..\29show_prediction_strength\1\tsort\2\20max_num_results\3\20\14max_lines\3d\nsetup\23cmp_tabnine.config\frequire\0", "config", "cmp-tabnine")
time([[Config for cmp-tabnine]], false)
-- Config for: vim-surround
time([[Config for vim-surround]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "vim-surround")
time([[Config for vim-surround]], false)
-- Config for: telescope-fzf-native.nvim
time([[Config for telescope-fzf-native.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "telescope-fzf-native.nvim")
time([[Config for telescope-fzf-native.nvim]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\nÌ\2\0\0\5\0\r\0@6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\4\0X\0\bÄ6\0\0\0009\0\1\0009\0\5\0)\2\0\0'\3\6\0'\4\a\0B\0\4\1X\0/Ä6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\b\0X\0\bÄ6\0\0\0009\0\1\0009\0\5\0)\2\0\0'\3\6\0'\4\t\0B\0\4\1X\0\31Ä6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\n\0X\0\bÄ6\0\0\0009\0\1\0009\0\5\0)\2\0\0'\3\6\0'\4\a\0B\0\4\1X\0\15Ä6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\v\0X\0\aÄ6\0\0\0009\0\1\0009\0\5\0)\2\0\0'\3\6\0'\4\f\0B\0\4\1K\0\1\0\b#%s\nshell\ago\v/*%s*/\6c\t//%s\18commentstring\24nvim_buf_set_option\bcpp\rfiletype\24nvim_buf_get_option\bapi\bvim‡\1\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\2B\0\2\1K\0\1\0\thook\0\1\0\a\30comment_chunk_text_object\aic\21operator_mapping\agc\17line_mapping\bgcc\20create_mappings\2\"comment_empty_trim_whitespace\2\18comment_empty\2\19marker_padding\2\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\19enable_profile\14impatient\frequire\0", "config", "impatient.nvim")
time([[Config for impatient.nvim]], false)
-- Config for: telescope-live-grep-args.nvim
time([[Config for telescope-live-grep-args.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "telescope-live-grep-args.nvim")
time([[Config for telescope-live-grep-args.nvim]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\nÎ\2\0\0\4\0\v\0\0196\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0006\1\0\0009\1\a\0019\1\b\1'\3\t\0B\1\2\2'\2\n\0&\1\2\1=\1\6\0K\0\1\0\r/session\ncache\fstdpath\afn dashboard_session_directory\1\0\a\23change_colorscheme\fSPC f c\17find_history\fSPC f h\14find_word\fSPC f q\17last_session\fSPC s l\15book_marks\fSPC f m\rnew_file\fSPC c f\14find_file\fSPC f f\30dashboard_custom_shortcut\1\2\0\0\26üê¨ Have A Good Day!\28dashboard_custom_footer\6g\bvim\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nÏ\3\0\0\t\0\22\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\3=\3\v\0025\3\f\0005\4\r\0=\4\14\0036\4\15\0009\4\16\4'\6\17\0'\a\18\0'\b\19\0B\4\4\2=\4\20\3=\3\21\2B\0\2\1K\0\1\0\14fast_wrap\fpattern\5\b%s+\25 [%'%\"%)%>%]%)%}%,] \tgsub\vstring\nchars\1\6\0\0\6{\6[\6(\6\"\6'\1\0\6\16check_comma\2\tkeys\31qwertyuiopzxcvbnmasdfghjkl\fend_key\6$\14highlight\vSearch\19highlight_grey\fComment\bmap\n<M-e>\14ts_config\15javascript\1\2\0\0\20template_string\blua\1\0\1\tjava\2\1\2\0\0\vstring\21disable_filetype\1\0\1\rcheck_ts\2\1\a\0\0\20TelescopePrompt\18spectre_panel\rdap-repl\vguihua\16guihua_rust\15clap_input\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: telescope-media-files.nvim
time([[Config for telescope-media-files.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "telescope-media-files.nvim")
time([[Config for telescope-media-files.nvim]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\n˚\6\0\0\b\0\25\0A5\0\0\0006\1\1\0009\1\2\0019\1\3\1\18\2\1\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\a\0'\6\b\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\t\0'\6\n\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\v\0'\6\f\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\r\0'\6\14\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\15\0'\6\16\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\17\0'\6\18\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\19\0'\6\20\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\21\0'\6\22\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\23\0'\6\24\0\18\a\0\0B\2\5\1K\0\1\0'<cmd>lua require'dapui'.eval()<cr>\6K)<cmd>lua require'dap'.step_out()<cr>\t<F8>*<cmd>lua require'dap'.step_into()<cr>\t<F7>*<cmd>lua require'dap'.step_over()<cr>\t<F6>)<cmd>lua require'dap'.continue()<cr>\t<F5>*<cmd>lua require'dap'.terminate()<cr>\t<F4>M<cmd>lua require\"configure.debug.config._dap_util\".reload_continue()<CR>\n<F10>)<cmd>lua require'dap'.run_last()<cr>\t<F9>L<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>\15<leader>dBu<cmd>lua require'dap'.toggle_breakpoint(); require'configure.debug.config._dap_util'.store_breakpoints(true)<cr>\15<leader>db\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: nvim-lightbulb
time([[Config for nvim-lightbulb]], true)
try_loadstring("\27LJ\2\n˛\2\0\0\5\0\20\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\5\0=\3\6\0025\3\a\0004\4\0\0=\4\b\3=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0005\4\15\0=\4\16\0035\4\17\0=\4\18\3=\3\19\2B\0\2\1K\0\1\0\fautocmd\vevents\1\3\0\0\15CursorHold\16CursorHoldI\fpattern\1\2\0\0\6*\1\0\1\fenabled\1\16status_text\1\0\3\fenabled\1\ttext\tüí°\21text_unavailable\5\17virtual_text\1\0\3\fenabled\1\fhl_mode\freplace\ttext\tüí°\nfloat\rwin_opts\1\0\2\fenabled\1\ttext\tüí°\tsign\1\0\2\fenabled\2\rpriority\3\n\vignore\1\0\0\nsetup\19nvim-lightbulb\frequire\0", "config", "nvim-lightbulb")
time([[Config for nvim-lightbulb]], false)
-- Config for: telescope-project.nvim
time([[Config for telescope-project.nvim]], true)
try_loadstring("\27LJ\2\nò\1\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2=:lua require'telescope'.extensions.project.project{}<CR>\n<C-p>\6n\20nvim_set_keymap\bapi\bvim\0", "config", "telescope-project.nvim")
time([[Config for telescope-project.nvim]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\n¶\3\0\0\b\0\19\0#6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\0044\5\0\0=\5\t\0044\5\0\0=\5\n\0046\5\v\0009\5\f\0059\5\r\5'\a\14\0B\5\2\2=\5\15\4B\2\2\0016\2\0\0006\4\1\0'\5\16\0B\2\3\3\14\0\2\0X\4\1ÄK\0\1\0009\4\17\3'\6\18\0B\4\2\1K\0\1\0\rprojects\19load_extension\14telescope\rdatapath\tdata\fstdpath\afn\bvim\17exclude_dirs\15ignore_lsp\rpatterns\1\n\0\0\t.git\nbuild\v_darcs\b.hg\t.bzr\t.svn\rMakefile\19CMakeLists.txt\17package.json\22detection_methods\1\2\0\0\fpattern\1\0\3\16show_hidden\2\16manual_mode\1\17silent_chdir\2\nsetup\17project_nvim\frequire\npcall\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\n\\\0\0\3\1\5\0\t-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0009\0\3\0'\2\4\0B\0\2\1K\0\1\0\1¿\25DapVirtualTextEnable\17nvim_command\bapi\bvim\topenu\0\0\3\2\6\0\r-\0\0\0009\0\0\0009\0\1\0B\0\1\1-\0\1\0009\0\1\0B\0\1\0016\0\2\0009\0\3\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0\0¿\1¿\26DapVirtualTextDisable\17nvim_command\bapi\bvim\nclose\trepl\21\0\0\2\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\2¿\21\0\0\2\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\3¿\21\0\0\2\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\3¿\21\0\0\2\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\3¿€\4\1\0\t\0 \0:6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0003\3\4\0009\4\5\0009\4\6\0049\4\a\0043\5\t\0=\5\b\0049\4\5\0009\4\n\0049\4\v\0043\5\f\0=\5\b\0049\4\5\0009\4\n\0049\4\r\0043\5\14\0=\5\b\0049\4\5\0009\4\n\0049\4\15\0043\5\16\0=\5\b\0049\4\17\0009\4\18\4'\5\20\0=\5\19\0049\4\21\0'\6\22\0B\4\2\0016\4\0\0'\6\23\0B\4\2\0029\4\24\4+\6\0\0005\a\26\0005\b\25\0=\b\27\aB\4\3\0016\4\0\0'\6\28\0B\4\2\0016\4\0\0'\6\29\0B\4\2\0016\4\0\0'\6\30\0B\4\2\0016\4\0\0'\6\31\0B\4\2\0012\0\0ÄK\0\1\0$configure.debug.config._dap_lua'configure.debug.config._dap_python#configure.debug.config._dap_go$configure.debug.config._dap_cpp\vcppdbg\1\0\0\1\2\0\0\bcpp\18load_launchjs\19dap.ext.vscode\nDEBUG\18set_log_level\01730vsplit new\21terminal_win_cmd\rfallback\rdefaults\0\15disconnect\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\0\0\ndapui\bdap\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: DAPInstall.nvim
time([[Config for DAPInstall.nvim]], true)
try_loadstring("\27LJ\2\n∑\4\0\0\a\0\21\0(6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\b\0006\4\3\0009\4\4\0049\4\5\4'\6\6\0B\4\2\2'\5\a\0&\4\5\4=\4\t\3B\1\2\0015\1\v\0005\2\n\0=\2\f\0015\2\r\0=\2\14\0015\2\15\0=\2\16\0016\2\3\0009\2\4\0029\2\17\2'\4\18\0009\5\f\1B\2\3\0016\2\3\0009\2\4\0029\2\17\2'\4\19\0009\5\16\1B\2\3\0016\2\3\0009\2\4\0029\2\17\2'\4\20\0009\5\14\1B\2\3\1K\0\1\0\26DapBreakpointRejected\15DapStopped\18DapBreakpoint\16sign_define\fstopped\1\0\4\ttext\v‚≠êÔ∏è\nnumhl\"LspDiagnosticsSignInformation\vtexthl\"LspDiagnosticsSignInformation\vlinehl\28DiagnosticUnderlineInfo\rrejected\1\0\4\ttext\b‚èß\nnumhl\5\vtexthl\27LspDiagnosticsSignHint\vlinehl\5\nerror\1\0\0\1\0\4\ttext\tüõë\nnumhl\5\vtexthl\28LspDiagnosticsSignError\vlinehl\5\22installation_path\1\0\0\17/dapinstall/\tdata\fstdpath\afn\bvim\nsetup\16dap-install\frequire\0", "config", "DAPInstall.nvim")
time([[Config for DAPInstall.nvim]], false)
-- Config for: telescope-ui-select.nvim
time([[Config for telescope-ui-select.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "telescope-ui-select.nvim")
time([[Config for telescope-ui-select.nvim]], false)
-- Config for: filetype.nvim
time([[Config for filetype.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "filetype.nvim")
time([[Config for filetype.nvim]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: telescope-vim-bookmarks.nvim
time([[Config for telescope-vim-bookmarks.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "telescope-vim-bookmarks.nvim")
time([[Config for telescope-vim-bookmarks.nvim]], false)
-- Config for: FixCursorHold.nvim
time([[Config for FixCursorHold.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "FixCursorHold.nvim")
time([[Config for FixCursorHold.nvim]], false)
-- Config for: cmp_luasnip
time([[Config for cmp_luasnip]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp_luasnip")
time([[Config for cmp_luasnip]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nW\0\0\a\1\4\0\n6\0\0\0009\0\1\0009\0\2\0-\2\0\0)\3\0\0)\4ˇˇ+\5\1\0005\6\3\0B\0\6\1K\0\1\0\2\0\1\2\0\0\vBINARY\23nvim_buf_set_lines\bapi\bvim§\1\1\1\a\4\b\0\0236\1\0\0009\1\1\1\18\5\0\0009\3\2\0B\3\2\2:\3\1\3'\4\3\0B\1\3\2:\1\1\1\a\1\4\0X\2\aÄ-\2\0\0009\2\5\2-\4\1\0-\5\2\0-\6\3\0B\2\4\1X\2\4Ä6\2\0\0009\2\6\0023\4\a\0B\2\2\1K\0\1\0\1\0\0Ä\1¿\2¿\0\rschedule\27buffer_previewer_maker\ttext\6/\vresult\nsplit\bvimß\1\1\3\b\2\n\0\0216\3\0\0009\3\1\0039\3\2\3\18\5\0\0B\3\2\2\18\0\3\0-\3\0\0\18\5\3\0009\3\3\0035\6\4\0005\a\5\0>\0\3\a=\a\6\0063\a\a\0=\a\b\6B\3\3\2\18\5\3\0009\3\t\3B\3\2\0012\0\0ÄK\0\1\0\4¿\3¿\tsync\fon_exit\0\targs\1\3\0\0\16--mime-type\a-b\1\0\1\fcommand\tfile\bnew\vexpand\afn\bvim‹\19\1\0\14\0y\1‰\0016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\4\5\0B\2\2\0012\0ÿÄ6\2\1\0'\4\6\0B\2\2\0026\3\1\0'\5\a\0B\3\2\0026\4\1\0'\6\b\0B\4\2\0023\5\t\0009\6\n\0015\bO\0005\t\v\0=\5\f\t5\n\16\0005\v\r\0005\f\14\0=\f\15\v=\v\17\n=\n\18\t5\n>\0005\v\20\0009\f\19\2=\f\21\v9\f\22\2=\f\23\v9\f\24\2=\f\25\v9\f\26\2=\f\27\v9\f\28\2=\f\29\v9\f\24\2=\f\30\v9\f\26\2=\f\31\v9\f \2=\f!\v9\f\"\2=\f#\v9\f$\2=\f%\v9\f&\2=\f'\v9\f(\2=\f)\v9\f*\2=\f+\v9\f,\2=\f-\v9\f.\2=\f/\v9\f0\0029\r1\2 \f\r\f=\f2\v9\f0\0029\r3\2 \f\r\f=\f4\v9\f5\0029\r6\2 \f\r\f=\f7\v9\f8\0029\r6\2 \f\r\f=\f9\v9\f:\2=\f;\v9\f<\2=\f=\v=\v?\n5\v@\0009\f\28\2=\fA\v9\f \2=\f!\v9\f\"\2=\f#\v9\f$\2=\f%\v9\f&\2=\f'\v9\f0\0029\r1\2 \f\r\f=\f2\v9\f0\0029\r3\2 \f\r\f=\f4\v9\f5\0029\r6\2 \f\r\f=\f7\v9\f8\0029\r6\2 \f\r\f=\f9\v9\f\24\2=\fB\v9\f\26\2=\fC\v9\fD\2=\fE\v9\fF\2=\fG\v9\fH\2=\fI\v9\f\24\2=\f\30\v9\f\26\2=\f\31\v9\fD\2=\fJ\v9\fH\2=\fK\v9\f(\2=\f)\v9\f*\2=\f+\v9\f,\2=\f-\v9\f.\2=\f/\v9\f<\2=\fL\v=\vM\n=\nN\t=\tP\b5\tT\0005\nQ\0005\vR\0=\vS\n=\nU\t=\tV\b5\tZ\0005\nX\0005\vW\0=\vY\n=\n[\t5\n]\0005\v\\\0=\v^\n=\n_\t5\n`\0=\na\t4\n\3\0006\v\1\0'\rb\0B\v\2\0029\vc\v4\r\0\0B\v\2\0?\v\0\0=\nd\t5\ne\0=\nf\t=\tg\bB\6\2\0016\6\3\0009\6h\0069\6i\6'\bM\0'\tj\0'\nk\0005\vl\0B\6\5\0016\6\3\0009\6h\0069\6i\6'\bM\0'\tm\0'\nn\0005\vo\0B\6\5\0016\6\3\0009\6h\0069\6i\6'\bM\0'\tp\0'\nq\0005\vr\0B\6\5\0016\6\3\0009\6h\0069\6i\6'\bM\0'\ts\0'\nt\0005\vu\0B\6\5\0019\6v\1'\bw\0B\6\2\0019\6v\1'\bf\0B\6\2\0019\6v\1'\ba\0B\6\2\0019\6v\1'\bd\0B\6\2\0019\6v\1'\bx\0B\6\2\0019\6v\1'\b[\0B\6\2\0019\6v\1'\b_\0B\6\2\0012\0\0ÄK\0\1\0K\0\1\0\18vim_bookmarks\bdap\19load_extension\1\0\2\fnoremap\2\vsilent\2:<Cmd>lua require('telescope.builtin').help_tags()<CR>\15<leader>fh\1\0\2\fnoremap\2\vsilent\0028<Cmd>lua require('telescope.builtin').buffers()<CR>\15<leader>fb\1\0\2\fnoremap\2\vsilent\2:<Cmd>lua require('telescope.builtin').live_grep()<CR>\15<leader>fg\1\0\2\fnoremap\2\vsilent\2;<Cmd>lua require('telescope.builtin').find_files()<CR>\15<leader>ff\20nvim_set_keymap\bapi\15extensions\19live_grep_args\1\0\1\17auto_quoting\1\14ui-select\17get_dropdown\21telescope.themes\bfzf\1\0\4\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\16media_files\14filetypes\1\0\1\rfind_cmd\arg\1\5\0\0\bpng\twebp\bjpg\tjpeg\fproject\1\0\0\14base_dirs\1\0\2\17hidden_files\2\ntheme\rdropdown\1\2\0\0\v~/pro/\fpickers\15find_files\1\0\0\17find_command\1\4\0\0\tfind\n-type\6f\1\0\2\ntheme\rdropdown\14previewer\1\rdefaults\1\0\0\rmappings\6n\6?\6G\agg\6L\19move_to_bottom\6M\19move_to_middle\6H\16move_to_top\6k\6j\n<esc>\1\0\0\6i\1\0\0\n<C-_>\14which_key\n<C-l>\17complete_tag\n<M-q>\28send_selected_to_qflist\n<C-q>\16open_qflist\19send_to_qflist\f<S-Tab>\26move_selection_better\n<Tab>\25move_selection_worse\21toggle_selection\15<PageDown>\27results_scrolling_down\r<PageUp>\25results_scrolling_up\n<C-d>\27preview_scrolling_down\n<C-u>\25preview_scrolling_up\n<C-t>\15select_tab\n<C-v>\20select_vertical\n<C-x>\22select_horizontal\t<CR>\19select_default\t<Up>\v<Down>\n<C-c>\nclose\n<C-k>\28move_selection_previous\n<C-j>\24move_selection_next\n<C-p>\23cycle_history_prev\n<C-n>\1\0\0\23cycle_history_next\17path_display\fshorten\1\0\0\fexclude\1\3\0\0\3\1\3ˇˇˇˇ\15\1\0\1\blen\3\3\27buffer_previewer_maker\1\0\2\20selection_caret\tÔÅ§ \18prompt_prefix\tÔë´ \nsetup\0\16plenary.job\25telescope.previewers\22telescope.actions\25telescope not found!\vnotify\bvim\14telescope\frequire\npcall\3ÄÄ¿ô\4\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n⁄\a\0\0\5\0\24\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\2B\0\2\1K\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\brow\3\0\bcol\3\1\vborder\vsingle\nstyle\fminimal\rrelative\vcursor\28current_line_blame_opts\1\0\4\14virt_text\2\22ignore_whitespace\1\ndelay\3Ë\a\18virt_text_pos\beol\17watch_gitdir\1\0\2\17follow_files\2\rinterval\3Ë\a\nsigns\1\0\n\24attach_to_untracked\2\nnumhl\1\14word_diff\1\vlinehl\1\18sign_priority\3\6!current_line_blame_formatter1<author>, <author_time:%Y-%m-%d> - <summary>\20max_file_length\3¿∏\2\20update_debounce\3d\23current_line_blame\1\15signcolumn\2\17changedelete\1\0\4\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ttext\6~\ahl\19GitSignsChange\14topdelete\1\0\4\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ttext\b‚Äæ\ahl\19GitSignsDelete\vdelete\1\0\4\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ttext\6_\ahl\19GitSignsDelete\vchange\1\0\4\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ttext\b‚îÇ\ahl\19GitSignsChange\badd\1\0\0\1\0\4\vlinehl\18GitSignsAddLn\nnumhl\18GitSignsAddNr\ttext\b‚îÇ\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\næ\1\0\0\a\0\v\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0005\2\t\0004\3\3\0006\4\4\0009\4\5\0049\4\6\4'\6\a\0B\4\2\2'\5\b\0&\4\5\4>\4\1\3=\3\n\2B\0\2\1K\0\1\0\npaths\1\0\0\17/my-snippets\vconfig\fstdpath\afn\bvim\tload\14lazy_load luasnip.loaders.from_vscode\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: markdown-preview.nvim
time([[Config for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "markdown-preview.nvim")
time([[Config for markdown-preview.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nﬂ\3\0\0\15\0\20\0>6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0026\1\5\0006\3\6\0B\1\2\4H\4)Ä5\6\b\0006\a\0\0'\t\3\0B\a\2\0029\a\a\a=\a\a\0066\a\0\0'\t\3\0B\a\2\0029\a\t\a=\a\t\0065\a\n\0=\a\v\0066\a\f\0006\t\0\0'\n\r\0\18\v\5\0&\n\v\nB\a\3\3\15\0\a\0X\t\aÄ6\t\14\0009\t\15\t'\v\16\0\18\f\b\0\18\r\6\0B\t\4\2\18\6\t\0008\t\5\0009\t\2\t\18\v\6\0B\t\2\0019\t\17\0009\t\2\t5\v\19\0006\f\0\0'\14\18\0B\f\2\0029\f\a\f=\f\a\vB\t\2\1F\4\3\3R\4’K\0\1\0\1\0\0\vaerial\nvimls\nforce\20tbl_deep_extend\bvim\"configure.nvim_cmp.language._\npcall\nflags\1\0\1\26debounce_text_changes\3ñ\1\17capabilities\1\0\0\14on_attach\fSERVERS\npairs\14lspconfig!configure.nvim_cmp._handlers\nsetup\23nvim-lsp-installer\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
