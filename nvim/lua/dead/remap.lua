vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", ":w<Enter>")
vim.keymap.set("n", "<leader>q", ":q<Enter>")

-- Open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move lines while selected
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Retain cursor position when:
-- - Flattening multiple lines
vim.keymap.set("n", "J", "mzJ`z")
-- - Jumping half a page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- - Searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Retain copied text when pasting
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "Q", "<nop>")

-- Replace current word
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Allow esc to exit terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-N>")
