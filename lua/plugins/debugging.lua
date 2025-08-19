return {
    { 'mfussenegger/nvim-dap',
        dependencies = {
            { 'theHamsta/nvim-dap-virtual-text' },
        },
        config = function ()
            require('nvim-dap-virtual-text').setup({ commented = true })
        end
    },

    { "nvim-dap-ui", dependencies = { 'nvim-neotest/nvim-nio' },
        config = function ()
            require("dapui").setup()
        end
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        opts = {
            handlers = {},
            automatic_installation = {
            },
            ensure_installed = {
                "python",
                "java-script",
            },
        },
        dependencies = {
            "mfussenegger/nvim-dap",
            "williamboman/mason.nvim",
        },
    }
}
