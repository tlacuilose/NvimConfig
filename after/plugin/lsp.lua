local lsp = require('lsp-zero').preset({
    manage_nvim_cmp = {
        set_extra_mappings = true
    }
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
  local opts = {buffer = bufnr}

  vim.keymap.set({"n", "x"}, '<leader>ll', function()
      vim.lsp.buf.format({async = false, timeout_ms = 10000})
  end, opts)
end)

lsp.ensure_installed({
    'rust_analyzer'
})


lsp.format_on_save({
    format_opts = {
        async = false,
        timeout_ms = 10000,
    },
    servers = {
        ['gopls'] = {'go'},
    }
})

local lspconfig = require('lspconfig')

-- (Optional) Configure lua language server for neovim
lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

lspconfig.dartls.setup{}


lsp.setup()

local cmp = require('cmp')

cmp.setup({
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({select = false}),
    }
})
