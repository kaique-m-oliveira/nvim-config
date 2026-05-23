vim.pack.add({
  "https://github.com/mbbill/undotree",
})

vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle, {
  desc = "Toggle Undotree",
})
