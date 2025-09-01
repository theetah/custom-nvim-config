return {
  -- This great set of plugins won't work unless I do this file separation terribleness.
  -- They doesn't seem to like having setups called within one file!
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")

    -- Keymaps
    -- vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle a breakpoint" })
    -- vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue the debugging process" })

    -- Change what nvim-dap uses for its signs
    vim.fn.sign_define("DapBreakpoint", {
      text = "",
      texthl = "DiagnosticSignError",
      linehl = "",
      numhl = "",
    })

    vim.fn.sign_define("DapBreakpointRejected", {
      text = "",
      texthl = "DiagnosticSignError",
      linehl = "",
      numhl = "",
    })

    vim.fn.sign_define("DapStopped", {
      text = "󱕊",
      texthl = "DiagnosticSignWarn",
      linehl = "Visual",
      numhl = "DiagnosticSignWarn",
    })
  end,
}
