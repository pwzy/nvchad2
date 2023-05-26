local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- Installed by pwzy
  -- 快速跳转，<leader><leader>w
  {
    "phaazon/hop.nvim",
    event = "BufEnter",
    branch = 'v2',
    config = function()
      require'hop'.setup {}
      require "custom.configs.hop"
    end,
  },

  -- 快速选中相邻对象
  {
    "gcmt/wildfire.vim",
    event = "BufEnter",
  },

  -- 高亮复制后的区域
  {
    "machakann/vim-highlightedyank",
    event = "BufEnter",
    config = function ()
        vim.g.highlightedyank_highlight_duration = 1000
    end,
  },

  -- 文本对齐
  {
    "junegunn/vim-easy-align",
    event = "BufEnter",
    config = function ()
      vim.cmd([[
      nmap ga <Plug>(EasyAlign)
      xmap ga <Plug>(EasyAlign)
      ]])
    end,
  },

  -- 远程复制插件
  {
    "ojroques/vim-oscyank",
    event = "BufEnter",
  },

  -- 增强 Vim 的书签(标记)跳转功能
  {
    "kshenoy/vim-signature",
    event = "BufEnter",
  },

  -- 多光标操作
  {
    "mg979/vim-visual-multi",
    event = "BufEnter",
  },
  
  -- 更改成对符号
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },

  -- 利用f快速移动
  {
    "unblevable/quick-scope",
    event = "BufEnter",
  },

  -- 大纲式导航
  {
    "liuchengxu/vista.vim",
    event = "BufEnter",
  },
  
  -- 文件浏览器
  {
    "kevinhwang91/rnvimr",
    event = "BufEnter",
  },

  {
    "luukvbaal/nnn.nvim",
    event = "BufEnter",
    config = function()
     require("nnn").setup()
    end,
  },
  
  {
    "nvim-neo-tree/neo-tree.nvim",
    event = "VeryLazy",
    branch = "v2.x",
    opts = {
      -- add any options here
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
  },

  -- noice
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },
  
  -- Debug plugin
  {
    "mfussenegger/nvim-dap",
    lazy = false,
    config = function()
      require "custom.configs.nvim-dap"
    end,
  },

  {
    "mfussenegger/nvim-dap-python",
    after = "nvim-dap",
    lazy = false,
    config = function()
      require "custom.configs.nvim-dap-python"
    end,
  },

  {
    "rcarriga/nvim-dap-ui",
    lazy = false,
    config = function()
      require "custom.configs.nvim-dap-ui"
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
