return {
    'nvim-treesitter/nvim-treesitter', 
    build = ':TSUpdate',
    config = function()
    local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"lua", "java", "c", "bash", "php", "html", "python"},
            sync_install = true,
            highlight={enable=true},
            indent={enable=true},
        })
    end
}
