---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>",  "window left" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>",  "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>",    "window up" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    }

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
