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
    config = { "\27LJ\2\2∑\4\0\0\5\0\21\0(6\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\b\0006\3\3\0009\3\4\0039\3\5\3'\4\6\0B\3\2\2'\4\a\0&\3\4\3=\3\t\2B\1\2\0015\1\v\0005\2\n\0=\2\f\0015\2\r\0=\2\14\0015\2\15\0=\2\16\0016\2\3\0009\2\4\0029\2\17\2'\3\18\0009\4\f\1B\2\3\0016\2\3\0009\2\4\0029\2\17\2'\3\19\0009\4\16\1B\2\3\0016\2\3\0009\2\4\0029\2\17\2'\3\20\0009\4\14\1B\2\3\1K\0\1\0\26DapBreakpointRejected\15DapStopped\18DapBreakpoint\16sign_define\fstopped\1\0\4\vtexthl\"LspDiagnosticsSignInformation\ttext\v‚≠êÔ∏è\vlinehl\28DiagnosticUnderlineInfo\nnumhl\"LspDiagnosticsSignInformation\rrejected\1\0\4\vtexthl\27LspDiagnosticsSignHint\ttext\b‚èß\vlinehl\5\nnumhl\5\nerror\1\0\0\1\0\4\vtexthl\28LspDiagnosticsSignError\ttext\tüõë\vlinehl\5\nnumhl\5\22installation_path\1\0\0\17/dapinstall/\tdata\fstdpath\afn\bvim\nsetup\16dap-install\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/DAPInstall.nvim",
    url = "https://github.com/ravenxrz/DAPInstall.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufdelete.nvim"] = {
    config = { "\27LJ\2\2]\0\0\3\0\6\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0006\1\0\0009\1\1\0019\1\4\1'\2\5\0&\1\2\1=\1\4\0K\0\1\0\aL0\15cinoptions\bcpp\rfiletype\abo\bvimà\1\0\0\5\0\n\0\0186\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\1\6\0'\2\a\0006\3\0\0009\3\4\0039\3\b\3'\4\t\0B\3\2\2'\4\a\0&\1\4\1B\0\2\1K\0\1\0\6%\vexpand\6\"\18open -a skim \rjobstart\afn\bpdf\rfiletype\abo\bvim.\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\15syntax off\bcmd\bvim0\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\17iabbrev $ $$\bcmd\bvim¡\3\1\0\a\0 \0(6\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\3\5\0B\2\2\0012\0\28Ä9\2\6\0015\3\30\0005\4\b\0005\5\a\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\0045\5\15\0003\6\14\0=\6\16\0053\6\17\0=\6\18\5=\5\19\0045\5\21\0003\6\20\0=\6\22\5=\5\23\0045\5\25\0003\6\24\0=\6\26\5=\5\27\0045\5\28\0=\5\29\4=\4\31\3B\2\2\1K\0\1\0K\0\1\0\14overrides\1\0\0\fshebang\1\0\1\tdash\ash\21function_complex\21*.math_notes/%w+\1\0\0\0\21function_literal\rBrewfile\1\0\0\0\24function_extensions\bpdf\0\bcpp\1\0\0\0\fcomplex\1\0\1\17.*git/config\14gitconfig\fliteral\1\0\1\17MyBackupFile\blua\15extensions\1\0\0\1\0\1\apn\vpotion\nsetup\24filetype not found!\vnotify\bvim\rfiletype\frequire\npcall\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-cmdline/after/plugin/cmp_cmdline.lua" },
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
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
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-spell/after/plugin/cmp-spell.lua" },
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["cmp-tabnine"] = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-tabnine/after/plugin/cmp-tabnine.lua" },
    config = { "\27LJ\2\2‘\1\0\0\5\0\5\0\n6\0\0\0'\1\1\0B\0\2\2\18\2\0\0009\1\2\0005\3\3\0004\4\0\0=\4\4\3B\1\3\1K\0\1\0\23ignored_file_types\1\0\6\20max_num_results\3\20\27run_on_every_keystroke\2\14max_lines\3Ë\a\24snippet_placeholder\a..\29show_prediction_strength\1\tsort\2\nsetup\23cmp_tabnine.config\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  cmp_luasnip = {
    after_files = { "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\2Î\2\0\0\3\0\v\0\0196\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0006\1\0\0009\1\a\0019\1\b\1'\2\t\0B\1\2\2'\2\n\0&\1\2\1=\1\6\0K\0\1\0\r/session\ncache\fstdpath\afn dashboard_session_directory\1\0\a\rnew_file\fSPC c f\23change_colorscheme\fSPC f c\15book_marks\fSPC f m\17last_session\fSPC s l\17find_history\fSPC f h\14find_word\fSPC f q\14find_file\fSPC f f\30dashboard_custom_shortcut\1\2\0\0\26üê¨ Have A Good Day!\28dashboard_custom_footer\6g\bvim\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["filetype.nvim"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["friendly-snippets"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\2⁄\a\0\0\4\0\24\0\0276\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\14\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2=\2\15\0015\2\16\0=\2\17\0015\2\18\0=\2\19\0015\2\20\0=\2\21\0015\2\22\0=\2\23\1B\0\2\1K\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\brow\3\0\rrelative\vcursor\nstyle\fminimal\bcol\3\1\vborder\vsingle\28current_line_blame_opts\1\0\4\14virt_text\2\ndelay\3Ë\a\18virt_text_pos\beol\22ignore_whitespace\1\17watch_gitdir\1\0\2\rinterval\3Ë\a\17follow_files\2\nsigns\1\0\n\20update_debounce\3d\24attach_to_untracked\2!current_line_blame_formatter1<author>, <author_time:%Y-%m-%d> - <summary>\vlinehl\1\nnumhl\1\18sign_priority\3\6\15signcolumn\2\23current_line_blame\1\20max_file_length\3¿∏\2\14word_diff\1\17changedelete\1\0\4\ttext\6~\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\ttext\b‚Äæ\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\6_\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\ttext\b‚îÇ\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\b‚îÇ\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    config = { "\27LJ\2\2@\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\19enable_profile\14impatient\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\2á\a\0\0\4\0\23\00036\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0006\2\3\0009\2\4\0025\3\6\0=\3\5\0026\2\3\0009\2\4\0025\3\b\0=\3\a\0026\2\3\0009\2\4\2)\3\1\0=\3\t\0026\2\3\0009\2\4\2'\3\v\0=\3\n\0026\2\3\0009\2\4\2+\3\1\0=\3\f\0026\2\3\0009\2\4\2+\3\2\0=\3\r\0026\2\3\0009\2\4\2+\3\2\0=\3\14\0026\2\3\0009\2\4\2+\3\2\0=\3\15\0026\2\3\0009\2\4\0025\3\17\0=\3\16\0026\2\3\0009\2\18\2'\3\20\0=\3\19\0029\2\21\0015\3\22\0B\2\2\1K\0\1\0\1\0\1\25show_current_context\2\nsetup\n99999\16colorcolumn\awo\1\21\0\0\nclass\vreturn\rfunction\vmethod\b^if\v^while\16jsx_element\t^for\f^object\v^table\nblock\14arguments\17if_statement\16else_clause\16jsx_element\29jsx_self_closing_element\18try_statement\17catch_clause\21import_statement\19operation_type&indent_blankline_context_patterns*indent_blankline_show_current_context$indent_blankline_use_treesitter-indent_blankline_show_first_indent_level4indent_blankline_show_trailing_blankline_indent\b‚ñè\26indent_blankline_char\23indentLine_enabled\1\b\0\0\thelp\rstartify\14dashboard\vpacker\17neogitstatus\rNvimTree\fTrouble&indent_blankline_filetype_exclude\1\3\0\0\rterminal\vnofile%indent_blankline_buftype_exclude\6g\bvim\21indent_blankline\frequire\npcall\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\2ø\3\0\0\4\0\f\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0006\2\4\0009\2\5\0029\2\6\2'\3\a\0B\2\2\2'\3\b\0&\2\3\2=\2\t\0015\2\n\0=\2\v\1B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\frounded\rlog_path\22lsp_signature.log\ncache\fstdpath\afn\bvim\1\0\16\14doc_lines\3\n\26floating_window_off_y\3\1\ndebug\2\17shadow_guibg\nBlack\18time_interval\0032\16hint_enable\2\14max_width\3P\15max_height\3\f\20floating_window\2\ffix_pos\2\26floating_window_off_x\3\1\17hi_parameter LspSignatureActiveParameter\16hint_scheme\vString\16shadow_bled\3$\19always_trigger\1\tbing\2\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2G\0\0\2\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\1\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvim#\0\1\4\0\2\0\5'\1\0\0\18\2\0\0'\3\1\0&\1\3\1L\1\2\0\b --\b-- ´\1\0\0\6\0\b\0\0196\0\0\0009\0\1\0009\0\2\0'\1\3\0B\0\2\0026\1\0\0009\1\1\0019\1\2\1'\2\4\0B\1\2\0025\2\5\0#\3\1\0006\4\6\0009\4\a\4\21\5\2\0\"\5\5\3B\4\2\0028\5\4\2L\5\2\0\tceil\tmath\1\n\0\0\v‚ñà‚ñà\v‚ñá‚ñá\v‚ñÜ‚ñÜ\v‚ñÖ‚ñÖ\v‚ñÑ‚ñÑ\v‚ñÉ‚ñÉ\v‚ñÇ‚ñÇ\v‚ñÅ‚ñÅ\6 \6$\6.\tline\afn\bvim[\0\0\4\0\5\0\t'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\2\0\0'\3\4\0B\1\3\2&\0\1\0L\0\2\0\15shiftwidth\24nvim_buf_get_option\bapi\bvim\rspaces: Ö\n\1\0\16\0:\0a6\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\3\5\0B\2\2\0012\0UÄ3\2\6\0005\3\a\0005\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0005\5\15\0=\5\r\0045\5\17\0005\6\16\0=\6\18\0055\6\19\0=\6\20\0055\6\21\0=\6\22\5=\5\23\4=\2\24\0045\5\25\0003\6\26\0=\6\27\0055\6\28\0005\a\29\0=\a\r\0065\a\30\0005\b\31\0005\t \0003\n!\0003\v\"\0009\f#\0015\r+\0005\14$\0005\15%\0=\15&\0145\15'\0=\15(\0145\15)\0=\15*\14=\14,\r5\14-\0004\15\3\0>\b\1\15>\3\2\15=\15.\0144\15\3\0>\5\1\15=\15/\0144\15\3\0>\6\1\15=\0150\0145\0151\0>\4\1\15>\v\2\15>\a\4\15=\0152\0144\15\3\0>\t\1\15=\0153\0144\15\3\0>\n\1\15=\0154\14=\14\v\r5\0145\0004\15\0\0=\15.\0144\15\0\0=\15/\0144\15\3\0>\6\1\15=\0150\0145\0156\0=\0152\0144\15\0\0=\0153\0144\15\0\0=\0154\14=\0147\r4\14\0\0=\0148\r4\14\0\0=\0149\rB\f\2\1K\0\1\0K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\0\0\14lualine_z\14lualine_y\14lualine_x\1\6\0\0\0\0\rencoding\0\15fileformat\14lualine_c\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\23disabled_filetypes\1\5\0\0\nalpha\14dashboard\rNvimTree\fOutline\23section_separators\1\0\2\tleft\b‚Üê\nright\b‚Üí\25component_separators\1\0\2\tleft\b‚Üê\nright\b‚Üí\1\0\3\25always_divide_middle\2\ntheme\tauto\18icons_enabled\2\nsetup\0\0\1\2\1\0\rlocation\fpadding\3\0\1\2\2\0\vbranch\18icons_enabled\2\ticon\b·õ¶\1\2\1\0\rfiletype\18icons_enabled\1\1\0\3\rreadonly\b[-]\rmodified\b[+]\funnamed\14[No Name]\1\2\3\0\rfilename\20shorting_target\3(\16file_status\2\tpath\3\1\bfmt\0\1\2\0\0\tmode\tcond\15diff_color\fremoved\1\0\1\afg\f#ec5f67\rmodified\1\0\1\afg\f#ecbe7b\nadded\1\0\0\1\0\1\afg\f#98be65\1\0\3\nadded\a+ \rmodified\b÷é \fremoved\t‚ê° \1\2\1\0\tdiff\fcolored\2\fsymbols\1\0\2\twarn\f‚ö†Ô∏è \nerror\t‚õî \rsections\1\3\0\0\nerror\twarn\fsources\1\2\0\0\20nvim_diagnostic\1\2\3\0\16diagnostics\19always_visible\2\21update_in_insert\1\fcolored\1\0\23lualine not found!\vnotify\bvim\flualine\frequire\npcall\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  material = {
    config = { "\27LJ\2\2È\3\0\0\3\0\15\0\0196\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\0015\2\f\0=\2\r\0014\2\0\0=\2\14\1B\0\2\1K\0\1\0\22custom_highlights\fdisable\1\0\5\16term_colors\1\14eob_lines\1\15background\1\fborders\1\19colored_cursor\1\20high_visibility\1\0\2\vdarker\1\flighter\1\23contrast_filetypes\1\4\0\0\rterminal\vpacker\aqf\fitalics\1\0\5\rcomments\1\14variables\1\14functions\1\rkeywords\1\fstrings\1\rcontrast\1\0\2\18async_loading\2\18lualine_style\fdefault\1\0\a\17line_numbers\1\rsidebars\1\16cursor_line\1\15popup_menu\1\16sign_column\1\24non_current_windows\1\21floating_windows\1\nsetup\rmaterial\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/material",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["mathjax-support-for-mkdp"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/mathjax-support-for-mkdp",
    url = "https://github.com/iamcco/mathjax-support-for-mkdp"
  },
  ["md-img-paste.vim"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/md-img-paste.vim",
    url = "https://github.com/ferrine/md-img-paste.vim"
  },
  ["neovim-session-manager"] = {
    config = { "\27LJ\2\2ª\3\0\0\a\0\18\0\0286\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\1\3\0015\2\n\0\18\4\0\0009\3\4\0006\5\5\0009\5\6\0059\5\a\5'\6\b\0B\5\2\2'\6\t\0B\3\4\2=\3\v\0026\3\0\0'\4\f\0B\3\2\0029\3\r\0039\3\14\3=\3\15\0025\3\16\0=\3\17\2B\1\2\1K\0\1\0\30autosave_ignore_filetypes\1\2\0\0\14gitcommit\18autoload_mode\16LastSession\17AutoloadMode\27session_manager.config\17sessions_dir\1\0\6\31autosave_ignore_not_normal\2\20max_path_length\3P\26autosave_last_session\2\19colon_replacer\a++\29autosave_only_in_session\1\18path_replacer\a__\rsessions\tdata\fstdpath\afn\bvim\bnew\nsetup\20session_manager\17plenary.path\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["nerd-fonts"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nerd-fonts",
    url = "https://github.com/ryanoasis/nerd-fonts"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2Ï\3\0\0\a\0\22\0\0266\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\a\0005\3\6\0=\3\b\0025\3\t\0=\3\n\2=\2\v\0015\2\f\0005\3\r\0=\3\14\0026\3\15\0009\3\16\3'\4\17\0'\5\18\0'\6\19\0B\3\4\2=\3\20\2=\2\21\1B\0\2\1K\0\1\0\14fast_wrap\fpattern\5\b%s+\25 [%'%\"%)%>%]%)%}%,] \tgsub\vstring\nchars\1\6\0\0\6{\6[\6(\6\"\6'\1\0\6\fend_key\6$\14highlight\vSearch\bmap\n<M-e>\tkeys\31qwertyuiopzxcvbnmasdfghjkl\19highlight_grey\fComment\16check_comma\2\14ts_config\15javascript\1\2\0\0\20template_string\blua\1\0\1\tjava\2\1\2\0\0\vstring\21disable_filetype\1\0\1\rcheck_ts\2\1\a\0\0\20TelescopePrompt\18spectre_panel\rdap-repl\vguihua\16guihua_rust\15clap_input\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2j\0\2\6\2\a\0\0146\2\1\0009\2\2\2'\3\3\0-\4\0\0009\5\0\0018\4\5\4B\2\3\2=\2\0\1-\2\1\0009\3\5\0009\3\6\0038\2\3\2=\2\4\1L\1\2\0\3¿\5¿\tname\vsource\tmenu\a%s\vformat\vstring\tkindC\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire•\16\1\0\v\0O\0ß\0016\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\1\0X\2\1Ä2\0üÄ6\2\1\0'\3\3\0B\2\2\0029\2\4\2B\2\1\0016\2\1\0'\3\5\0B\2\2\0025\3\6\0005\4\a\0005\5\b\0005\6\r\0005\a\v\0009\b\t\0029\b\n\b=\b\f\a=\a\14\0065\a\15\0=\a\16\0065\a\18\0005\b\17\0=\b\19\a5\b\20\0=\b\21\a3\b\22\0=\b\23\a=\a\24\0065\a\26\0003\b\25\0=\b\27\a=\a\28\0065\a \0009\b\29\0029\b\30\b9\b\31\bB\b\1\2=\b!\a9\b\29\0029\b\30\b9\b\31\bB\b\1\2=\b\"\a=\a\30\0065\a%\0009\b#\0029\b$\bB\b\1\2=\b&\a9\b#\0029\b'\bB\b\1\2=\b(\a9\b#\0029\b)\b)\t¸ˇB\b\2\2=\b*\a9\b#\0029\b)\b)\t\4\0B\b\2\2=\b+\a9\b#\0029\b,\bB\b\1\2=\b-\a9\b#\0029\b.\bB\b\1\2=\b/\a=\a#\0069\a\29\0029\a0\a4\b\f\0005\t1\0>\t\1\b5\t2\0>\t\2\b5\t3\0>\t\3\b5\t4\0>\t\4\b5\t5\0>\t\5\b5\t6\0>\t\6\b5\t7\0>\t\a\b5\t8\0>\t\b\b5\t9\0>\t\t\b5\t:\0>\t\n\b5\t;\0>\t\v\bB\a\2\2=\a0\0067\6<\0009\6=\0029\6>\0065\a?\0005\bB\0004\t\3\0005\n@\0>\n\1\t5\nA\0>\n\2\t=\t0\bB\6\3\0019\6=\0029\6C\6'\aD\0005\bF\0009\t#\0029\tE\t9\tC\tB\t\1\2=\t#\b4\t\3\0005\nG\0>\n\1\t=\t0\bB\6\3\0019\6=\0029\6C\6'\aH\0005\bI\0009\t#\0029\tE\t9\tC\tB\t\1\2=\t#\b4\t\3\0005\nJ\0>\n\1\t=\t0\bB\6\3\0019\6=\0029\6C\6'\aK\0005\bL\0009\t#\0029\tE\t9\tC\tB\t\1\2=\t#\b4\t\3\0005\nM\0>\n\1\t5\nN\0>\n\2\t=\t0\bB\6\3\0019\6=\0026\a<\0B\6\2\0012\0\0ÄK\0\1\0K\0\1\0\1\0\1\tname\tpath\1\0\1\tname\fcmdline\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\6?\1\0\1\tname\vbuffer\1\0\0\vpreset\6/\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\3\0\0\rmarkdown\thelp\rfiletype\nsetup\15cmp_config\1\0\1\tname\vcrates\1\0\1\tname\15treesitter\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\nspell\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lua\1\0\1\tname\16cmp_tabnine\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\n<C-e>\nabort\n<C-p>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\vexpand\1\0\0\0\15formatting\vformat\0\15duplicates\1\0\4\tpath\3\1\fluasnip\3\1\rnvim_lsp\3\1\vbuffer\3\1\vfields\1\0\1\23duplicates_default\3\1\1\4\0\0\tkind\tabbr\tmenu\17experimental\1\0\2\15ghost_text\2\16native_menu\1\17confirm_opts\1\0\1\fenabled\2\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\1\0\a\nspell\f[Spell]\rnvim_lua\n[LUA]\rnvim_lsp\n{LSP}\vbuffer\r[Buffer]\tpath\v[Path]\16cmp_tabnine\14[TabNine]\fluasnip\15[Snippets]\1\0\n\rnvim_lsp\n(LSP)\nvsnip\14(Snippet)\16cmp_tabnine\14(Tabnine)\15treesitter\t(TS)\tpath\v(Path)\nemoji\f(Emoji)\nspell\f(Spell)\vbuffer\r(Buffer)\tcalc\v(Calc)\fluasnip\14(Snippet)\1\0\25\tText\aT \vMethod\aM \rOperator\t‚ò© \14Interface\t‚èß \nColor\t‚õØ \vModule\t‚®ä \nEvent\aE \rFunction\t‚Ñò \16Constructor\t‚öô \15EnumMember\t‚öú \rProperty\t‚ò™ \rConstant\t‚õ≠ \vStruct\t‰∑¶ \rVariable\t‚öù \fSnippet\t‚ò´ \vFolder\tüìÅ\tUnit\t‚Ñ´ \nValue\t·ç≤ \18TypeParameter\tÔûÉ \tFile\t‚õ∂ \nClass\t‚ùÇ \nField\t‚Ω• \tEnum\t‚öö \fKeyword\t‚ò£ \14Reference\t‚ò¨ \bcmp\14lazy_load luasnip.loaders.from_vscode\fluasnip\frequire\npcall\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer"] = {
    config = { "\27LJ\2\2o\0\0\3\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0015\2\6\0=\2\a\1B\0\2\1K\0\1\0\thtml\1\0\1\nnames\1\bcss\1\0\1\vrgb_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
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
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-dap",
    url = "https://github.com/ravenxrz/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\2\4\0\0\5\0\"\0-6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\a\0005\3\6\0=\3\b\2=\2\t\0016\2\n\0009\2\v\0029\2\f\2'\3\r\0B\2\2\2=\2\14\0015\2\19\0004\3\5\0005\4\15\0>\4\1\0035\4\16\0>\4\2\0035\4\17\0>\4\3\0035\4\18\0>\4\4\3=\3\20\2=\2\21\0015\2\23\0005\3\22\0=\3\20\2=\2\24\0015\2\25\0005\3\27\0005\4\26\0=\4\28\3=\3\t\2=\2\29\0015\2\30\0=\2\31\0015\2 \0=\2!\1B\0\2\1K\0\1\0\vrender\1\0\0\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\1\vborder\vsingle\ttray\1\0\2\tsize\3\n\rposition\vbottom\1\2\0\0\trepl\fsidebar\relements\1\0\2\tsize\3(\rposition\tleft\1\0\2\aid\fwatches\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\vstacks\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\16breakpoints\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\vscopes\tsize\4\0ÄÄ¿˛\3\17expand_lines\rnvim-0.7\bhas\afn\bvim\rmappings\vexpand\1\0\5\topen\6o\trepl\6r\vtoggle\6t\tedit\6e\vremove\6d\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\14collapsed\b‚ñ∏\rexpanded\b‚ñæ\nsetup\ndapui\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    config = { "\27LJ\2\2„\1\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\t\fenabled\2\15all_frames\1\18virt_text_pos\beol\15virt_lines\1\14commented\1\29highlight_new_as_changed\2 highlight_changed_variables\2\21show_stop_reason\2\21enabled_commands\2\nsetup\26nvim-dap-virtual-text\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2´\3\0\0\r\0\17\00056\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\0\0'\1\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\1\4\0B\0\2\0026\1\5\0006\2\6\0B\1\2\4H\4 Ä5\6\b\0006\a\0\0'\b\3\0B\a\2\0029\a\a\a=\a\a\0066\a\0\0'\b\3\0B\a\2\0029\a\t\a=\a\t\0065\a\n\0=\a\v\0066\a\f\0006\b\0\0'\t\r\0\18\n\5\0&\t\n\tB\a\3\3\15\0\a\0X\t\aÄ6\t\14\0009\t\15\t'\n\16\0\18\v\b\0\18\f\6\0B\t\4\2\18\6\t\0008\t\5\0009\t\2\t\18\n\6\0B\t\2\1F\4\3\3R\4ﬁ\127K\0\1\0\nforce\20tbl_deep_extend\bvim\"configure.nvim_cmp.language._\npcall\nflags\1\0\1\26debounce_text_changes\3ñ\1\17capabilities\1\0\0\14on_attach\fSERVERS\npairs\14lspconfig!configure.nvim_cmp._handlers\nsetup\23nvim-lsp-installer\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\2≤\25\0\0\n\0k\0ß\0014\0)\0005\1\1\0005\2\0\0=\2\2\1>\1\1\0005\1\3\0>\1\2\0005\1\5\0005\2\4\0=\2\2\1>\1\3\0005\1\a\0005\2\6\0=\2\2\1>\1\4\0005\1\b\0>\1\5\0005\1\t\0>\1\6\0005\1\n\0>\1\a\0005\1\v\0>\1\b\0005\1\f\0>\1\t\0005\1\r\0>\1\n\0005\1\14\0>\1\v\0005\1\15\0>\1\f\0005\1\16\0>\1\r\0005\1\17\0>\1\14\0005\1\18\0>\1\15\0005\1\19\0>\1\16\0005\1\20\0>\1\17\0005\1\21\0>\1\18\0005\1\22\0>\1\19\0005\1\23\0>\1\20\0005\1\24\0>\1\21\0005\1\25\0>\1\22\0005\1\26\0>\1\23\0005\1\27\0>\1\24\0005\1\28\0>\1\25\0005\1\29\0>\1\26\0005\1\30\0>\1\27\0005\1\31\0>\1\28\0005\1 \0>\1\29\0005\1!\0>\1\30\0005\1\"\0>\1\31\0005\1#\0>\1 \0005\1$\0>\1!\0005\1%\0>\1\"\0005\1&\0>\1#\0005\1'\0>\1$\0005\1(\0>\1%\0005\1)\0>\1&\0005\1*\0>\1'\0005\1+\0>\1(\0006\1,\0009\1-\0015\2/\0005\0030\0=\0031\0025\0032\0=\0033\2=\2.\0016\0014\0006\0025\0'\0036\0B\1\3\3\14\0\1\0X\3\5Ä6\3,\0009\0037\3'\0048\0B\3\2\1K\0\1\0009\0039\0025\4:\0005\5;\0005\6<\0=\0=\6=\6>\5=\5?\0045\5C\0005\6@\0005\aA\0=\aB\6=\6D\0055\6E\0=\6B\5=\5F\0045\5G\0=\5H\0045\5I\0004\6\0\0=\6J\5=\5K\0044\5\0\0=\5L\0045\5M\0004\6\0\0=\6N\5=\5O\0045\5P\0005\6Q\0=\6B\5=\5R\0045\5S\0004\6\0\0=\6T\0054\6\0\0=\6U\5=\5V\0045\5W\0=\0051\0045\5X\0005\6Y\0=\6Z\0055\6[\0005\a\\\0005\b^\0005\t]\0=\t_\b5\t`\0=\ta\b=\bU\a=\ab\6=\6c\5=\5d\0045\5e\0=\5f\0045\5g\0005\6h\0=\6i\5=\5j\4B\3\2\1K\0\1\0\blog\ntypes\1\0\6\ball\1\vconfig\1\bgit\1\16diagnostics\1\fprofile\1\15copy_paste\1\1\0\2\rtruncate\1\venable\1\ntrash\1\0\2\bcmd\ntrash\20require_confirm\2\factions\14open_file\18window_picker\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\venable\2\1\0\2\18resize_window\1\17quit_on_open\1\15change_dir\1\0\3\23restrict_above_cwd\1\vglobal\1\venable\2\1\0\1\25use_system_clipboard\2\1\0\3\vignore\2\ftimeout\3ê\3\venable\2\ffilters\fexclude\vcustom\1\0\1\rdotfiles\1\16diagnostics\1\0\4\tinfo\b‚öõ\thint\b‚ö°\nerror\b‚õî\fwarning\v‚ö†Ô∏è\1\0\2\17show_on_dirs\2\venable\2\16system_open\targs\1\0\1\bcmd\5\23ignore_ft_on_setup\24update_focused_file\16ignore_list\1\0\2\15update_cwd\2\venable\2\23hijack_directories\1\0\2\14auto_open\2\venable\2\rrenderer\1\0\2\18git_placement\vbefore\18webdev_colors\2\19indent_markers\1\0\0\nicons\1\0\3\tedge\t‚îÇ \tnone\a  \vcorner\t‚îî \1\0\1\venable\1\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\b\vnumber\1\tside\tleft\21hide_root_folder\1\vheight\3\30\19relativenumber\1 preserve_window_proportions\1\15signcolumn\byes\nwidth\3\30\1\0\n\16open_on_tab\1\fsort_by\tname\18open_on_setup\1\25auto_reload_on_write\2\18disable_netrw\1'hijack_unnamed_buffer_when_opening\1\18hijack_cursor\1\23open_on_setup_file\1\17hijack_netrw\2\27ignore_buffer_on_setup\1\nsetup\25nvim-tree not found!\vnotify\14nvim-tree\frequire\npcall\vfolder\1\0\5\fdefault\tüìÇ\15empty_open\b‚àÖ\topen\b‚úº\nempty\tüìÅ\fsymlink\b‚òØ\bgit\1\0\a\runstaged\b‚úó\fdeleted\b‚ùÇ\14untracked\b‚òÖ\fignored\b‚óå\runmerged\b‚õõ\frenamed\b‚ûú\vstaged\b‚úì\1\0\2\fdefault\b‚öõ\fsymlink\b‚òØ\20nvim_tree_icons\6g\bvim\1\0\2\vaction\21run_file_command\bkey\6.\1\0\2\vaction\21toggle_file_info\bkey\n<C-k>\1\0\2\vaction\16search_node\bkey\6S\1\0\2\vaction\17collapse_all\bkey\6W\1\0\2\vaction\16toggle_help\bkey\ag?\1\0\2\vaction\nclose\bkey\6q\1\0\2\vaction\22clear_live_filter\bkey\6F\1\0\2\vaction\16live_filter\bkey\6f\1\0\2\vaction\16system_open\bkey\6s\1\0\2\vaction\vdir_up\bkey\6-\1\0\2\vaction\18next_git_item\bkey\a]c\1\0\2\vaction\18prev_git_item\bkey\a[c\1\0\2\vaction\23copy_absolute_path\bkey\agy\1\0\2\vaction\14copy_path\bkey\6Y\1\0\2\vaction\14copy_name\bkey\6y\1\0\2\vaction\npaste\bkey\6p\1\0\2\vaction\tcopy\bkey\6c\1\0\2\vaction\bcut\bkey\6x\1\0\2\vaction\16full_rename\bkey\n<C-r>\1\0\2\vaction\vrename\bkey\6r\1\0\2\vaction\ntrash\bkey\6D\1\0\2\vaction\vremove\bkey\6d\1\0\2\vaction\vcreate\bkey\6a\1\0\2\vaction\frefresh\bkey\6R\1\0\2\vaction\20toggle_dotfiles\bkey\6H\1\0\2\vaction\23toggle_git_ignored\bkey\6I\1\0\2\vaction\17last_sibling\bkey\6J\1\0\2\vaction\18first_sibling\bkey\6K\1\0\2\vaction\fpreview\bkey\n<Tab>\1\0\2\vaction\15close_node\bkey\t<BS>\1\0\2\vaction\16parent_node\bkey\6P\1\0\2\vaction\17next_sibling\bkey\6>\1\0\2\vaction\17prev_sibling\bkey\6<\1\0\2\vaction\vtabnew\bkey\n<C-t>\1\0\2\vaction\nsplit\bkey\n<C-x>\1\0\2\vaction\vvsplit\bkey\n<C-v>\1\0\1\vaction\acd\1\3\0\0\19<2-RightMouse>\n<C-]>\1\0\1\vaction\19edit_no_picker\1\2\0\0\6O\1\0\2\vaction\18edit_in_place\bkey\n<C-e>\bkey\1\0\1\vaction\tedit\1\4\0\0\t<CR>\6o\18<2-LeftMouse>\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2Ô\2\0\0\4\0\14\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0005\3\t\0=\3\n\2=\2\v\0015\2\f\0=\2\r\1B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\19init_selection\bgnn\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\1\17sync_install\2\1\5\0\0\6c\blua\trust\bcpp\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-context",
    url = "https://github.com/romgrk/nvim-treesitter-context"
  },
  ["nvim-treesitter-textobjects"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\2¶\3\0\0\6\0\19\0#6\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\3\4\0005\4\5\0=\4\6\0035\4\a\0=\4\b\0034\4\0\0=\4\t\0034\4\0\0=\4\n\0036\4\v\0009\4\f\0049\4\r\4'\5\14\0B\4\2\2=\4\15\3B\2\2\0016\2\0\0006\3\1\0'\4\16\0B\2\3\3\14\0\2\0X\4\1ÄK\0\1\0009\4\17\3'\5\18\0B\4\2\1K\0\1\0\rprojects\19load_extension\14telescope\rdatapath\tdata\fstdpath\afn\bvim\17exclude_dirs\15ignore_lsp\rpatterns\1\n\0\0\t.git\nbuild\v_darcs\b.hg\t.bzr\t.svn\rMakefile\19CMakeLists.txt\17package.json\22detection_methods\1\2\0\0\fpattern\1\0\3\16manual_mode\1\17silent_chdir\2\16show_hidden\2\nsetup\17project_nvim\frequire\npcall\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  sniprun = {
    config = { "\27LJ\2\2ÿ\5\0\0\5\0\28\0!6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0004\2\0\0=\2\4\0014\2\0\0=\2\5\0015\2\t\0005\3\a\0005\4\6\0=\4\b\3=\3\n\2=\2\v\0015\2\f\0=\2\r\0015\2\14\0=\2\15\0015\2\16\0=\2\17\0015\2\19\0005\3\18\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\2=\2\27\1B\0\2\1K\0\1\0\18snipruncolors\26SniprunFloatingWinErr\1\0\2\fctermfg\fDarkRed\afg\f#881515\26SniprunVirtualTextErr\1\0\4\fctermbg\fDarkRed\abg\f#881515\afg\f#000000\vcterfg\nBlack\25SniprunFloatingWinOk\1\0\2\fctermfg\tCyan\afg\f#66eeff\25SniprunVirtualTextOk\1\0\0\1\0\4\fctermbg\tCyan\abg\f#66eeff\afg\f#000000\vcterfg\nBlack\19show_no_output\1\3\0\0\fClassic\20TempFloatWindow\20display_options\1\0\2\19terminal_width\3-\25notification_timeout\3\5\fdisplay\1\3\0\0\fClassic\18VirtualTextOk\24interpreter_options\17GFM_original\1\0\0\21use_on_filetypes\1\0\0\1\2\0\0\20markdown.pandoc\16repl_enable\26selected_interpreters\1\0\3\20inline_messages\3\0\fborders\vsingle\21live_mode_toggle\aon\nsetup\fsniprun\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/sniprun",
    url = "https://github.com/michaelb/sniprun"
  },
  ["telescope-fzf-native.nvim"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
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
    config = { "\27LJ\2\2W\0\0\6\1\4\0\n6\0\0\0009\0\1\0009\0\2\0-\1\0\0)\2\0\0)\3ˇˇ+\4\1\0005\5\3\0B\0\6\1K\0\1\0\2\0\1\2\0\0\vBINARY\23nvim_buf_set_lines\bapi\bvim§\1\1\1\6\4\b\0\0236\1\0\0009\1\1\1\18\3\0\0009\2\2\0B\2\2\2:\2\1\2'\3\3\0B\1\3\2:\1\1\1\a\1\4\0X\2\aÄ-\2\0\0009\2\5\2-\3\1\0-\4\2\0-\5\3\0B\2\4\1X\2\4Ä6\2\0\0009\2\6\0023\3\a\0B\2\2\1K\0\1\0\1\0\0Ä\1¿\2¿\0\rschedule\27buffer_previewer_maker\ttext\6/\vresult\nsplit\bvimß\1\1\3\a\2\n\0\0216\3\0\0009\3\1\0039\3\2\3\18\4\0\0B\3\2\2\18\0\3\0-\3\0\0\18\4\3\0009\3\3\0035\5\4\0005\6\5\0>\0\3\6=\6\6\0053\6\a\0=\6\b\5B\3\3\2\18\4\3\0009\3\t\3B\3\2\0012\0\0ÄK\0\1\0\4¿\3¿\tsync\fon_exit\0\targs\1\3\0\0\16--mime-type\a-b\1\0\1\fcommand\tfile\bnew\vexpand\afn\bvim˜\r\1\0\r\0`\1Æ\0016\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\3\5\0B\2\2\0012\0¢Ä6\2\1\0'\3\6\0B\2\2\0026\3\1\0'\4\a\0B\3\2\0026\4\1\0'\5\b\0B\4\2\0023\5\t\0009\6\n\0015\aO\0005\b\v\0=\5\f\b5\t\16\0005\n\r\0005\v\14\0=\v\15\n=\n\17\t=\t\18\b5\t>\0005\n\20\0009\v\19\2=\v\21\n9\v\22\2=\v\23\n9\v\24\2=\v\25\n9\v\26\2=\v\27\n9\v\28\2=\v\29\n9\v\24\2=\v\30\n9\v\26\2=\v\31\n9\v \2=\v!\n9\v\"\2=\v#\n9\v$\2=\v%\n9\v&\2=\v'\n9\v(\2=\v)\n9\v*\2=\v+\n9\v,\2=\v-\n9\v.\2=\v/\n9\v0\0029\f1\2 \v\f\v=\v2\n9\v0\0029\f3\2 \v\f\v=\v4\n9\v5\0029\f6\2 \v\f\v=\v7\n9\v8\0029\f6\2 \v\f\v=\v9\n9\v:\2=\v;\n9\v<\2=\v=\n=\n?\t5\n@\0009\v\28\2=\vA\n9\v \2=\v!\n9\v\"\2=\v#\n9\v$\2=\v%\n9\v&\2=\v'\n9\v0\0029\f1\2 \v\f\v=\v2\n9\v0\0029\f3\2 \v\f\v=\v4\n9\v5\0029\f6\2 \v\f\v=\v7\n9\v8\0029\f6\2 \v\f\v=\v9\n9\v\24\2=\vB\n9\v\26\2=\vC\n9\vD\2=\vE\n9\vF\2=\vG\n9\vH\2=\vI\n9\v\24\2=\v\30\n9\v\26\2=\v\31\n9\vD\2=\vJ\n9\vH\2=\vK\n9\v(\2=\v)\n9\v*\2=\v+\n9\v,\2=\v-\n9\v.\2=\v/\n9\v<\2=\vL\n=\nM\t=\tN\b=\bP\a5\bT\0005\tQ\0005\nR\0=\nS\t=\tU\b=\bV\a5\bX\0005\tW\0=\tY\b4\t\3\0006\n\1\0'\vZ\0B\n\2\0029\n[\n4\v\0\0B\n\2\0?\n\0\0=\t\\\b=\b]\aB\6\2\0019\6^\1'\aY\0B\6\2\0019\6^\1'\a\\\0B\6\2\0019\6^\1'\a_\0B\6\2\0012\0\0ÄK\0\1\0K\0\1\0\18vim_bookmarks\19load_extension\15extensions\14ui-select\17get_dropdown\21telescope.themes\bfzf\1\0\0\1\0\4\28override_generic_sorter\2\14case_mode\15smart_case\25override_file_sorter\2\nfuzzy\2\fpickers\15find_files\1\0\0\17find_command\1\2\0\0\afd\1\0\2\14previewer\1\ntheme\rdropdown\rdefaults\1\0\0\rmappings\6n\6?\6G\agg\6L\19move_to_bottom\6M\19move_to_middle\6H\16move_to_top\6k\6j\n<esc>\1\0\0\6i\1\0\0\n<C-_>\14which_key\n<C-l>\17complete_tag\n<M-q>\28send_selected_to_qflist\n<C-q>\16open_qflist\19send_to_qflist\f<S-Tab>\26move_selection_better\n<Tab>\25move_selection_worse\21toggle_selection\15<PageDown>\27results_scrolling_down\r<PageUp>\25results_scrolling_up\n<C-d>\27preview_scrolling_down\n<C-u>\25preview_scrolling_up\n<C-t>\15select_tab\n<C-v>\20select_vertical\n<C-x>\22select_horizontal\t<CR>\19select_default\t<Up>\v<Down>\n<C-c>\nclose\n<C-k>\28move_selection_previous\n<C-j>\24move_selection_next\n<C-p>\23cycle_history_prev\n<C-n>\1\0\0\23cycle_history_next\17path_display\fshorten\1\0\0\fexclude\1\3\0\0\3\1\3ˇˇˇˇ\15\1\0\1\blen\3\3\27buffer_previewer_maker\1\0\2\18prompt_prefix\tÔë´ \20selection_caret\tÔÅ§ \nsetup\0\16plenary.job\25telescope.previewers\22telescope.actions\25telescope not found!\vnotify\bvim\14telescope\frequire\npcall\3ÄÄ¿ô\4\0" },
    loaded = true,
    needs_bufread = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\2Í\1\0\0\a\0\v\0\0295\0\0\0006\1\1\0009\1\2\0019\1\3\1)\2\0\0'\3\4\0'\4\5\0'\5\6\0\18\6\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\2\0\0'\3\4\0'\4\a\0'\5\b\0\18\6\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\2\0\0'\3\4\0'\4\t\0'\5\n\0\18\6\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\21<C-\\><C-n><C-W>h\n<C-h>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2$\0\0\2\1\1\0\5-\0\0\0\18\1\0\0009\0\0\0B\0\2\1K\0\1\0\3¿\vtoggle$\0\0\2\1\1\0\5-\0\0\0\18\1\0\0009\0\0\0B\0\2\1K\0\1\0\4¿\vtoggle$\0\0\2\1\1\0\5-\0\0\0\18\1\0\0009\0\0\0B\0\2\1K\0\1\0\5¿\vtoggle$\0\0\2\1\1\0\5-\0\0\0\18\1\0\0009\0\0\0B\0\2\1K\0\1\0\6¿\vtoggle$\0\0\2\1\1\0\5-\0\0\0\18\1\0\0009\0\0\0B\0\2\1K\0\1\0\a¿\vtoggle€\6\1\0\n\0$\0@6\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0008Ä9\2\3\0015\3\4\0004\4\0\0=\4\5\0036\4\6\0009\4\a\0049\4\b\4=\4\b\0035\4\t\0005\5\n\0=\5\v\4=\4\f\3B\2\2\0016\2\r\0003\3\15\0=\3\14\0026\2\6\0009\2\16\2'\3\17\0B\2\2\0016\2\1\0'\3\18\0B\2\2\0029\2\19\2\18\4\2\0009\3\20\0025\5\21\0B\3\3\0023\4\22\0007\4\23\0\18\5\2\0009\4\20\0025\6\24\0B\4\3\0023\5\25\0007\5\26\0\18\6\2\0009\5\20\0025\a\27\0B\5\3\0023\6\28\0007\6\29\0\18\a\2\0009\6\20\0025\b\30\0B\6\3\0023\a\31\0007\a \0\18\b\2\0009\a\20\0025\t!\0B\a\3\0023\b\"\0007\b#\0002\0\0ÄK\0\1\0K\0\1\0\19_PYTHON_TOGGLE\0\1\0\2\bcmd\vpython\vhidden\2\17_HTOP_TOGGLE\0\1\0\2\bcmd\thtop\vhidden\2\17_NCDU_TOGGLE\0\1\0\2\bcmd\tncdu\vhidden\2\17_NODE_TOGGLE\0\1\0\2\bcmd\tnode\vhidden\2\20_LAZYGIT_TOGGLE\0\1\0\2\bcmd\flazygit\vhidden\2\bnew\rTerminal\24toggleterm.terminal:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\2\rwinblend\3\3\vborder\vcurved\nshell\6o\bvim\20shade_filetypes\1\0\n\20shade_terminals\2\17open_mapping\n<c-\\>\19shading_factor\3\3\17persist_size\2\14direction\nfloat\18close_on_exit\2\20start_in_insert\2\20insert_mappings\2\tsize\3\20\17hide_numbers\1\nsetup\15toggleterm\frequire\npcall\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-bookmarks"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/vim-bookmarks",
    url = "https://github.com/MattesGroeger/vim-bookmarks"
  },
  ["vim-colorschemes"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/vim-colorschemes",
    url = "https://github.com/flazz/vim-colorschemes"
  },
  ["vim-repeat"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-surround"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
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
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)
time([[packadd for indent-blankline.nvim]], true)
vim.cmd [[packadd indent-blankline.nvim]]
time([[packadd for indent-blankline.nvim]], false)
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
try_loadstring("\27LJ\2\2˜\1\0\1\3\0\f\0!6\1\0\0009\1\1\1'\2\2\0B\1\2\0016\1\0\0009\1\3\0019\1\4\1\a\1\5\0X\1\5Ä6\1\0\0009\1\3\1'\2\a\0=\2\6\1X\1\14Ä6\1\0\0009\1\3\0019\1\4\1\a\1\b\0X\1\5Ä6\1\0\0009\1\3\1'\2\t\0=\2\6\1X\1\4Ä6\1\0\0009\1\3\1'\2\n\0=\2\6\0016\1\0\0009\1\1\1'\2\v\0B\1\2\1K\0\1\0\25colorscheme material\vdarker\14palenight\vmidium\rLighter \19material_style\nlight\ntheme\6g\21packadd material\bcmd\bvim\0", "setup", "material")
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
-- Setup for: vim-surround
time([[Setup for vim-surround]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "vim-surround")
time([[Setup for vim-surround]], false)
time([[packadd for vim-surround]], true)
vim.cmd [[packadd vim-surround]]
time([[packadd for vim-surround]], false)
-- Setup for: nvim-autopairs
time([[Setup for nvim-autopairs]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-autopairs")
time([[Setup for nvim-autopairs]], false)
time([[packadd for nvim-autopairs]], true)
vim.cmd [[packadd nvim-autopairs]]
time([[packadd for nvim-autopairs]], false)
-- Setup for: vim-colorschemes
time([[Setup for vim-colorschemes]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "vim-colorschemes")
time([[Setup for vim-colorschemes]], false)
time([[packadd for vim-colorschemes]], true)
vim.cmd [[packadd vim-colorschemes]]
time([[packadd for vim-colorschemes]], false)
-- Setup for: telescope-rg.nvim
time([[Setup for telescope-rg.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "telescope-rg.nvim")
time([[Setup for telescope-rg.nvim]], false)
time([[packadd for telescope-rg.nvim]], true)
vim.cmd [[packadd telescope-rg.nvim]]
time([[packadd for telescope-rg.nvim]], false)
-- Setup for: cmp-nvim-lua
time([[Setup for cmp-nvim-lua]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-nvim-lua")
time([[Setup for cmp-nvim-lua]], false)
time([[packadd for cmp-nvim-lua]], true)
vim.cmd [[packadd cmp-nvim-lua]]
time([[packadd for cmp-nvim-lua]], false)
-- Setup for: toggleterm.nvim
time([[Setup for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "toggleterm.nvim")
time([[Setup for toggleterm.nvim]], false)
time([[packadd for toggleterm.nvim]], true)
vim.cmd [[packadd toggleterm.nvim]]
time([[packadd for toggleterm.nvim]], false)
-- Setup for: nvim-colorizer
time([[Setup for nvim-colorizer]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-colorizer")
time([[Setup for nvim-colorizer]], false)
time([[packadd for nvim-colorizer]], true)
vim.cmd [[packadd nvim-colorizer]]
time([[packadd for nvim-colorizer]], false)
-- Setup for: gitsigns.nvim
time([[Setup for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "gitsigns.nvim")
time([[Setup for gitsigns.nvim]], false)
time([[packadd for gitsigns.nvim]], true)
vim.cmd [[packadd gitsigns.nvim]]
time([[packadd for gitsigns.nvim]], false)
-- Setup for: filetype.nvim
time([[Setup for filetype.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "filetype.nvim")
time([[Setup for filetype.nvim]], false)
time([[packadd for filetype.nvim]], true)
vim.cmd [[packadd filetype.nvim]]
time([[packadd for filetype.nvim]], false)
-- Setup for: bufferline.nvim
time([[Setup for bufferline.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "bufferline.nvim")
time([[Setup for bufferline.nvim]], false)
time([[packadd for bufferline.nvim]], true)
vim.cmd [[packadd bufferline.nvim]]
time([[packadd for bufferline.nvim]], false)
-- Setup for: telescope-ui-select.nvim
time([[Setup for telescope-ui-select.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "telescope-ui-select.nvim")
time([[Setup for telescope-ui-select.nvim]], false)
time([[packadd for telescope-ui-select.nvim]], true)
vim.cmd [[packadd telescope-ui-select.nvim]]
time([[packadd for telescope-ui-select.nvim]], false)
-- Setup for: nvim-dap
time([[Setup for nvim-dap]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-dap")
time([[Setup for nvim-dap]], false)
time([[packadd for nvim-dap]], true)
vim.cmd [[packadd nvim-dap]]
time([[packadd for nvim-dap]], false)
-- Setup for: LuaSnip
time([[Setup for LuaSnip]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "LuaSnip")
time([[Setup for LuaSnip]], false)
time([[packadd for LuaSnip]], true)
vim.cmd [[packadd LuaSnip]]
time([[packadd for LuaSnip]], false)
-- Setup for: nvim-dap-virtual-text
time([[Setup for nvim-dap-virtual-text]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-dap-virtual-text")
time([[Setup for nvim-dap-virtual-text]], false)
time([[packadd for nvim-dap-virtual-text]], true)
vim.cmd [[packadd nvim-dap-virtual-text]]
time([[packadd for nvim-dap-virtual-text]], false)
-- Setup for: which-key.nvim
time([[Setup for which-key.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "which-key.nvim")
time([[Setup for which-key.nvim]], false)
time([[packadd for which-key.nvim]], true)
vim.cmd [[packadd which-key.nvim]]
time([[packadd for which-key.nvim]], false)
-- Setup for: nvim-treesitter-context
time([[Setup for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-treesitter-context")
time([[Setup for nvim-treesitter-context]], false)
time([[packadd for nvim-treesitter-context]], true)
vim.cmd [[packadd nvim-treesitter-context]]
time([[packadd for nvim-treesitter-context]], false)
-- Setup for: vim-bookmarks
time([[Setup for vim-bookmarks]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "vim-bookmarks")
time([[Setup for vim-bookmarks]], false)
time([[packadd for vim-bookmarks]], true)
vim.cmd [[packadd vim-bookmarks]]
time([[packadd for vim-bookmarks]], false)
-- Setup for: diffview.nvim
time([[Setup for diffview.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "diffview.nvim")
time([[Setup for diffview.nvim]], false)
time([[packadd for diffview.nvim]], true)
vim.cmd [[packadd diffview.nvim]]
time([[packadd for diffview.nvim]], false)
-- Setup for: cmp-cmdline
time([[Setup for cmp-cmdline]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-cmdline")
time([[Setup for cmp-cmdline]], false)
time([[packadd for cmp-cmdline]], true)
vim.cmd [[packadd cmp-cmdline]]
time([[packadd for cmp-cmdline]], false)
-- Setup for: md-img-paste.vim
time([[Setup for md-img-paste.vim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "md-img-paste.vim")
time([[Setup for md-img-paste.vim]], false)
time([[packadd for md-img-paste.vim]], true)
vim.cmd [[packadd md-img-paste.vim]]
time([[packadd for md-img-paste.vim]], false)
-- Setup for: telescope-fzf-native.nvim
time([[Setup for telescope-fzf-native.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "telescope-fzf-native.nvim")
time([[Setup for telescope-fzf-native.nvim]], false)
time([[packadd for telescope-fzf-native.nvim]], true)
vim.cmd [[packadd telescope-fzf-native.nvim]]
time([[packadd for telescope-fzf-native.nvim]], false)
-- Setup for: lualine.nvim
time([[Setup for lualine.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "lualine.nvim")
time([[Setup for lualine.nvim]], false)
time([[packadd for lualine.nvim]], true)
vim.cmd [[packadd lualine.nvim]]
time([[packadd for lualine.nvim]], false)
-- Setup for: bufdelete.nvim
time([[Setup for bufdelete.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "bufdelete.nvim")
time([[Setup for bufdelete.nvim]], false)
time([[packadd for bufdelete.nvim]], true)
vim.cmd [[packadd bufdelete.nvim]]
time([[packadd for bufdelete.nvim]], false)
-- Setup for: nvim-tree.lua
time([[Setup for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-tree.lua")
time([[Setup for nvim-tree.lua]], false)
time([[packadd for nvim-tree.lua]], true)
vim.cmd [[packadd nvim-tree.lua]]
time([[packadd for nvim-tree.lua]], false)
-- Setup for: nvim-treesitter-textobjects
time([[Setup for nvim-treesitter-textobjects]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-treesitter-textobjects")
time([[Setup for nvim-treesitter-textobjects]], false)
time([[packadd for nvim-treesitter-textobjects]], true)
vim.cmd [[packadd nvim-treesitter-textobjects]]
time([[packadd for nvim-treesitter-textobjects]], false)
-- Setup for: mathjax-support-for-mkdp
time([[Setup for mathjax-support-for-mkdp]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "mathjax-support-for-mkdp")
time([[Setup for mathjax-support-for-mkdp]], false)
time([[packadd for mathjax-support-for-mkdp]], true)
vim.cmd [[packadd mathjax-support-for-mkdp]]
time([[packadd for mathjax-support-for-mkdp]], false)
-- Setup for: project.nvim
time([[Setup for project.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "project.nvim")
time([[Setup for project.nvim]], false)
time([[packadd for project.nvim]], true)
vim.cmd [[packadd project.nvim]]
time([[packadd for project.nvim]], false)
-- Setup for: cmp-buffer
time([[Setup for cmp-buffer]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-buffer")
time([[Setup for cmp-buffer]], false)
time([[packadd for cmp-buffer]], true)
vim.cmd [[packadd cmp-buffer]]
time([[packadd for cmp-buffer]], false)
-- Setup for: nvim-dap-ui
time([[Setup for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-dap-ui")
time([[Setup for nvim-dap-ui]], false)
time([[packadd for nvim-dap-ui]], true)
vim.cmd [[packadd nvim-dap-ui]]
time([[packadd for nvim-dap-ui]], false)
-- Setup for: cmp-tabnine
time([[Setup for cmp-tabnine]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-tabnine")
time([[Setup for cmp-tabnine]], false)
time([[packadd for cmp-tabnine]], true)
vim.cmd [[packadd cmp-tabnine]]
time([[packadd for cmp-tabnine]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
time([[Setup for telescope.nvim]], false)
time([[packadd for telescope.nvim]], true)
vim.cmd [[packadd telescope.nvim]]
time([[packadd for telescope.nvim]], false)
-- Setup for: friendly-snippets
time([[Setup for friendly-snippets]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "friendly-snippets")
time([[Setup for friendly-snippets]], false)
time([[packadd for friendly-snippets]], true)
vim.cmd [[packadd friendly-snippets]]
time([[packadd for friendly-snippets]], false)
-- Setup for: cmp_luasnip
time([[Setup for cmp_luasnip]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp_luasnip")
time([[Setup for cmp_luasnip]], false)
time([[packadd for cmp_luasnip]], true)
vim.cmd [[packadd cmp_luasnip]]
time([[packadd for cmp_luasnip]], false)
-- Setup for: cmp-path
time([[Setup for cmp-path]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "cmp-path")
time([[Setup for cmp-path]], false)
time([[packadd for cmp-path]], true)
vim.cmd [[packadd cmp-path]]
time([[packadd for cmp-path]], false)
-- Setup for: dashboard-nvim
time([[Setup for dashboard-nvim]], true)
try_loadstring("\27LJ\2\2Ç\2\0\0\2\0\n\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0)\1\n\0=\1\b\0006\0\0\0009\0\1\0)\1F\0=\1\t\0K\0\1\0!dashboard_preview_file_width\"dashboard_preview_file_height\vlolcat\31dashboard_preview_pipeline\bcat\30dashboard_preview_command\14telescope dashboard_default_executive\6g\bvim\0", "setup", "dashboard-nvim")
time([[Setup for dashboard-nvim]], false)
time([[packadd for dashboard-nvim]], true)
vim.cmd [[packadd dashboard-nvim]]
time([[packadd for dashboard-nvim]], false)
-- Setup for: nerd-fonts
time([[Setup for nerd-fonts]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nerd-fonts")
time([[Setup for nerd-fonts]], false)
time([[packadd for nerd-fonts]], true)
vim.cmd [[packadd nerd-fonts]]
time([[packadd for nerd-fonts]], false)
-- Setup for: nvim-comment
time([[Setup for nvim-comment]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-comment")
time([[Setup for nvim-comment]], false)
time([[packadd for nvim-comment]], true)
vim.cmd [[packadd nvim-comment]]
time([[packadd for nvim-comment]], false)
-- Setup for: telescope-vim-bookmarks.nvim
time([[Setup for telescope-vim-bookmarks.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "telescope-vim-bookmarks.nvim")
time([[Setup for telescope-vim-bookmarks.nvim]], false)
time([[packadd for telescope-vim-bookmarks.nvim]], true)
vim.cmd [[packadd telescope-vim-bookmarks.nvim]]
time([[packadd for telescope-vim-bookmarks.nvim]], false)
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
time([[packadd for markdown-preview.nvim]], true)
vim.cmd [[packadd markdown-preview.nvim]]
time([[packadd for markdown-preview.nvim]], false)
-- Setup for: nvim-web-devicons
time([[Setup for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "nvim-web-devicons")
time([[Setup for nvim-web-devicons]], false)
time([[packadd for nvim-web-devicons]], true)
vim.cmd [[packadd nvim-web-devicons]]
time([[packadd for nvim-web-devicons]], false)
-- Setup for: sniprun
time([[Setup for sniprun]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "sniprun")
time([[Setup for sniprun]], false)
time([[packadd for sniprun]], true)
vim.cmd [[packadd sniprun]]
time([[packadd for sniprun]], false)
-- Setup for: DAPInstall.nvim
time([[Setup for DAPInstall.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "DAPInstall.nvim")
time([[Setup for DAPInstall.nvim]], false)
time([[packadd for DAPInstall.nvim]], true)
vim.cmd [[packadd DAPInstall.nvim]]
time([[packadd for DAPInstall.nvim]], false)
-- Setup for: vim-repeat
time([[Setup for vim-repeat]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "setup", "vim-repeat")
time([[Setup for vim-repeat]], false)
time([[packadd for vim-repeat]], true)
vim.cmd [[packadd vim-repeat]]
time([[packadd for vim-repeat]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\2ø\3\0\0\4\0\f\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0006\2\4\0009\2\5\0029\2\6\2'\3\a\0B\2\2\2'\3\b\0&\2\3\2=\2\t\0015\2\n\0=\2\v\1B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\frounded\rlog_path\22lsp_signature.log\ncache\fstdpath\afn\bvim\1\0\16\14doc_lines\3\n\26floating_window_off_y\3\1\ndebug\2\17shadow_guibg\nBlack\18time_interval\0032\16hint_enable\2\14max_width\3P\15max_height\3\f\20floating_window\2\ffix_pos\2\26floating_window_off_x\3\1\17hi_parameter LspSignatureActiveParameter\16hint_scheme\vString\16shadow_bled\3$\19always_trigger\1\tbing\2\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2Ô\2\0\0\4\0\14\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0005\3\t\0=\3\n\2=\2\v\0015\2\f\0=\2\r\1B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\19init_selection\bgnn\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\1\17sync_install\2\1\5\0\0\6c\blua\trust\bcpp\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\2á\a\0\0\4\0\23\00036\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0006\2\3\0009\2\4\0025\3\6\0=\3\5\0026\2\3\0009\2\4\0025\3\b\0=\3\a\0026\2\3\0009\2\4\2)\3\1\0=\3\t\0026\2\3\0009\2\4\2'\3\v\0=\3\n\0026\2\3\0009\2\4\2+\3\1\0=\3\f\0026\2\3\0009\2\4\2+\3\2\0=\3\r\0026\2\3\0009\2\4\2+\3\2\0=\3\14\0026\2\3\0009\2\4\2+\3\2\0=\3\15\0026\2\3\0009\2\4\0025\3\17\0=\3\16\0026\2\3\0009\2\18\2'\3\20\0=\3\19\0029\2\21\0015\3\22\0B\2\2\1K\0\1\0\1\0\1\25show_current_context\2\nsetup\n99999\16colorcolumn\awo\1\21\0\0\nclass\vreturn\rfunction\vmethod\b^if\v^while\16jsx_element\t^for\f^object\v^table\nblock\14arguments\17if_statement\16else_clause\16jsx_element\29jsx_self_closing_element\18try_statement\17catch_clause\21import_statement\19operation_type&indent_blankline_context_patterns*indent_blankline_show_current_context$indent_blankline_use_treesitter-indent_blankline_show_first_indent_level4indent_blankline_show_trailing_blankline_indent\b‚ñè\26indent_blankline_char\23indentLine_enabled\1\b\0\0\thelp\rstartify\14dashboard\vpacker\17neogitstatus\rNvimTree\fTrouble&indent_blankline_filetype_exclude\1\3\0\0\rterminal\vnofile%indent_blankline_buftype_exclude\6g\bvim\21indent_blankline\frequire\npcall\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: cmp-spell
time([[Config for cmp-spell]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-spell")
time([[Config for cmp-spell]], false)
-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
try_loadstring("\27LJ\2\2@\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\19enable_profile\14impatient\frequire\0", "config", "impatient.nvim")
time([[Config for impatient.nvim]], false)
-- Config for: material
time([[Config for material]], true)
try_loadstring("\27LJ\2\2È\3\0\0\3\0\15\0\0196\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\0015\2\f\0=\2\r\0014\2\0\0=\2\14\1B\0\2\1K\0\1\0\22custom_highlights\fdisable\1\0\5\16term_colors\1\14eob_lines\1\15background\1\fborders\1\19colored_cursor\1\20high_visibility\1\0\2\vdarker\1\flighter\1\23contrast_filetypes\1\4\0\0\rterminal\vpacker\aqf\fitalics\1\0\5\rcomments\1\14variables\1\14functions\1\rkeywords\1\fstrings\1\rcontrast\1\0\2\18async_loading\2\18lualine_style\fdefault\1\0\a\17line_numbers\1\rsidebars\1\16cursor_line\1\15popup_menu\1\16sign_column\1\24non_current_windows\1\21floating_windows\1\nsetup\rmaterial\frequire\0", "config", "material")
time([[Config for material]], false)
-- Config for: cmp-nvim-lsp
time([[Config for cmp-nvim-lsp]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-nvim-lsp")
time([[Config for cmp-nvim-lsp]], false)
-- Config for: neovim-session-manager
time([[Config for neovim-session-manager]], true)
try_loadstring("\27LJ\2\2ª\3\0\0\a\0\18\0\0286\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\1\3\0015\2\n\0\18\4\0\0009\3\4\0006\5\5\0009\5\6\0059\5\a\5'\6\b\0B\5\2\2'\6\t\0B\3\4\2=\3\v\0026\3\0\0'\4\f\0B\3\2\0029\3\r\0039\3\14\3=\3\15\0025\3\16\0=\3\17\2B\1\2\1K\0\1\0\30autosave_ignore_filetypes\1\2\0\0\14gitcommit\18autoload_mode\16LastSession\17AutoloadMode\27session_manager.config\17sessions_dir\1\0\6\31autosave_ignore_not_normal\2\20max_path_length\3P\26autosave_last_session\2\19colon_replacer\a++\29autosave_only_in_session\1\18path_replacer\a__\rsessions\tdata\fstdpath\afn\bvim\bnew\nsetup\20session_manager\17plenary.path\frequire\0", "config", "neovim-session-manager")
time([[Config for neovim-session-manager]], false)
-- Config for: vim-surround
time([[Config for vim-surround]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "vim-surround")
time([[Config for vim-surround]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\2Ï\3\0\0\a\0\22\0\0266\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\a\0005\3\6\0=\3\b\0025\3\t\0=\3\n\2=\2\v\0015\2\f\0005\3\r\0=\3\14\0026\3\15\0009\3\16\3'\4\17\0'\5\18\0'\6\19\0B\3\4\2=\3\20\2=\2\21\1B\0\2\1K\0\1\0\14fast_wrap\fpattern\5\b%s+\25 [%'%\"%)%>%]%)%}%,] \tgsub\vstring\nchars\1\6\0\0\6{\6[\6(\6\"\6'\1\0\6\fend_key\6$\14highlight\vSearch\bmap\n<M-e>\tkeys\31qwertyuiopzxcvbnmasdfghjkl\19highlight_grey\fComment\16check_comma\2\14ts_config\15javascript\1\2\0\0\20template_string\blua\1\0\1\tjava\2\1\2\0\0\vstring\21disable_filetype\1\0\1\rcheck_ts\2\1\a\0\0\20TelescopePrompt\18spectre_panel\rdap-repl\vguihua\16guihua_rust\15clap_input\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: telescope-rg.nvim
time([[Config for telescope-rg.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "telescope-rg.nvim")
time([[Config for telescope-rg.nvim]], false)
-- Config for: cmp-nvim-lua
time([[Config for cmp-nvim-lua]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-nvim-lua")
time([[Config for cmp-nvim-lua]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\2Í\1\0\0\a\0\v\0\0295\0\0\0006\1\1\0009\1\2\0019\1\3\1)\2\0\0'\3\4\0'\4\5\0'\5\6\0\18\6\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\2\0\0'\3\4\0'\4\a\0'\5\b\0\18\6\0\0B\1\6\0016\1\1\0009\1\2\0019\1\3\1)\2\0\0'\3\4\0'\4\t\0'\5\n\0\18\6\0\0B\1\6\1K\0\1\0\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\21<C-\\><C-n><C-W>h\n<C-h>\6t\24nvim_buf_set_keymap\bapi\bvim\1\0\1\fnoremap\2$\0\0\2\1\1\0\5-\0\0\0\18\1\0\0009\0\0\0B\0\2\1K\0\1\0\3¿\vtoggle$\0\0\2\1\1\0\5-\0\0\0\18\1\0\0009\0\0\0B\0\2\1K\0\1\0\4¿\vtoggle$\0\0\2\1\1\0\5-\0\0\0\18\1\0\0009\0\0\0B\0\2\1K\0\1\0\5¿\vtoggle$\0\0\2\1\1\0\5-\0\0\0\18\1\0\0009\0\0\0B\0\2\1K\0\1\0\6¿\vtoggle$\0\0\2\1\1\0\5-\0\0\0\18\1\0\0009\0\0\0B\0\2\1K\0\1\0\a¿\vtoggle€\6\1\0\n\0$\0@6\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0008Ä9\2\3\0015\3\4\0004\4\0\0=\4\5\0036\4\6\0009\4\a\0049\4\b\4=\4\b\0035\4\t\0005\5\n\0=\5\v\4=\4\f\3B\2\2\0016\2\r\0003\3\15\0=\3\14\0026\2\6\0009\2\16\2'\3\17\0B\2\2\0016\2\1\0'\3\18\0B\2\2\0029\2\19\2\18\4\2\0009\3\20\0025\5\21\0B\3\3\0023\4\22\0007\4\23\0\18\5\2\0009\4\20\0025\6\24\0B\4\3\0023\5\25\0007\5\26\0\18\6\2\0009\5\20\0025\a\27\0B\5\3\0023\6\28\0007\6\29\0\18\a\2\0009\6\20\0025\b\30\0B\6\3\0023\a\31\0007\a \0\18\b\2\0009\a\20\0025\t!\0B\a\3\0023\b\"\0007\b#\0002\0\0ÄK\0\1\0K\0\1\0\19_PYTHON_TOGGLE\0\1\0\2\bcmd\vpython\vhidden\2\17_HTOP_TOGGLE\0\1\0\2\bcmd\thtop\vhidden\2\17_NCDU_TOGGLE\0\1\0\2\bcmd\tncdu\vhidden\2\17_NODE_TOGGLE\0\1\0\2\bcmd\tnode\vhidden\2\20_LAZYGIT_TOGGLE\0\1\0\2\bcmd\flazygit\vhidden\2\bnew\rTerminal\24toggleterm.terminal:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\0\25set_terminal_keymaps\a_G\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\2\rwinblend\3\3\vborder\vcurved\nshell\6o\bvim\20shade_filetypes\1\0\n\20shade_terminals\2\17open_mapping\n<c-\\>\19shading_factor\3\3\17persist_size\2\14direction\nfloat\18close_on_exit\2\20start_in_insert\2\20insert_mappings\2\tsize\3\20\17hide_numbers\1\nsetup\15toggleterm\frequire\npcall\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-colorizer
time([[Config for nvim-colorizer]], true)
try_loadstring("\27LJ\2\2o\0\0\3\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0015\2\6\0=\2\a\1B\0\2\1K\0\1\0\thtml\1\0\1\nnames\1\bcss\1\0\1\vrgb_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer")
time([[Config for nvim-colorizer]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\2⁄\a\0\0\4\0\24\0\0276\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\14\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2=\2\15\0015\2\16\0=\2\17\0015\2\18\0=\2\19\0015\2\20\0=\2\21\0015\2\22\0=\2\23\1B\0\2\1K\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\brow\3\0\rrelative\vcursor\nstyle\fminimal\bcol\3\1\vborder\vsingle\28current_line_blame_opts\1\0\4\14virt_text\2\ndelay\3Ë\a\18virt_text_pos\beol\22ignore_whitespace\1\17watch_gitdir\1\0\2\rinterval\3Ë\a\17follow_files\2\nsigns\1\0\n\20update_debounce\3d\24attach_to_untracked\2!current_line_blame_formatter1<author>, <author_time:%Y-%m-%d> - <summary>\vlinehl\1\nnumhl\1\18sign_priority\3\6\15signcolumn\2\23current_line_blame\1\20max_file_length\3¿∏\2\14word_diff\1\17changedelete\1\0\4\ttext\6~\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\ttext\b‚Äæ\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\6_\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\ttext\b‚îÇ\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\b‚îÇ\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: filetype.nvim
time([[Config for filetype.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "filetype.nvim")
time([[Config for filetype.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: telescope-ui-select.nvim
time([[Config for telescope-ui-select.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "telescope-ui-select.nvim")
time([[Config for telescope-ui-select.nvim]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: vim-bookmarks
time([[Config for vim-bookmarks]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "vim-bookmarks")
time([[Config for vim-bookmarks]], false)
-- Config for: nerd-fonts
time([[Config for nerd-fonts]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nerd-fonts")
time([[Config for nerd-fonts]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2j\0\2\6\2\a\0\0146\2\1\0009\2\2\2'\3\3\0-\4\0\0009\5\0\0018\4\5\4B\2\3\2=\2\0\1-\2\1\0009\3\5\0009\3\6\0038\2\3\2=\2\4\1L\1\2\0\3¿\5¿\tname\vsource\tmenu\a%s\vformat\vstring\tkindC\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire•\16\1\0\v\0O\0ß\0016\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\1\0X\2\1Ä2\0üÄ6\2\1\0'\3\3\0B\2\2\0029\2\4\2B\2\1\0016\2\1\0'\3\5\0B\2\2\0025\3\6\0005\4\a\0005\5\b\0005\6\r\0005\a\v\0009\b\t\0029\b\n\b=\b\f\a=\a\14\0065\a\15\0=\a\16\0065\a\18\0005\b\17\0=\b\19\a5\b\20\0=\b\21\a3\b\22\0=\b\23\a=\a\24\0065\a\26\0003\b\25\0=\b\27\a=\a\28\0065\a \0009\b\29\0029\b\30\b9\b\31\bB\b\1\2=\b!\a9\b\29\0029\b\30\b9\b\31\bB\b\1\2=\b\"\a=\a\30\0065\a%\0009\b#\0029\b$\bB\b\1\2=\b&\a9\b#\0029\b'\bB\b\1\2=\b(\a9\b#\0029\b)\b)\t¸ˇB\b\2\2=\b*\a9\b#\0029\b)\b)\t\4\0B\b\2\2=\b+\a9\b#\0029\b,\bB\b\1\2=\b-\a9\b#\0029\b.\bB\b\1\2=\b/\a=\a#\0069\a\29\0029\a0\a4\b\f\0005\t1\0>\t\1\b5\t2\0>\t\2\b5\t3\0>\t\3\b5\t4\0>\t\4\b5\t5\0>\t\5\b5\t6\0>\t\6\b5\t7\0>\t\a\b5\t8\0>\t\b\b5\t9\0>\t\t\b5\t:\0>\t\n\b5\t;\0>\t\v\bB\a\2\2=\a0\0067\6<\0009\6=\0029\6>\0065\a?\0005\bB\0004\t\3\0005\n@\0>\n\1\t5\nA\0>\n\2\t=\t0\bB\6\3\0019\6=\0029\6C\6'\aD\0005\bF\0009\t#\0029\tE\t9\tC\tB\t\1\2=\t#\b4\t\3\0005\nG\0>\n\1\t=\t0\bB\6\3\0019\6=\0029\6C\6'\aH\0005\bI\0009\t#\0029\tE\t9\tC\tB\t\1\2=\t#\b4\t\3\0005\nJ\0>\n\1\t=\t0\bB\6\3\0019\6=\0029\6C\6'\aK\0005\bL\0009\t#\0029\tE\t9\tC\tB\t\1\2=\t#\b4\t\3\0005\nM\0>\n\1\t5\nN\0>\n\2\t=\t0\bB\6\3\0019\6=\0026\a<\0B\6\2\0012\0\0ÄK\0\1\0K\0\1\0\1\0\1\tname\tpath\1\0\1\tname\fcmdline\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\6?\1\0\1\tname\vbuffer\1\0\0\vpreset\6/\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\3\0\0\rmarkdown\thelp\rfiletype\nsetup\15cmp_config\1\0\1\tname\vcrates\1\0\1\tname\15treesitter\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\nspell\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lua\1\0\1\tname\16cmp_tabnine\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\n<C-e>\nabort\n<C-p>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\vexpand\1\0\0\0\15formatting\vformat\0\15duplicates\1\0\4\tpath\3\1\fluasnip\3\1\rnvim_lsp\3\1\vbuffer\3\1\vfields\1\0\1\23duplicates_default\3\1\1\4\0\0\tkind\tabbr\tmenu\17experimental\1\0\2\15ghost_text\2\16native_menu\1\17confirm_opts\1\0\1\fenabled\2\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\1\0\a\nspell\f[Spell]\rnvim_lua\n[LUA]\rnvim_lsp\n{LSP}\vbuffer\r[Buffer]\tpath\v[Path]\16cmp_tabnine\14[TabNine]\fluasnip\15[Snippets]\1\0\n\rnvim_lsp\n(LSP)\nvsnip\14(Snippet)\16cmp_tabnine\14(Tabnine)\15treesitter\t(TS)\tpath\v(Path)\nemoji\f(Emoji)\nspell\f(Spell)\vbuffer\r(Buffer)\tcalc\v(Calc)\fluasnip\14(Snippet)\1\0\25\tText\aT \vMethod\aM \rOperator\t‚ò© \14Interface\t‚èß \nColor\t‚õØ \vModule\t‚®ä \nEvent\aE \rFunction\t‚Ñò \16Constructor\t‚öô \15EnumMember\t‚öú \rProperty\t‚ò™ \rConstant\t‚õ≠ \vStruct\t‰∑¶ \rVariable\t‚öù \fSnippet\t‚ò´ \vFolder\tüìÅ\tUnit\t‚Ñ´ \nValue\t·ç≤ \18TypeParameter\tÔûÉ \tFile\t‚õ∂ \nClass\t‚ùÇ \nField\t‚Ω• \tEnum\t‚öö \fKeyword\t‚ò£ \14Reference\t‚ò¨ \bcmp\14lazy_load luasnip.loaders.from_vscode\fluasnip\frequire\npcall\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: md-img-paste.vim
time([[Config for md-img-paste.vim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "md-img-paste.vim")
time([[Config for md-img-paste.vim]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: cmp-cmdline
time([[Config for cmp-cmdline]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-cmdline")
time([[Config for cmp-cmdline]], false)
-- Config for: telescope-fzf-native.nvim
time([[Config for telescope-fzf-native.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "telescope-fzf-native.nvim")
time([[Config for telescope-fzf-native.nvim]], false)
-- Config for: bufdelete.nvim
time([[Config for bufdelete.nvim]], true)
try_loadstring("\27LJ\2\2]\0\0\3\0\6\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0006\1\0\0009\1\1\0019\1\4\1'\2\5\0&\1\2\1=\1\4\0K\0\1\0\aL0\15cinoptions\bcpp\rfiletype\abo\bvimà\1\0\0\5\0\n\0\0186\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\1\6\0'\2\a\0006\3\0\0009\3\4\0039\3\b\3'\4\t\0B\3\2\2'\4\a\0&\1\4\1B\0\2\1K\0\1\0\6%\vexpand\6\"\18open -a skim \rjobstart\afn\bpdf\rfiletype\abo\bvim.\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\15syntax off\bcmd\bvim0\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\17iabbrev $ $$\bcmd\bvim¡\3\1\0\a\0 \0(6\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\3\5\0B\2\2\0012\0\28Ä9\2\6\0015\3\30\0005\4\b\0005\5\a\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\0045\5\15\0003\6\14\0=\6\16\0053\6\17\0=\6\18\5=\5\19\0045\5\21\0003\6\20\0=\6\22\5=\5\23\0045\5\25\0003\6\24\0=\6\26\5=\5\27\0045\5\28\0=\5\29\4=\4\31\3B\2\2\1K\0\1\0K\0\1\0\14overrides\1\0\0\fshebang\1\0\1\tdash\ash\21function_complex\21*.math_notes/%w+\1\0\0\0\21function_literal\rBrewfile\1\0\0\0\24function_extensions\bpdf\0\bcpp\1\0\0\0\fcomplex\1\0\1\17.*git/config\14gitconfig\fliteral\1\0\1\17MyBackupFile\blua\15extensions\1\0\0\1\0\1\apn\vpotion\nsetup\24filetype not found!\vnotify\bvim\rfiletype\frequire\npcall\0", "config", "bufdelete.nvim")
time([[Config for bufdelete.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2G\0\0\2\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\1\0\0B\0\2\2)\1P\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rwinwidth\afn\bvim#\0\1\4\0\2\0\5'\1\0\0\18\2\0\0'\3\1\0&\1\3\1L\1\2\0\b --\b-- ´\1\0\0\6\0\b\0\0196\0\0\0009\0\1\0009\0\2\0'\1\3\0B\0\2\0026\1\0\0009\1\1\0019\1\2\1'\2\4\0B\1\2\0025\2\5\0#\3\1\0006\4\6\0009\4\a\4\21\5\2\0\"\5\5\3B\4\2\0028\5\4\2L\5\2\0\tceil\tmath\1\n\0\0\v‚ñà‚ñà\v‚ñá‚ñá\v‚ñÜ‚ñÜ\v‚ñÖ‚ñÖ\v‚ñÑ‚ñÑ\v‚ñÉ‚ñÉ\v‚ñÇ‚ñÇ\v‚ñÅ‚ñÅ\6 \6$\6.\tline\afn\bvim[\0\0\4\0\5\0\t'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\2\0\0'\3\4\0B\1\3\2&\0\1\0L\0\2\0\15shiftwidth\24nvim_buf_get_option\bapi\bvim\rspaces: Ö\n\1\0\16\0:\0a6\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\3\5\0B\2\2\0012\0UÄ3\2\6\0005\3\a\0005\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0005\5\15\0=\5\r\0045\5\17\0005\6\16\0=\6\18\0055\6\19\0=\6\20\0055\6\21\0=\6\22\5=\5\23\4=\2\24\0045\5\25\0003\6\26\0=\6\27\0055\6\28\0005\a\29\0=\a\r\0065\a\30\0005\b\31\0005\t \0003\n!\0003\v\"\0009\f#\0015\r+\0005\14$\0005\15%\0=\15&\0145\15'\0=\15(\0145\15)\0=\15*\14=\14,\r5\14-\0004\15\3\0>\b\1\15>\3\2\15=\15.\0144\15\3\0>\5\1\15=\15/\0144\15\3\0>\6\1\15=\0150\0145\0151\0>\4\1\15>\v\2\15>\a\4\15=\0152\0144\15\3\0>\t\1\15=\0153\0144\15\3\0>\n\1\15=\0154\14=\14\v\r5\0145\0004\15\0\0=\15.\0144\15\0\0=\15/\0144\15\3\0>\6\1\15=\0150\0145\0156\0=\0152\0144\15\0\0=\0153\0144\15\0\0=\0154\14=\0147\r4\14\0\0=\0148\r4\14\0\0=\0149\rB\f\2\1K\0\1\0K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\0\0\14lualine_z\14lualine_y\14lualine_x\1\6\0\0\0\0\rencoding\0\15fileformat\14lualine_c\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\23disabled_filetypes\1\5\0\0\nalpha\14dashboard\rNvimTree\fOutline\23section_separators\1\0\2\tleft\b‚Üê\nright\b‚Üí\25component_separators\1\0\2\tleft\b‚Üê\nright\b‚Üí\1\0\3\25always_divide_middle\2\ntheme\tauto\18icons_enabled\2\nsetup\0\0\1\2\1\0\rlocation\fpadding\3\0\1\2\2\0\vbranch\18icons_enabled\2\ticon\b·õ¶\1\2\1\0\rfiletype\18icons_enabled\1\1\0\3\rreadonly\b[-]\rmodified\b[+]\funnamed\14[No Name]\1\2\3\0\rfilename\20shorting_target\3(\16file_status\2\tpath\3\1\bfmt\0\1\2\0\0\tmode\tcond\15diff_color\fremoved\1\0\1\afg\f#ec5f67\rmodified\1\0\1\afg\f#ecbe7b\nadded\1\0\0\1\0\1\afg\f#98be65\1\0\3\nadded\a+ \rmodified\b÷é \fremoved\t‚ê° \1\2\1\0\tdiff\fcolored\2\fsymbols\1\0\2\twarn\f‚ö†Ô∏è \nerror\t‚õî \rsections\1\3\0\0\nerror\twarn\fsources\1\2\0\0\20nvim_diagnostic\1\2\3\0\16diagnostics\19always_visible\2\21update_in_insert\1\fcolored\1\0\23lualine not found!\vnotify\bvim\flualine\frequire\npcall\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\2≤\25\0\0\n\0k\0ß\0014\0)\0005\1\1\0005\2\0\0=\2\2\1>\1\1\0005\1\3\0>\1\2\0005\1\5\0005\2\4\0=\2\2\1>\1\3\0005\1\a\0005\2\6\0=\2\2\1>\1\4\0005\1\b\0>\1\5\0005\1\t\0>\1\6\0005\1\n\0>\1\a\0005\1\v\0>\1\b\0005\1\f\0>\1\t\0005\1\r\0>\1\n\0005\1\14\0>\1\v\0005\1\15\0>\1\f\0005\1\16\0>\1\r\0005\1\17\0>\1\14\0005\1\18\0>\1\15\0005\1\19\0>\1\16\0005\1\20\0>\1\17\0005\1\21\0>\1\18\0005\1\22\0>\1\19\0005\1\23\0>\1\20\0005\1\24\0>\1\21\0005\1\25\0>\1\22\0005\1\26\0>\1\23\0005\1\27\0>\1\24\0005\1\28\0>\1\25\0005\1\29\0>\1\26\0005\1\30\0>\1\27\0005\1\31\0>\1\28\0005\1 \0>\1\29\0005\1!\0>\1\30\0005\1\"\0>\1\31\0005\1#\0>\1 \0005\1$\0>\1!\0005\1%\0>\1\"\0005\1&\0>\1#\0005\1'\0>\1$\0005\1(\0>\1%\0005\1)\0>\1&\0005\1*\0>\1'\0005\1+\0>\1(\0006\1,\0009\1-\0015\2/\0005\0030\0=\0031\0025\0032\0=\0033\2=\2.\0016\0014\0006\0025\0'\0036\0B\1\3\3\14\0\1\0X\3\5Ä6\3,\0009\0037\3'\0048\0B\3\2\1K\0\1\0009\0039\0025\4:\0005\5;\0005\6<\0=\0=\6=\6>\5=\5?\0045\5C\0005\6@\0005\aA\0=\aB\6=\6D\0055\6E\0=\6B\5=\5F\0045\5G\0=\5H\0045\5I\0004\6\0\0=\6J\5=\5K\0044\5\0\0=\5L\0045\5M\0004\6\0\0=\6N\5=\5O\0045\5P\0005\6Q\0=\6B\5=\5R\0045\5S\0004\6\0\0=\6T\0054\6\0\0=\6U\5=\5V\0045\5W\0=\0051\0045\5X\0005\6Y\0=\6Z\0055\6[\0005\a\\\0005\b^\0005\t]\0=\t_\b5\t`\0=\ta\b=\bU\a=\ab\6=\6c\5=\5d\0045\5e\0=\5f\0045\5g\0005\6h\0=\6i\5=\5j\4B\3\2\1K\0\1\0\blog\ntypes\1\0\6\ball\1\vconfig\1\bgit\1\16diagnostics\1\fprofile\1\15copy_paste\1\1\0\2\rtruncate\1\venable\1\ntrash\1\0\2\bcmd\ntrash\20require_confirm\2\factions\14open_file\18window_picker\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\venable\2\1\0\2\18resize_window\1\17quit_on_open\1\15change_dir\1\0\3\23restrict_above_cwd\1\vglobal\1\venable\2\1\0\1\25use_system_clipboard\2\1\0\3\vignore\2\ftimeout\3ê\3\venable\2\ffilters\fexclude\vcustom\1\0\1\rdotfiles\1\16diagnostics\1\0\4\tinfo\b‚öõ\thint\b‚ö°\nerror\b‚õî\fwarning\v‚ö†Ô∏è\1\0\2\17show_on_dirs\2\venable\2\16system_open\targs\1\0\1\bcmd\5\23ignore_ft_on_setup\24update_focused_file\16ignore_list\1\0\2\15update_cwd\2\venable\2\23hijack_directories\1\0\2\14auto_open\2\venable\2\rrenderer\1\0\2\18git_placement\vbefore\18webdev_colors\2\19indent_markers\1\0\0\nicons\1\0\3\tedge\t‚îÇ \tnone\a  \vcorner\t‚îî \1\0\1\venable\1\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\b\vnumber\1\tside\tleft\21hide_root_folder\1\vheight\3\30\19relativenumber\1 preserve_window_proportions\1\15signcolumn\byes\nwidth\3\30\1\0\n\16open_on_tab\1\fsort_by\tname\18open_on_setup\1\25auto_reload_on_write\2\18disable_netrw\1'hijack_unnamed_buffer_when_opening\1\18hijack_cursor\1\23open_on_setup_file\1\17hijack_netrw\2\27ignore_buffer_on_setup\1\nsetup\25nvim-tree not found!\vnotify\14nvim-tree\frequire\npcall\vfolder\1\0\5\fdefault\tüìÇ\15empty_open\b‚àÖ\topen\b‚úº\nempty\tüìÅ\fsymlink\b‚òØ\bgit\1\0\a\runstaged\b‚úó\fdeleted\b‚ùÇ\14untracked\b‚òÖ\fignored\b‚óå\runmerged\b‚õõ\frenamed\b‚ûú\vstaged\b‚úì\1\0\2\fdefault\b‚öõ\fsymlink\b‚òØ\20nvim_tree_icons\6g\bvim\1\0\2\vaction\21run_file_command\bkey\6.\1\0\2\vaction\21toggle_file_info\bkey\n<C-k>\1\0\2\vaction\16search_node\bkey\6S\1\0\2\vaction\17collapse_all\bkey\6W\1\0\2\vaction\16toggle_help\bkey\ag?\1\0\2\vaction\nclose\bkey\6q\1\0\2\vaction\22clear_live_filter\bkey\6F\1\0\2\vaction\16live_filter\bkey\6f\1\0\2\vaction\16system_open\bkey\6s\1\0\2\vaction\vdir_up\bkey\6-\1\0\2\vaction\18next_git_item\bkey\a]c\1\0\2\vaction\18prev_git_item\bkey\a[c\1\0\2\vaction\23copy_absolute_path\bkey\agy\1\0\2\vaction\14copy_path\bkey\6Y\1\0\2\vaction\14copy_name\bkey\6y\1\0\2\vaction\npaste\bkey\6p\1\0\2\vaction\tcopy\bkey\6c\1\0\2\vaction\bcut\bkey\6x\1\0\2\vaction\16full_rename\bkey\n<C-r>\1\0\2\vaction\vrename\bkey\6r\1\0\2\vaction\ntrash\bkey\6D\1\0\2\vaction\vremove\bkey\6d\1\0\2\vaction\vcreate\bkey\6a\1\0\2\vaction\frefresh\bkey\6R\1\0\2\vaction\20toggle_dotfiles\bkey\6H\1\0\2\vaction\23toggle_git_ignored\bkey\6I\1\0\2\vaction\17last_sibling\bkey\6J\1\0\2\vaction\18first_sibling\bkey\6K\1\0\2\vaction\fpreview\bkey\n<Tab>\1\0\2\vaction\15close_node\bkey\t<BS>\1\0\2\vaction\16parent_node\bkey\6P\1\0\2\vaction\17next_sibling\bkey\6>\1\0\2\vaction\17prev_sibling\bkey\6<\1\0\2\vaction\vtabnew\bkey\n<C-t>\1\0\2\vaction\nsplit\bkey\n<C-x>\1\0\2\vaction\vvsplit\bkey\n<C-v>\1\0\1\vaction\acd\1\3\0\0\19<2-RightMouse>\n<C-]>\1\0\1\vaction\19edit_no_picker\1\2\0\0\6O\1\0\2\vaction\18edit_in_place\bkey\n<C-e>\bkey\1\0\1\vaction\tedit\1\4\0\0\t<CR>\6o\18<2-LeftMouse>\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: mathjax-support-for-mkdp
time([[Config for mathjax-support-for-mkdp]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "mathjax-support-for-mkdp")
time([[Config for mathjax-support-for-mkdp]], false)
-- Config for: nvim-treesitter-textobjects
time([[Config for nvim-treesitter-textobjects]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nvim-treesitter-textobjects")
time([[Config for nvim-treesitter-textobjects]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2W\0\0\6\1\4\0\n6\0\0\0009\0\1\0009\0\2\0-\1\0\0)\2\0\0)\3ˇˇ+\4\1\0005\5\3\0B\0\6\1K\0\1\0\2\0\1\2\0\0\vBINARY\23nvim_buf_set_lines\bapi\bvim§\1\1\1\6\4\b\0\0236\1\0\0009\1\1\1\18\3\0\0009\2\2\0B\2\2\2:\2\1\2'\3\3\0B\1\3\2:\1\1\1\a\1\4\0X\2\aÄ-\2\0\0009\2\5\2-\3\1\0-\4\2\0-\5\3\0B\2\4\1X\2\4Ä6\2\0\0009\2\6\0023\3\a\0B\2\2\1K\0\1\0\1\0\0Ä\1¿\2¿\0\rschedule\27buffer_previewer_maker\ttext\6/\vresult\nsplit\bvimß\1\1\3\a\2\n\0\0216\3\0\0009\3\1\0039\3\2\3\18\4\0\0B\3\2\2\18\0\3\0-\3\0\0\18\4\3\0009\3\3\0035\5\4\0005\6\5\0>\0\3\6=\6\6\0053\6\a\0=\6\b\5B\3\3\2\18\4\3\0009\3\t\3B\3\2\0012\0\0ÄK\0\1\0\4¿\3¿\tsync\fon_exit\0\targs\1\3\0\0\16--mime-type\a-b\1\0\1\fcommand\tfile\bnew\vexpand\afn\bvim˜\r\1\0\r\0`\1Æ\0016\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\3\5\0B\2\2\0012\0¢Ä6\2\1\0'\3\6\0B\2\2\0026\3\1\0'\4\a\0B\3\2\0026\4\1\0'\5\b\0B\4\2\0023\5\t\0009\6\n\0015\aO\0005\b\v\0=\5\f\b5\t\16\0005\n\r\0005\v\14\0=\v\15\n=\n\17\t=\t\18\b5\t>\0005\n\20\0009\v\19\2=\v\21\n9\v\22\2=\v\23\n9\v\24\2=\v\25\n9\v\26\2=\v\27\n9\v\28\2=\v\29\n9\v\24\2=\v\30\n9\v\26\2=\v\31\n9\v \2=\v!\n9\v\"\2=\v#\n9\v$\2=\v%\n9\v&\2=\v'\n9\v(\2=\v)\n9\v*\2=\v+\n9\v,\2=\v-\n9\v.\2=\v/\n9\v0\0029\f1\2 \v\f\v=\v2\n9\v0\0029\f3\2 \v\f\v=\v4\n9\v5\0029\f6\2 \v\f\v=\v7\n9\v8\0029\f6\2 \v\f\v=\v9\n9\v:\2=\v;\n9\v<\2=\v=\n=\n?\t5\n@\0009\v\28\2=\vA\n9\v \2=\v!\n9\v\"\2=\v#\n9\v$\2=\v%\n9\v&\2=\v'\n9\v0\0029\f1\2 \v\f\v=\v2\n9\v0\0029\f3\2 \v\f\v=\v4\n9\v5\0029\f6\2 \v\f\v=\v7\n9\v8\0029\f6\2 \v\f\v=\v9\n9\v\24\2=\vB\n9\v\26\2=\vC\n9\vD\2=\vE\n9\vF\2=\vG\n9\vH\2=\vI\n9\v\24\2=\v\30\n9\v\26\2=\v\31\n9\vD\2=\vJ\n9\vH\2=\vK\n9\v(\2=\v)\n9\v*\2=\v+\n9\v,\2=\v-\n9\v.\2=\v/\n9\v<\2=\vL\n=\nM\t=\tN\b=\bP\a5\bT\0005\tQ\0005\nR\0=\nS\t=\tU\b=\bV\a5\bX\0005\tW\0=\tY\b4\t\3\0006\n\1\0'\vZ\0B\n\2\0029\n[\n4\v\0\0B\n\2\0?\n\0\0=\t\\\b=\b]\aB\6\2\0019\6^\1'\aY\0B\6\2\0019\6^\1'\a\\\0B\6\2\0019\6^\1'\a_\0B\6\2\0012\0\0ÄK\0\1\0K\0\1\0\18vim_bookmarks\19load_extension\15extensions\14ui-select\17get_dropdown\21telescope.themes\bfzf\1\0\0\1\0\4\28override_generic_sorter\2\14case_mode\15smart_case\25override_file_sorter\2\nfuzzy\2\fpickers\15find_files\1\0\0\17find_command\1\2\0\0\afd\1\0\2\14previewer\1\ntheme\rdropdown\rdefaults\1\0\0\rmappings\6n\6?\6G\agg\6L\19move_to_bottom\6M\19move_to_middle\6H\16move_to_top\6k\6j\n<esc>\1\0\0\6i\1\0\0\n<C-_>\14which_key\n<C-l>\17complete_tag\n<M-q>\28send_selected_to_qflist\n<C-q>\16open_qflist\19send_to_qflist\f<S-Tab>\26move_selection_better\n<Tab>\25move_selection_worse\21toggle_selection\15<PageDown>\27results_scrolling_down\r<PageUp>\25results_scrolling_up\n<C-d>\27preview_scrolling_down\n<C-u>\25preview_scrolling_up\n<C-t>\15select_tab\n<C-v>\20select_vertical\n<C-x>\22select_horizontal\t<CR>\19select_default\t<Up>\v<Down>\n<C-c>\nclose\n<C-k>\28move_selection_previous\n<C-j>\24move_selection_next\n<C-p>\23cycle_history_prev\n<C-n>\1\0\0\23cycle_history_next\17path_display\fshorten\1\0\0\fexclude\1\3\0\0\3\1\3ˇˇˇˇ\15\1\0\1\blen\3\3\27buffer_previewer_maker\1\0\2\18prompt_prefix\tÔë´ \20selection_caret\tÔÅ§ \nsetup\0\16plenary.job\25telescope.previewers\22telescope.actions\25telescope not found!\vnotify\bvim\14telescope\frequire\npcall\3ÄÄ¿ô\4\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\2¶\3\0\0\6\0\19\0#6\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\3\4\0005\4\5\0=\4\6\0035\4\a\0=\4\b\0034\4\0\0=\4\t\0034\4\0\0=\4\n\0036\4\v\0009\4\f\0049\4\r\4'\5\14\0B\4\2\2=\4\15\3B\2\2\0016\2\0\0006\3\1\0'\4\16\0B\2\3\3\14\0\2\0X\4\1ÄK\0\1\0009\4\17\3'\5\18\0B\4\2\1K\0\1\0\rprojects\19load_extension\14telescope\rdatapath\tdata\fstdpath\afn\bvim\17exclude_dirs\15ignore_lsp\rpatterns\1\n\0\0\t.git\nbuild\v_darcs\b.hg\t.bzr\t.svn\rMakefile\19CMakeLists.txt\17package.json\22detection_methods\1\2\0\0\fpattern\1\0\3\16manual_mode\1\17silent_chdir\2\16show_hidden\2\nsetup\17project_nvim\frequire\npcall\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: cmp-buffer
time([[Config for cmp-buffer]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-buffer")
time([[Config for cmp-buffer]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\2\4\0\0\5\0\"\0-6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\a\0005\3\6\0=\3\b\2=\2\t\0016\2\n\0009\2\v\0029\2\f\2'\3\r\0B\2\2\2=\2\14\0015\2\19\0004\3\5\0005\4\15\0>\4\1\0035\4\16\0>\4\2\0035\4\17\0>\4\3\0035\4\18\0>\4\4\3=\3\20\2=\2\21\0015\2\23\0005\3\22\0=\3\20\2=\2\24\0015\2\25\0005\3\27\0005\4\26\0=\4\28\3=\3\t\2=\2\29\0015\2\30\0=\2\31\0015\2 \0=\2!\1B\0\2\1K\0\1\0\vrender\1\0\0\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\1\vborder\vsingle\ttray\1\0\2\tsize\3\n\rposition\vbottom\1\2\0\0\trepl\fsidebar\relements\1\0\2\tsize\3(\rposition\tleft\1\0\2\aid\fwatches\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\vstacks\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\16breakpoints\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\vscopes\tsize\4\0ÄÄ¿˛\3\17expand_lines\rnvim-0.7\bhas\afn\bvim\rmappings\vexpand\1\0\5\topen\6o\trepl\6r\vtoggle\6t\tedit\6e\vremove\6d\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\14collapsed\b‚ñ∏\rexpanded\b‚ñæ\nsetup\ndapui\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: cmp-tabnine
time([[Config for cmp-tabnine]], true)
try_loadstring("\27LJ\2\2‘\1\0\0\5\0\5\0\n6\0\0\0'\1\1\0B\0\2\2\18\2\0\0009\1\2\0005\3\3\0004\4\0\0=\4\4\3B\1\3\1K\0\1\0\23ignored_file_types\1\0\6\20max_num_results\3\20\27run_on_every_keystroke\2\14max_lines\3Ë\a\24snippet_placeholder\a..\29show_prediction_strength\1\tsort\2\nsetup\23cmp_tabnine.config\frequire\0", "config", "cmp-tabnine")
time([[Config for cmp-tabnine]], false)
-- Config for: cmp_luasnip
time([[Config for cmp_luasnip]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp_luasnip")
time([[Config for cmp_luasnip]], false)
-- Config for: friendly-snippets
time([[Config for friendly-snippets]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "friendly-snippets")
time([[Config for friendly-snippets]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\2´\3\0\0\r\0\17\00056\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\0016\0\0\0'\1\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\1\4\0B\0\2\0026\1\5\0006\2\6\0B\1\2\4H\4 Ä5\6\b\0006\a\0\0'\b\3\0B\a\2\0029\a\a\a=\a\a\0066\a\0\0'\b\3\0B\a\2\0029\a\t\a=\a\t\0065\a\n\0=\a\v\0066\a\f\0006\b\0\0'\t\r\0\18\n\5\0&\t\n\tB\a\3\3\15\0\a\0X\t\aÄ6\t\14\0009\t\15\t'\n\16\0\18\v\b\0\18\f\6\0B\t\4\2\18\6\t\0008\t\5\0009\t\2\t\18\n\6\0B\t\2\1F\4\3\3R\4ﬁ\127K\0\1\0\nforce\20tbl_deep_extend\bvim\"configure.nvim_cmp.language._\npcall\nflags\1\0\1\26debounce_text_changes\3ñ\1\17capabilities\1\0\0\14on_attach\fSERVERS\npairs\14lspconfig!configure.nvim_cmp._handlers\nsetup\23nvim-lsp-installer\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: cmp-path
time([[Config for cmp-path]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "cmp-path")
time([[Config for cmp-path]], false)
-- Config for: vim-colorschemes
time([[Config for vim-colorschemes]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "vim-colorschemes")
time([[Config for vim-colorschemes]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\2Î\2\0\0\3\0\v\0\0196\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0006\1\0\0009\1\a\0019\1\b\1'\2\t\0B\1\2\2'\2\n\0&\1\2\1=\1\6\0K\0\1\0\r/session\ncache\fstdpath\afn dashboard_session_directory\1\0\a\rnew_file\fSPC c f\23change_colorscheme\fSPC f c\15book_marks\fSPC f m\17last_session\fSPC s l\17find_history\fSPC f h\14find_word\fSPC f q\14find_file\fSPC f f\30dashboard_custom_shortcut\1\2\0\0\26üê¨ Have A Good Day!\28dashboard_custom_footer\6g\bvim\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\2Ì\2\0\0\4\0\r\0@6\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0B\0\3\2\a\0\4\0X\0\bÄ6\0\0\0009\0\1\0009\0\5\0)\1\0\0'\2\6\0'\3\a\0B\0\4\1X\0/Ä6\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0B\0\3\2\a\0\b\0X\0\bÄ6\0\0\0009\0\1\0009\0\5\0)\1\0\0'\2\6\0'\3\t\0B\0\4\1X\0\31Ä6\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0B\0\3\2\a\0\n\0X\0\bÄ6\0\0\0009\0\1\0009\0\5\0)\1\0\0'\2\6\0'\3\a\0B\0\4\1X\0\15Ä6\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0B\0\3\2\a\0\v\0X\0\aÄ6\0\0\0009\0\1\0009\0\5\0)\1\0\0'\2\6\0'\3\f\0B\0\4\1K\0\1\0\b#%s\nshell\ago\v/*%s*/\6c\t//%s\18commentstring\24nvim_buf_set_option\bcpp\rfiletype\24nvim_buf_get_option\bapi\bvim‡\1\1\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0003\2\4\0=\2\5\1B\0\2\1K\0\1\0\thook\0\1\0\a\20create_mappings\2\17line_mapping\bgcc\30comment_chunk_text_object\aic\"comment_empty_trim_whitespace\2\19marker_padding\2\21operator_mapping\agc\18comment_empty\2\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: telescope-vim-bookmarks.nvim
time([[Config for telescope-vim-bookmarks.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "telescope-vim-bookmarks.nvim")
time([[Config for telescope-vim-bookmarks.nvim]], false)
-- Config for: nvim-dap-virtual-text
time([[Config for nvim-dap-virtual-text]], true)
try_loadstring("\27LJ\2\2„\1\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\t\fenabled\2\15all_frames\1\18virt_text_pos\beol\15virt_lines\1\14commented\1\29highlight_new_as_changed\2 highlight_changed_variables\2\21show_stop_reason\2\21enabled_commands\2\nsetup\26nvim-dap-virtual-text\frequire\0", "config", "nvim-dap-virtual-text")
time([[Config for nvim-dap-virtual-text]], false)
-- Config for: markdown-preview.nvim
time([[Config for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "markdown-preview.nvim")
time([[Config for markdown-preview.nvim]], false)
-- Config for: sniprun
time([[Config for sniprun]], true)
try_loadstring("\27LJ\2\2ÿ\5\0\0\5\0\28\0!6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0004\2\0\0=\2\4\0014\2\0\0=\2\5\0015\2\t\0005\3\a\0005\4\6\0=\4\b\3=\3\n\2=\2\v\0015\2\f\0=\2\r\0015\2\14\0=\2\15\0015\2\16\0=\2\17\0015\2\19\0005\3\18\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\2=\2\27\1B\0\2\1K\0\1\0\18snipruncolors\26SniprunFloatingWinErr\1\0\2\fctermfg\fDarkRed\afg\f#881515\26SniprunVirtualTextErr\1\0\4\fctermbg\fDarkRed\abg\f#881515\afg\f#000000\vcterfg\nBlack\25SniprunFloatingWinOk\1\0\2\fctermfg\tCyan\afg\f#66eeff\25SniprunVirtualTextOk\1\0\0\1\0\4\fctermbg\tCyan\abg\f#66eeff\afg\f#000000\vcterfg\nBlack\19show_no_output\1\3\0\0\fClassic\20TempFloatWindow\20display_options\1\0\2\19terminal_width\3-\25notification_timeout\3\5\fdisplay\1\3\0\0\fClassic\18VirtualTextOk\24interpreter_options\17GFM_original\1\0\0\21use_on_filetypes\1\0\0\1\2\0\0\20markdown.pandoc\16repl_enable\26selected_interpreters\1\0\3\20inline_messages\3\0\fborders\vsingle\21live_mode_toggle\aon\nsetup\fsniprun\frequire\0", "config", "sniprun")
time([[Config for sniprun]], false)
-- Config for: DAPInstall.nvim
time([[Config for DAPInstall.nvim]], true)
try_loadstring("\27LJ\2\2∑\4\0\0\5\0\21\0(6\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\b\0006\3\3\0009\3\4\0039\3\5\3'\4\6\0B\3\2\2'\4\a\0&\3\4\3=\3\t\2B\1\2\0015\1\v\0005\2\n\0=\2\f\0015\2\r\0=\2\14\0015\2\15\0=\2\16\0016\2\3\0009\2\4\0029\2\17\2'\3\18\0009\4\f\1B\2\3\0016\2\3\0009\2\4\0029\2\17\2'\3\19\0009\4\16\1B\2\3\0016\2\3\0009\2\4\0029\2\17\2'\3\20\0009\4\14\1B\2\3\1K\0\1\0\26DapBreakpointRejected\15DapStopped\18DapBreakpoint\16sign_define\fstopped\1\0\4\vtexthl\"LspDiagnosticsSignInformation\ttext\v‚≠êÔ∏è\vlinehl\28DiagnosticUnderlineInfo\nnumhl\"LspDiagnosticsSignInformation\rrejected\1\0\4\vtexthl\27LspDiagnosticsSignHint\ttext\b‚èß\vlinehl\5\nnumhl\5\nerror\1\0\0\1\0\4\vtexthl\28LspDiagnosticsSignError\ttext\tüõë\vlinehl\5\nnumhl\5\22installation_path\1\0\0\17/dapinstall/\tdata\fstdpath\afn\bvim\nsetup\16dap-install\frequire\0", "config", "DAPInstall.nvim")
time([[Config for DAPInstall.nvim]], false)
-- Config for: vim-repeat
time([[Config for vim-repeat]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "vim-repeat")
time([[Config for vim-repeat]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
