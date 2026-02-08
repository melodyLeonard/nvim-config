-- Enable loader for faster startup
vim.loader.enable()

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load core configuration
require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.autocmds")

