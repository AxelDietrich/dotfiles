return function()
  local lspconfig = require("lspconfig")
  local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

  local function on_attach(client, bufnr)
    local keymap = vim.keymap.set
    local opts = { noremap = true, silent = true, buffer = bufnr }
    keymap("n", "gD", vim.lsp.buf.declaration, opts)
    keymap("n", "gd", vim.lsp.buf.definition, opts)
    keymap("n", "K", vim.lsp.buf.hover, opts)
    keymap("n", "gi", vim.lsp.buf.implementation, opts)
    keymap("n", "<C-k>", vim.lsp.buf.signature_help, opts)
    keymap("n", "<space>rn", vim.lsp.buf.rename, opts)
    keymap("n", "<space>ca", vim.lsp.buf.code_action, opts)
    keymap("n", "gr", vim.lsp.buf.references, opts)
    keymap("n", "<space>f", vim.lsp.buf.formatting, opts)
  end

  lspconfig.clangd.setup({ capabilities = capabilities, on_attach = on_attach })
  lspconfig.gopls.setup({ capabilities = capabilities, on_attach = on_attach })
end
