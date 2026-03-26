local dap = require("dap")
local dapui = require("dapui")
local dap_lldb = require("dap-lldb")

dapui.setup()
dap_lldb.setup()

dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

vim.keymap.set('n', '<Leader>db', function() dap.toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>dc', dap.continue, {});

--dap.adapters.codelldb = {
 -- type = "executable",
  --command = "/Users/onionlord/.local/share/nvim/mason/packages/codelldb/codelldb",
--}
--
--dap.configurations.cpp = {
	--{
		--type = "codelldb",
		--request = "launch",
		--program = function ()
			--return vim.fn.input("Executable path: ", vim.fn.cwd() .. "/", "file")
		--end,
		--cwd = "${workspaceFolder}",
		--terminal = "external"
	--}
--}

