require("nvim-tree").setup({
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 50,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

vim.cmd("highlight NvimTreeNormal guibg=NONE ctermbg=NONE")
vim.cmd("highlight NvimTreeNormalNC guibg=NONE ctermbg=NONE")
vim.cmd("highlight NvimTreeWinSeparator guibg=NONE ctermbg=NONE")
