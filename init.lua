-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load core configuration
require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.autocmds")

