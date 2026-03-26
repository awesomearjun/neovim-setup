-- Default vim options

vim.cmd("set shiftwidth=4")
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.g.netrw_liststyle = 3
vim.opt.relativenumber = true

-- gutter colors
vim.api.nvim_set_hl(0, "LineNr", {fg = "#cccccc"}) -- line number of current line

vim.o.scrolloff = 999

