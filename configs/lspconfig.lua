local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "pyright" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Setting for lsp diagnostic 设置不显示诊断信息
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
 vim.lsp.diagnostic.on_publish_diagnostics, {
   -- Enable underline, use default values
   underline = false,
   -- Enable virtual text, override spacing to 4
   virtual_text = false,
   -- Disable a feature
   signs = false,
 }
)

-- 
-- lspconfig.pyright.setup { blabla}
-- setting from https://github.com/LoneExile/nvim/blob/fc4cc0386b563b439bc993b81bc987dc30b0331d/lua/LoneExile/lsp/servers/pyright.lua#L5
-- and https://github.com/t184256/nix-configs/blob/09cec3ed3f125612465ea857dddd3f8d9016d323/user/neovim.nix#L129

-- lspconfig.pyright.setup({
--   cmd = { 'pyright-langserver', '--stdio' },
--   filetypes = { 'python' },
--   root_dir = function(fname)
--     return lspconfig.util.root_pattern('pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', '.git')(fname)
--       or lspconfig.util.path.dirname(fname)
--   end,
--   settings = {
--     python = {
--       analysis = {
--         autoSearchPaths = true,
--         useLibraryCodeForTypes = true,
--         -- typeCheckingMode = 'off',
--         diagnosticMode = 'workspace',
--       },
--     },
--   },
-- })

-- lspconfig.pyright.setup{
--             on_attach = on_attach,
--             settings = {
--               python = {
--                 analysis = {
--                   typeCheckingMode = 'basic',
--                   diagnosticSeverityOverrides = {
--                     reportConstantRedefinition = 'warning',
--                     reportDuplicateImport = 'warning',
--                     reportMissingSuperCall = 'warning',
--                     reportUnnecessaryCast = 'warning',
--                     reportUnnecessaryComparison = 'warning',
--                     reportUnnecessaryContains = 'warning',
--                     reportCallInDefaultInitializer = 'info',
--                     reportFunctionMemberAccess = 'info',
--                     reportImportCycles = 'info',
--                     reportMatchNotExhaustive = 'info',
--                     reportShadowedImports = 'info',
--                     reportUninitializedInstanceVariable = 'info',
--                     reportUnnecessaryIsInstance = 'info',
--                     reportUnusedClass = 'info',
--                     reportUnusedFunction = 'info',
--                     reportUnusedImport = 'info',
--                     reportUnusedVariable = 'info',
--                   },
--                 },
--               },
--             },
--           }

-- lspconfig.pyright.setup({
--   cmd = { 'pyright-langserver', '--stdio' },
--   filetypes = { 'python' },
--   -- root_dir = function(fname)
--   --   return lspconfig.util.root_pattern('pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', '.git')(fname)
--   --     or lspconfig.util.path.dirname(fname)
--   -- end,
--   settings = {
--     python = {
--       analysis = {
--         autoSearchPaths = true,
--         diagnosticMode = "workspace",
--         useLibraryCodeForTypes = true,
--         -- extra setting for pwzy, can be found in https://microsoft.github.io/pyright/#/settings
--         -- typeCheckingMode = 'off',
--         reportUnusedImport = 'none',
--       },
--     },
--   },
-- })
