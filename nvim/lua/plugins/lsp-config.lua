--this file loads the mason plugin and contains all lsp related configgers
return {
   {
   "williamboman/mason.nvim",
   config = function()
   require("mason").setup()
   end
   },
   {
   "williamboman/mason-lspconfig.nvim",
   config = function()
   require("mason-lspconfig").setup({
      ensure_installed = {
      --https://github.com/williamboman/mason-lspconfig.nvim
      --contains a list of all lsp servers in case you want to add more
      "lua_ls", "clangd", "gradle_ls", "html", "jdtls", "bashls", "ts_ls", "rust_analyzer", "arduino_language_server"
      }
   })
   end
   },
   {
   "neovim/nvim-lspconfig",
   config = function()
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
      vim.keymap.set('n', 'ge', vim.diagnostic.open_float, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.gradle_ls.setup({})
      lspconfig.html.setup({})
      lspconfig.jdtls.setup({
         root_dir = function(fname)
                  return require('lspconfig.util').root_pattern('pom.xml', 'build.gradle', '.git')(fname)
         end,
      })
      lspconfig.bashls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.arduino_language_server.setup({})
      --lspconfig.ocamllsp.setup({})
   end
   }
}
