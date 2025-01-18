return function()
  require("vscode").setup({
    transparent = true, -- Set to `true` for transparent background
    italic_comments = true, -- Enable italic comments
    color_overrides = {
      vscLineNumber = '#000000',
    },
    group_overrides = {
      Cursor = { fg = "#000080", bg = "#90ee90", bold = true },
    },
  })
  -- Apply the theme
  vim.cmd("colorscheme vscode")
end
