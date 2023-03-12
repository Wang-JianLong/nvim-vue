vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  actions = {
    open_file = {quit_on_open = true}
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
