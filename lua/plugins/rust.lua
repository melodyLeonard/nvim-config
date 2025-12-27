return {
  "mrcjkb/rustaceanvim",
  version = "^4", -- Recommended
  ft = { "rust" },
  config = function()
    vim.g.rustaceanvim = {
      -- Plugin configuration
      tools = {
      },
      -- LSP configuration
      server = {
        on_attach = function(client, bufnr)
          -- You can set keymaps here if you want distinct ones for Rust
          -- But the ones in lsp.lua might already cover most basics if they attach to the buffer
        end,
        default_settings = {
          -- rust-analyzer language server configuration
          ['rust-analyzer'] = {
            cargo = {
                allFeatures = true,
            },
          },
        },
      },
      -- DAP configuration
      dap = {
      },
    }
  end
}
