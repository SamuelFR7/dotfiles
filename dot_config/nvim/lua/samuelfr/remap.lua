vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>f", '<cmd>FormatWrite<CR>', { silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<F5>', '<cmd>lua require("dap").continue()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<F10>', '<cmd>lua require("dap").step_over()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<F11>', '<cmd>lua require("dap").step_into()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<F12>', '<cmd>lua require("dap").step_out()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<F9>', '<cmd>lua require("dap").toggle_breakpoint()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>du', '<cmd>lua require("dapui").toggle()<CR>', { noremap = true, silent = true })

