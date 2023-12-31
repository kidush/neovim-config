-- Lazy config --
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  'neovim/nvim-lspconfig',

  -- interface ui
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {}
  },

  -- File explorer
  {
    "stevearc/oil.nvim",
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- languages
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "elixir-tools/elixir-tools.nvim" },

  -- Auto complete
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-nvim-lsp'},
  { 'L3MON4D3/LuaSnip' },

})
