return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = vim.uv.os_uname().sysname == "Darwin" and {
          mason = true, -- Prevent Mason from trying to download/override clangd
        },
        omnisharp = false,
        csharp_ls = {},
      },
    },
  },
}
