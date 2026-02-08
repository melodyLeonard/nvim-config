-- Debugging Support (DAP)
return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "williamboman/mason.nvim",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    dapui.setup()

    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end

    -- Keybindings
    local keymap = vim.keymap
    keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Debugger: Toggle Breakpoint" })
    keymap.set("n", "<leader>dc", dap.continue, { desc = "Debugger: Continue" })
    keymap.set("n", "<leader>di", dap.step_into, { desc = "Debugger: Step Into" })
    keymap.set("n", "<leader>do", dap.step_over, { desc = "Debugger: Step Over" })
    keymap.set("n", "<leader>dt", dap.terminate, { desc = "Debugger: Terminate" })
    keymap.set("n", "<leader>du", dapui.toggle, { desc = "Debugger: Toggle UI" })
  end,
}
