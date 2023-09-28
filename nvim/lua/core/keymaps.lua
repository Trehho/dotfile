 --Window navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
-- files
vim.api.nvim_set_keymap("n", "E", "$", {noremap=false})
vim.api.nvim_set_keymap("n", "B", "^", {noremap=false})
vim.api.nvim_set_keymap("n", "st", ":TodoTelescope<CR>", {noremap=true})
-- splits
vim.keymap.set('n', '<leader>sj', ':vsplit<CR>')
vim.keymap.set('n', '<leader>sk', ':split<CR>')

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

 --Other
vim.keymap.set('n', '<c-s>', ':w<CR>', {noremap=true})
vim.keymap.set('n', '<c-q>', ':wq<CR>', {noremap=true})
