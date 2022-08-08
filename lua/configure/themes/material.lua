local plugin = {}

plugin.core = {"marko-cerovac/material.nvim"}

plugin.mapping = function()

end

plugin.core.setup = function()

end

plugin.core.config = function()
    require('material').setup({

        contrast = {
            sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
            floating_windows = false, -- Enable contrast for floating windows
            line_numbers = false, -- Enable contrast background for line numbers
            sign_column = false, -- Enable contrast background for the sign column
            cursor_line = false, -- Enable darker background for the cursor line
            non_current_windows = false, -- Enable darker background for non-current windows
            popup_menu = false -- Enable lighter background for the popup menu
        },

        italics = {
            comments = true, -- Enable italic comments
            keywords = false, -- Enable italic keywords
            functions = false, -- Enable italic functions
            strings = false, -- Enable italic strings
            variables = false -- Enable italic variables
        },

        contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
        "terminal", -- Darker terminal background
        "packer", -- Darker packer background
        "qf" -- Darker qf list background
        },

        high_visibility = {
            lighter = false, -- Enable higher contrast text for lighter style
            darker = false -- Enable higher contrast text for darker style
        },

        disable = {
            colored_cursor = false, -- Disable the colored cursor
            borders = false, -- Disable borders between verticaly split windows
            background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
            term_colors = false, -- Prevent the theme from setting terminal colors
            eob_lines = false -- Hide the end-of-buffer lines
        },

        lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

        async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

        custom_highlights = {} -- Overwrite highlights with your own
    })
    -- vim.cmd("packadd material")
    if vim.g.theme == 'light' then
        vim.g.material_style = 'lighter'
    elseif vim.g.theme == 'midium' then
        vim.g.material_style = 'palenight'
    else
        vim.g.material_style = 'darker'
    end
    vim.cmd("colorscheme material")
    -- Lua:
    vim.api.nvim_set_keymap('n', '<leader>ml', [[<Cmd>lua require('material.functions').change_style('lighter')<CR>]], {
        noremap = true,
        silent = true
    })
    vim.api.nvim_set_keymap('n', '<leader>md', [[<Cmd>lua require('material.functions').change_style('darker')<CR>]], {
        noremap = true,
        silent = true
    })

end
return plugin
