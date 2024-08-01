return { 
   "ellisonleao/gruvbox.nvim",
   priority = 1000 ,
   config = function()
   local config = require("gruvbox").setup({
      transparent_mode = true,
   })
   --vim.cmd.colorscheme "gruvbox"
   --vim.o.background = "dark"
   end,
    }
