return {
  "mrcjkb/rustaceanvim",
  version = "^5", -- Recommended for Neovim 0.10+
  lazy = false, -- This plugin is already lazy
  config = function()
    vim.g.rustaceanvim = {
      -- DAP configuration
      dap = {
        adapter = {
          type = "server",
          port = "${port}",
          executable = {
            command = vim.fn.stdpath("data") .. "/mason/packages/codelldb/extension/adapter/codelldb",
            args = { "--port", "${port}" },
          },
        },
      },
      -- LSP configuration
      server = {
        on_attach = function(client, bufnr)
          local opts = { silent = true, buffer = bufnr }
          vim.keymap.set("n", "<leader>ca", function() vim.cmd.RustLsp('codeAction') end, opts)
          vim.keymap.set("n", "K", function() vim.cmd.RustLsp('hover', 'actions') end, opts)
          vim.keymap.set("n", "gH", function() vim.cmd.RustLsp('hover', 'actions') end, opts)
          vim.keymap.set("n", "<leader>rd", function() vim.cmd.RustLsp('debuggables') end, opts)
        end,
        default_settings = {
          -- rust-analyzer language server configuration
          ['rust-analyzer'] = {
            cargo = {
              allFeatures = true,
              loadOutDirsFromCheck = true,
              buildScripts = {
                enable = true,
              },
            },
            -- Add clippy lints for Rust if you want to use it
            checkOnSave = {
              command = "clippy",
            },
            procMacro = {
              enable = true,
            },
          },
        },
      },
    }
  end
}
