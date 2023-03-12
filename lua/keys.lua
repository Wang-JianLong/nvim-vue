local map = vim.keymap.set

map('n',';e',':NvimTreeToggle<cr>')
map("n", "tf", "<cmd>lua require('alternate-toggler').toggleAlternate()<CR>")
