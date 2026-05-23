vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')


vim.keymap.set('n', '<leader>d', ':Ex<CR>', { desc = 'open [d]irectory' })

-- let's you move up and down highlighted text with J and K
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z') --make J not move the cursor
vim.keymap.set('n', '<C-d>', '<C-d>zz') -- <C-d> and <C-u> will stay in the middle
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv') -- search terms in the middle
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('x', '<leader>p', [["_dP]], {desc = 'paste over deleting to voice'}) -- paste over deleting into the void
-- vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]]) --delete to void

vim.keymap.set('i', '<C-c>', '<Esc>') -- remaping ctrl-c to esc

vim.keymap.set('n', '<leader>rr', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) --search adn replace highlighted


--NOTE: latex stuff
vim.keymap.set({ 'n', 'v' }, 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true })
vim.keymap.set({ 'n', 'v' }, 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set({ 'n', 'v' }, '^', 'g^')

