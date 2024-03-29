local plugin = {}
plugin.core = {
  "kyazdani42/nvim-tree.lua",
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
plugin.core.setup = function(

) end

plugin.core.config = function()
    local status_ok, nvim_tree = pcall(require, "nvim-tree")
    if not status_ok then
        vim.notify("nvim-tree not found!")
        return
    end
    nvim_tree.setup({
    auto_reload_on_write = true,
    disable_netrw = false,
    hijack_cursor = false,
    hijack_netrw = true,
    hijack_unnamed_buffer_when_opening = false,
    ignore_buffer_on_setup = false,
    open_on_setup = false,
    open_on_setup_file = false,
    open_on_tab = false,
    sort_by = "name",
    view = {
        width = 30,
        height = 30,
        hide_root_folder = false,
        side = "left",
        preserve_window_proportions = false,
        number = false,
        relativenumber = false,
        signcolumn = "yes",
        mappings = {
            custom_only = false,
            list = list
        }
    },
    renderer = {
        indent_markers = {
            enable = false,
            icons = {corner = "└ ", edge = "│ ", none = "  "}
        },
        icons = {webdev_colors = true, git_placement = "before"}
    },
    hijack_directories = {enable = true, auto_open = true},
    update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {}
    },
    ignore_ft_on_setup = {},
    system_open = {cmd = "", args = {}},
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
            hint = "⚡",
            info = "⚛",
            warning = "⚠️",
            error = "⛔"
        }
    },
    filters = {dotfiles = false, custom = {}, exclude = {}},
    git = {enable = true, ignore = true, timeout = 400},
    actions = {
        use_system_clipboard = true,
        change_dir = {
            enable = true,
            global = false,
            restrict_above_cwd = false
        },
        open_file = {
            quit_on_open = false,
            resize_window = false,
            window_picker = {
                enable = true,
                chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
                exclude = {
                    filetype = {
                        "notify", "packer", "qf", "diff", "fugitive",
                        "fugitiveblame"
                    },
                    buftype = {"nofile", "terminal", "help"}
                }
            }
        }
    },
    trash = {cmd = "trash", require_confirm = true},
    log = {
        enable = false,
        truncate = false,
        types = {
            all = false,
            config = false,
            copy_paste = false,
            diagnostics = false,
            git = false,
            profile = false
        }
    }
      })
    require "nvim-tree.events".on_file_created(function(file) vim.cmd("edit " .. file.fname) end)

    vim.api.nvim_set_keymap('n', 'to', ":NvimTreeOpen<CR>", {
        noremap = true,
        silent = true
    })
    vim.api.nvim_set_keymap('n', 'tc', ":NvimTreeClose<CR>", {
        noremap = true,
        silent = true
    })
    vim.api.nvim_set_keymap('n', 'tfo', ":NvimTreeFocus<CR>", {
        noremap = true,
        silent = true
    })
    vim.api.nvim_set_keymap('n', 'ts', ":NvimTreeResize<CR>", {
        noremap = true,
        silent = true
    })
    vim.api.nvim_set_keymap('n', 'tr', ":NvimTreeRefresh<CR>", {
        noremap = true,
        silent = true
    })
    vim.api.nvim_set_keymap('n', 'tf', ":NvimTreeFindFile<CR>", {
        noremap = true,
        silent = true
    })


end

plugin.mapping = function() end

return plugin
-- -- default mappings
-- local list = {
--     {key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit"},
--     {key = "<C-e>", action = "edit_in_place"},
--     {key = {"O"}, action = "edit_no_picker"},
--     {key = {"<2-RightMouse>", "<C-]>"}, action = "cd"},
--     {key = "<C-v>", action = "vsplit"}, {key = "<C-x>", action = "split"},
--     {key = "<C-t>", action = "tabnew"},
--     {key = "<", action = "prev_sibling"},
--     {key = ">", action = "next_sibling"},
--     {key = "P", action = "parent_node"},
--     {key = "<BS>", action = "close_node"},
--     {key = "<Tab>", action = "preview"},
--     {key = "K", action = "first_sibling"},
--     {key = "J", action = "last_sibling"},
--     {key = "I", action = "toggle_git_ignored"},
--     {key = "H", action = "toggle_dotfiles"},
--     {key = "R", action = "refresh"}, {key = "a", action = "create"},
--     {key = "d", action = "remove"}, {key = "D", action = "trash"},
--     {key = "r", action = "rename"}, {key = "<C-r>", action = "full_rename"},
--     {key = "x", action = "cut"}, {key = "c", action = "copy"},
--     {key = "p", action = "paste"}, {key = "y", action = "copy_name"},
--     {key = "Y", action = "copy_path"},
--     {key = "gy", action = "copy_absolute_path"},
--     {key = "[c", action = "prev_git_item"},
--     {key = "]c", action = "next_git_item"}, {key = "-", action = "dir_up"},
--     {key = "s", action = "system_open"},
--     {key = "f", action = "live_filter"},
--     {key = "F", action = "clear_live_filter"},
--     {key = "q", action = "close"}, {key = "g?", action = "toggle_help"},
--     {key = "W", action = "collapse_all"},
--     {key = "S", action = "search_node"},
--     {key = "<C-k>", action = "toggle_file_info"},
--     {key = ".", action = "run_file_command"}
-- }

-- auto_reload_on_write = true,
-- disable_netrw = false,
-- hijack_cursor = false,
-- hijack_netrw = true,
-- hijack_unnamed_buffer_when_opening = false,
-- ignore_buffer_on_setup = false,
-- open_on_setup = false,
-- open_on_setup_file = false,
-- open_on_tab = false,
-- sort_by = "name",
-- view = {
--     width = 30,
--     height = 30,
--     hide_root_folder = false,
--     side = "left",
--     preserve_window_proportions = false,
--     number = false,
--     relativenumber = false,
--     signcolumn = "yes",
--     mappings = {
--         custom_only = false,
--         list = list
--     }
-- },
-- renderer = {
--     indent_markers = {
--         enable = false,
--         icons = {corner = "└ ", edge = "│ ", none = "  "}
--     },
--     icons = {webdev_colors = true, git_placement = "before"}
-- },
-- hijack_directories = {enable = true, auto_open = true},
-- update_focused_file = {
--     enable = true,
--     update_cwd = true,
--     ignore_list = {}
-- },
-- ignore_ft_on_setup = {},
-- system_open = {cmd = "", args = {}},
-- diagnostics = {
--     enable = true,
--     show_on_dirs = true,
--     icons = {
--         hint = "⚡",
--         info = "⚛",
--         warning = "⚠️",
--         error = "⛔"
--     }
-- },
-- filters = {dotfiles = false, custom = {}, exclude = {}},
-- git = {enable = true, ignore = true, timeout = 400},
-- actions = {
--     use_system_clipboard = true,
--     change_dir = {
--         enable = true,
--         global = false,
--         restrict_above_cwd = false
--     },
--     open_file = {
--         quit_on_open = false,
--         resize_window = false,
--         window_picker = {
--             enable = true,
--             chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
--             exclude = {
--                 filetype = {
--                     "notify", "packer", "qf", "diff", "fugitive",
--                     "fugitiveblame"
--                 },
--                 buftype = {"nofile", "terminal", "help"}
--             }
--         }
--     }
-- },
-- trash = {cmd = "trash", require_confirm = true},
-- log = {
--     enable = false,
--     truncate = false,
--     types = {
--         all = false,
--         config = false,
--         copy_paste = false,
--         diagnostics = false,
--         git = false,
--         profile = false
--     }
-- }
-- })
