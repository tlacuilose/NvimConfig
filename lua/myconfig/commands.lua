function MarkdownPreview()
    local current_file = vim.fn.expand('%')
    local marko_command = 'open -a "Marko"'

    vim.fn.system(marko_command .. ' ' .. vim.fn.shellescape(current_file))
end

vim.api.nvim_create_user_command('Marko', MarkdownPreview, {})
