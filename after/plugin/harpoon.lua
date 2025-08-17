local harpoon = require("harpoon")

vim.keymap.set("n", "<leader>r", function() harpoon:list():remove() end,
{ desc = "Remove from harpoon list" })

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end,
{ desc = "Remove from harpoon list" })
-- jump between files
for i=1,9 do
    vim.keymap.set("n", "<leader>" .. i, function ()
        harpoon:list():select(i)
    end, { desc = "Jump to " .. i .. " file in harpoon list"})
end
