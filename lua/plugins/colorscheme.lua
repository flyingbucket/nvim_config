return {
    -- gruvbox setup
    {
        "ellisonleao/gruvbox.nvim",
        priority = 100, -- 确保它在其他插件之前加载
        config = function()
            require("gruvbox").setup({
                terminal_colors = true, -- 添加 Neovim 终端颜色
                undercurl = true,
                underline = true,
                bold = true,
                italic = {
                    strings = true,
                    emphasis = true,
                    comments = true,
                    operators = false,
                    folds = true,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true, -- 反转搜索、高亮、diff、状态栏和错误的背景色
                contrast = "", -- 可选 "hard"、"soft" 或 ""
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = true, -- 透明背景
            })

            -- 设置主题
            -- vim.cmd("colorscheme gruvbox")
        end,
    },
    -- Install without configuration
    -- { 'projekt0n/github-nvim-theme', name = 'github-theme' }

    -- Or with configuration
    {
        "projekt0n/github-nvim-theme",
        name = "github-theme",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require("github-theme").setup({
                -- ...
            })

            vim.cmd("colorscheme github_dark_colorblind")
        end,
    },
}
