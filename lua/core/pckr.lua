----------------------------------------------------
-- pckage manager (pckr)
----------------------------------------------------

local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add {

  -- neotree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },

  -- colorschemes
  { 'ellisonleao/gruvbox.nvim' },
  { 'sainnhe/gruvbox-material' },

  -- treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  },

  -- telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  },

  -- lualine
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  },

  -- toggle term --
  { "akinsho/toggleterm.nvim", config = function()
    require("toggleterm").setup()
  end },

  --autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup {}
    end
  },

  -- lsp zero --
  { 'VonHeikemen/lsp-zero.nvim',        branch = 'v4.x' },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/nvim-cmp' },

  -- mason --
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
}
