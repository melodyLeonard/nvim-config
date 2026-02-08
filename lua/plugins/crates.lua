-- Rust Crate Dependency Management
return {
  "saecki/crates.nvim",
  event = { "BufRead Cargo.toml" },
  opts = {
    lsp = {
      enabled = true,
      on_attach = function(client, bufnr)
      end,
      actions = true,
      completion = true,
      hover = true,
    },
  },
  config = function(_, opts)
    local crates = require("crates")
    crates.setup(opts)
    
    -- Keybindings
    local keymap = vim.keymap
    keymap.set("n", "<leader>ct", crates.toggle, { desc = "Crates: Toggle" })
    keymap.set("n", "<leader>cr", crates.reload, { desc = "Crates: Reload" })
    keymap.set("n", "<leader>cv", crates.show_versions_popup, { desc = "Crates: Show Versions" })
    keymap.set("n", "<leader>cf", crates.show_features_popup, { desc = "Crates: Show Features" })
    keymap.set("n", "<leader>cd", crates.show_dependencies_popup, { desc = "Crates: Show Dependencies" })
    keymap.set("n", "<leader>cu", crates.update_crate, { desc = "Crates: Update Crate" })
    keymap.set("v", "<leader>cu", crates.update_crates, { desc = "Crates: Update Crates" })
    keymap.set("n", "<leader>ca", crates.update_all_crates, { desc = "Crates: Update All Crates" })
    keymap.set("n", "<leader>cU", crates.upgrade_crate, { desc = "Crates: Upgrade Crate" })
    keymap.set("v", "<leader>cU", crates.upgrade_crates, { desc = "Crates: Upgrade Crates" })
    keymap.set("n", "<leader>cA", crates.upgrade_all_crates, { desc = "Crates: Upgrade All Crates" })
  end,
}
