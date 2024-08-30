require('nvim-tree').setup({
    filters = {
        dotfiles = true,
    },
})

vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<C-h>", vim.cmd.NvimTreeFocus, { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>p", { noremap = true, silent = true})
