return require("packer").startup(function()
    use "wbthomason/packer.nvim" -- use packer to manager itself

    use "sainnhe/gruvbox-material" -- colour scheme

    use {
      "nvim-lualine/lualine.nvim",
      requires = { "kyazdani42/nvim-web-devicons", opt = true }
    } -- status line with icons

    use "neovim/nvim-lspconfig"

    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "saadparwaiz1/cmp_luasnip"
    use "L3MON4D3/LuaSnip"

    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

end)
