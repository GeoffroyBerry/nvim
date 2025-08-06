local dap = require("dap")
local ui = require("dapui")
local dap_virtual_text = require("nvim-dap-virtual-text")

vim.keymap.set('n', '<leader>dt', function()
		dap.toggle_breakpoint()
	end)

-- Dap Virtual Text
dap_virtual_text.setup()


-- Configurations
local lldb_config = {
		{
			name = "Launch file",
			type = "cppdbg",
			request = "launch",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
			end,
			cwd = "${workspaceFolder}",
			stopAtEntry = false,
			MIMode = "lldb",
		},
		{
			name = "Attach to lldbserver :2173",
			type = "cppdbg",
			request = "launch",
			MIMode = "lldb",
			miDebuggerServerAddress = "localhost:2173",
			miDebuggerPath = "/usr/bin/lldb",
			cwd = "${workspaceFolder}",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
			end,
		},
	}
dap.configurations = {
		c = lldb_config,
}

-- Dap UI

ui.setup()

vim.fn.sign_define("DapBreakpoint", { text = "🐞" })

dap.listeners.before.attach.dapui_config = function()
	ui.open()
end
dap.listeners.before.launch.dapui_config = function()
	ui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
	ui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
	ui.close()
end
