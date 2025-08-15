return {
    { 
        "rebelot/kanagawa.nvim", 
        config = function () 
            vim.cmd.colorscheme("kanagawa-wave")
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require('lualine').setup()
        end
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    }
}
