return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          mason = false, -- Prevent Mason from trying to download/override clangd
        },
      },
    },
  },
}
