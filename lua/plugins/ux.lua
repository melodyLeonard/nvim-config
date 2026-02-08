-- UX and Aesthetic Enhancements
return {
  -- Smart word highlighting
  {
    "RRethy/vim-illuminate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("illuminate").configure({
        delay = 200,
        large_file_cutoff = 2000,
      })
    end,
  },

  -- Surround actions
  { "tpope/vim-surround", event = "VeryLazy" },

  -- Highlight argument definitions
  {
    "m-demare/hlargs.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("hlargs").setup()
    end,
  },

  -- Cursor jump highlight
  {
    "danilamihailov/beacon.nvim",
    event = "VeryLazy",
  },
}
