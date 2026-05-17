return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- java shared workspace fix
            require("lspconfig").jdtls.setup({
                init_options = {
                    workspace = vim.fn.stdpath("cache") .. "/jdtls-workspace/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t"),
                },
            })
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
}
