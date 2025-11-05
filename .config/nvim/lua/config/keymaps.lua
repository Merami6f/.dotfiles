vim.g.mapleader = " "
vim.g.localmapleader = " "

local opts = { noremap = true }

--Telescope
vim.keymap.set("n", "<leader>ff", "<Cmd>:Telescope find_files<CR>", { desc = "Find File DIR" })
vim.keymap.set("n", "<leader>t", "<Cmd>:Telescope<CR>", { desc = "Telescope" })
vim.keymap.set("n", "<leader>fb", "<Cmd>:Telescope buffers<CR>", { desc = "Lists buffer with Telescope" })
vim.keymap.set("n", "<leader>fg", "<Cmd>:Telescope live_grep<CR>", { desc = "live_greb with Telescope" })
vim.keymap.set("n", "<leader>fh", "<Cmd>:Telescope help_tags<CR>", { desc = " Lists help with Telescope" })
vim.keymap.set("n", "<leader>fd", "<Cmd>:Telescope diagnostics<CR>", { desc = "Telescope Lsp diagnostic list" })

-- Lsp
-- vim.keymap.set("n", "gl", function() vim.diagnostic.open_float() end)
vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", { desc = "Show hover" })
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", { desc = "Goto definition" })
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", { desc = "Goto Declaration" })
vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", { desc = "Goto references" })
vim.keymap.set("n", "gI", "<cmd>lua vim.lsp.buf.implementation()<cr>", { desc = "Goto Implementation" })
vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", { desc = "show signature help" })
