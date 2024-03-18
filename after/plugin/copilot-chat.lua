require('CopilotChat').setup {
    debug = true,
}

vim.api.nvim_create_autocmd('BufEnter', {
    pattern = 'copilot-*',
    callback = function()
        vim.opt_local.relativenumber = true
    end
})
