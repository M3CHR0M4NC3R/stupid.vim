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
      "lua_ls", "clangd", "gradle_ls", "html", "jdtls", "basedpyright", "bashls"
      }
   })
   end
   },
   {
   "neovim/nvim-lspconfig",
   config = function()
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.gradle_ls.setup({})
      lspconfig.jdtls.setup({})
   end
   }
}
