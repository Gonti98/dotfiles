require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- Tab mapping
map("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "New tab" })
map("n", "<leader>to", "<cmd>tabonly<cr>", { desc = "Close all other tabs" })
map("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "Close current tab" })
map("n", "<leader>tl", "<cmd>tabnext<cr>", { desc = "Next tab" })
map("n", "<leader>th", "<cmd>tabprevious<cr>", { desc = "Previous tab" })

-- Telescope
map("n", "<leader>tt", "<cmd>Telescope<cr>", { desc = "Open Telescope" })

