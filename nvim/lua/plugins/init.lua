-- Plugin management
require("lazy").setup({
  -- Theme
  { "Mofiqul/vscode.nvim", config = require("plugins.theme") },

  -- LSP, Treesitter, and related plugins
  { "neovim/nvim-lspconfig", config = require("plugins.lsp") },
  { "hrsh7th/nvim-cmp", dependencies = { "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer", "hrsh7th/cmp-path", "hrsh7th/cmp-cmdline" }, config = require("plugins.cmp") },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", config = require("plugins.treesitter") },
  { "nvim-treesitter/nvim-treesitter-textobjects" },

  -- Telescope
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }, config = require("plugins.telescope") },

  -- Miscellaneous
  { "jiangmiao/auto-pairs" },
  { "numToStr/Comment.nvim", config = require("plugins.comment") },
})
