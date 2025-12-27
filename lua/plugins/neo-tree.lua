-- Neo-tree file explorer
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        hijack_netrw_behavior = "open_current",
        use_libuv_file_watcher = true,
      },
      window = {
        width = 30,
        mappings = {
          ["<space>"] = "none",
        },
      },
    })

    local keymap = vim.keymap
    keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" })
    keymap.set("n", "<leader>ef", "<cmd>Neotree reveal<CR>", { desc = "Reveal current file in explorer" })



    -- Open Neo-tree on startup (scheduled to run after session restore)
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        vim.schedule(function()
          local is_open = false
          for _, buf in ipairs(vim.api.nvim_list_bufs()) do
            local loaded = vim.api.nvim_buf_is_loaded(buf)
            if loaded and vim.api.nvim_buf_get_option(buf, "filetype") == "neo-tree" then
              is_open = true
              break
            end
          end
          if not is_open then
            vim.cmd("Neotree show")
          end
        end)
      end,
    })
  end,
}
