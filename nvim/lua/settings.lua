-- General settings
local opt = vim.opt
opt.syntax = "on"
opt.number = true
opt.relativenumber = true
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.hlsearch = true
opt.ignorecase = true
opt.incsearch = true
opt.hidden = true
opt.mouse = "a"
opt.splitbelow = true
opt.splitright = true
opt.title = true
opt.ttimeoutlen = 0
opt.wildmenu = true
opt.clipboard = "unnamedplus"
opt.completeopt = { "noinsert", "menuone", "noselect" }
opt.inccommand = "split"
opt.termguicolors = true
opt.swapfile = true
opt.cursorline = false

-- Disable unused built-in plugins
local disabled_plugins = {
  "gzip", "tar", "tarPlugin", "zip", "zipPlugin",
  "netrw", "netrwPlugin", "matchit", "matchparen",
  "2html_plugin", "logiPat", "rrhelper", "vimball", "vimballPlugin"
}

for _, plugin in ipairs(disabled_plugins) do
  vim.g["loaded_" .. plugin] = 1
end
