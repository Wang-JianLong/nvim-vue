vim.cmd [[packadd packer.nvim]]
require('packer').init({
  git = {
    default_url_format = 'git@github.com:%s.git'
  }
})

return require('packer').startup({
  function(use)
    use("NTBBloodbath/sweetie.nvim")
    use 'wbthomason/packer.nvim'
    use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    }
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly'                  -- optional, updated every week. (see issue #1193)
    }
    -- text
    use("rmagatti/alternate-toggler") -- true/false
    use("mg979/vim-visual-multi")     -- C_n
    use("gcmt/wildfire.vim")          -- ' ' ( {
    use("tpope/vim-surround")         -- cs'" cs  ds yss) ds ysiw"
    use({ "numToStr/Comment.nvim" })  -- gcc
    use("windwp/nvim-autopairs")
    --cmp
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/nvim-cmp")
    use("onsails/lspkind.nvim")
    -- snip
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")


    -- high
    use({
      "nvim-treesitter/nvim-treesitter",
      run = function()
        local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
        ts_update()
      end,
    })
  end,
  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
}
)
