-- lazy.nvim is not in the recommended package managers for this package, so this may be erroneous.
-- Mostly needed for facilitating diff-mode

return {
    "https://github.com/sindrets/diffview.nvim.git",
    lazy = true,

    dependencies = { "https://github.com/nvim-tree/nvim-web-devicons.git" },
};
