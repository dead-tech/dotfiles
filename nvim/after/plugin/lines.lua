vim.diagnostic.config({
        virtual_text = false
})

vim.keymap.set(
  "",
  "<leader>l",
  require("lsp_lines").toggle,
  { desc = "Toggle lsp_lines" }
)
