-- This is the keybinds file

vim.g.mapleader = " "
vim.g.copilot_no_tab_map = true

-- How to make a keybind:
-- vim.keybind.set - just the function to set it up
-- FIRST ARG - mode ("n" = normal, "i" = insert, "v" = visual")
-- SECOND ARG - keybind (<leader> = vim.g.mapleader)
-- THIRD ARG - actual command (prefix with vim.cmd. then put the command name as u would usually put it in colon mode)

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>f", function()
	local current_file_path = vim.fn.expand("%:p")
	local command = "silent! !clang-format --style=file -i "
	local result =  command .. current_file_path .. " | w"
	vim.api.nvim_command(result)
end)
vim.keymap.set("n", "<leader>cc", function ()
	vim.api.nvim_command("Copilot disable")
	vim.api.nvim_command("CodeCompanionChat")
	
end)

vim.keymap.set("i", "<C-j>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})

vim.keymap.set("n", "<C-[>", vim.cmd.bprevious)
vim.keymap.set("n", "<C-]>", vim.cmd.bnext)
