---@type MappingsTable
local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    -- Disable default cycle through buffers
    ["<tab>"] = "",
  }
}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- mapping for pwzy
    --
    ["<leader>s"] = { "<cmd> w <CR>", "Save file", opts = { nowait = true } },

    ["<leader>e"] = { "<cmd> NeoTreeFocusToggle <CR>", "Toggle neo-tree", opts = { nowait = true } },
    -- ["<leader>e"] = { "<cmd> NnnExplorer <CR>", "NnnExplorer", opts = { nowait = true } },
    -- Vista
    ["<leader>tg"] = { ":Vista!! <CR>", "Toggle vista view window", opts = { nowait = true } },
    -- Rnvimr
    ["<leader>rg"] = { ":RnvimrToggle <CR>", "RnvimrToggle", opts = { nowait = true } },
    -- Telescope
    ["<leader>cc"] = { ":Telescope commands <CR>", "Telescope commands", opts = { nowait = true } },
    ["<leader>ck"] = { ":Telescope keymaps <CR>", "Telescope keymaps", opts = { nowait = true } },
    ["<leader>co"] = { ":Telescope vim_options <CR>", "Telescope vim_options", opts = { nowait = true } },
    ["<leader>ch"] = { ":Telescope help_tags <CR>", "Telescope help_tags", opts = { nowait = true } },

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
    
    -- Toggle DapUI
    ["<leader>du"] = { "<cmd> lua require('dapui').toggle() <CR>", "Toggle DapUI", opts = { nowait = true } },
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
