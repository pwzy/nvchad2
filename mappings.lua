---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- mapping for pwzy
    --
    ["<leader>ss"] = { "<cmd> w <CR>", "Save file", opts = { nowait = true } },

    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree", opts = { nowait = true } },
    -- ["<leader>e"] = { "<cmd> NnnExplorer <CR>", "NnnExplorer", opts = { nowait = true } },
    -- Vista
    ["<leader>tg"] = { ":Vista!! <CR>", "Toggle vista view window", opts = { nowait = true } },
    -- Rnvimr
    ["<leader>rg"] = { ":RnvimrToggle <CR>", "RnvimrToggle", opts = { nowait = true } },
    -- Telescope
    ["<leader>cc"] = { ":Telescope commands <CR>", "Telescope commands", opts = { nowait = true } },
    ["<leader>ck"] = { ":Telescope keymaps <CR>", "Telescope keymaps", opts = { nowait = true } },
    ["<leader>co"] = { ":Telescope options <CR>", "Telescope options", opts = { nowait = true } },

  },

}

-- more keybinds!
M.dap = {
  n = {
    ["<leader>dc"] = { "<cmd> DapContinue <CR>", "DapContinue ", opts = { nowait = true } },
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>", "DapToggleBreakpoint ", opts = { nowait = true } },
    ["<leader>ds"] = { "<cmd> DapStepOver <CR>", "DapStepOver ", opts = { nowait = true } },
    ["<leader>dt"] = { "<cmd> DapTerminate <CR>", "DapTerminate ", opts = { nowait = true } },
  },
}

M.dapui = {

  n = {
    ['<M-k>'] = {
      function()
        require("dapui").eval()
      end,
      "Eval expression in normal mode"
    },
  },

  v = {
    ['<M-k>'] = {
      function()
        require("dapui").eval()
      end,
      "Eval expression in visual mode"
    },
  },

}

return M
