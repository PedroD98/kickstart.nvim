-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
local keymap = vim.keymap
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Window navigation
keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Buffer navigation
keymap.set("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Go to next buffer" })
keymap.set("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Go to previous buffer" })

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Resize window
keymap.set("n", "<C-left>", "<C-W><", { desc = "Resize to the left" })
keymap.set("n", "<C-right>", "<C-W>>", { desc = "Resize to the right" })
keymap.set("n", "<C-up>", "<C-W>+", { desc = "Resize up" })
keymap.set("n", "<C-down>", "<C-W>-", { desc = "Resize down" })

-- Create empty lines
keymap.set("n", "<leader>o", ":put _<cr>", { desc = "Insert empty line below" })
keymap.set("n", "<leader>O", ":-put _<cr>", { desc = "Insert empty line above" })

-- Save file
keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })

-- Delete group keymaps
keymap.set("n", "<leader>db", "<cmd>bp|bd#<CR>", { desc = "[D]elete current buffer" })
keymap.set("n", "<leader>dB", "<cmd>%bd|e#|Neotree reveal<CR>", { desc = "[D]elete all other buffers" })

-- Code group keymaps
keymap.set("n", "<leader>cm", "<cmd>Mason<CR>", { desc = "Mason" })
keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "Code actions" })

-- Lazy
keymap.set("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Lazy" })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })
