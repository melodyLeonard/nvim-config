return {
  { "sainnhe/gruvbox-material", as = "gruvbox-material", lazy = false },
  { "nyoom-engineering/oxocarbon.nvim", lazy = false },
  { "projekt0n/github-nvim-theme", lazy = false },
  { "tanvirtin/monokai.nvim", lazy = false },
  { "navarasu/onedark.nvim", lazy = false },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "AlexvZyl/nordic.nvim",
    config = function()
      require("nordic").load()
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("gruvbox-material")
      vim.cmd.colorscheme("oxocarbon")
    end,
  },
}
