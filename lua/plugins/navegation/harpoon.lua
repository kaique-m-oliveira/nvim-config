vim.pack.add({
  {
    src = "https://github.com/ThePrimeagen/harpoon",
    version = "harpoon2",
  },
})


local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end, { desc = "Harpoon add file" })

vim.keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon menu" })

for i = 1, 9 do
  vim.keymap.set("n", string.format("<leader>%d", i), function()
    harpoon:list():select(i)
  end, { desc = "Harpoon file " .. i })
end

-- Alternate between previous/next harpoon buffers
local harpoon_cycle_direction = "prev"

vim.keymap.set("n", "<leader><Tab>", function()
  if harpoon_cycle_direction == "prev" then
    harpoon:list():prev()
    harpoon_cycle_direction = "next"
  else
    harpoon:list():next()
    harpoon_cycle_direction = "prev"
  end
end, { desc = "Cycle harpoon buffers" })
